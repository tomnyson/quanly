create or replace function "SUA_CONG_VIEC_DU_AN"  -- Trang thai cong viec: THEM,
(      
       p_ma_cong_viec_du_an varchar2,
       p_ten_cong_viec_du_an varchar2,
       p_noi_dung_cong_viec_du_an varchar2,
       p_ma_du_an varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_tai_khoan_sua varchar2,
       p_loai_cv varchar
)
return sys_refcursor  -- v_ma_cong_viec_moi || '-' || p_ten_cong_viec
as
  v_result_cur sys_refcursor;
  v_ton_tai_ten_cong_viec integer default 0;
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_min_thoi_gian_bat_dau_gd date;    -- Thoi gian bat dau som nhat trong tat ca cac GD cua CV
  v_max_thoi_gian_ket_thuc_gd date;   -- Thoi gian ket thuc tre nhat trong tat ca cac GD cua CV
  v_quyen_sua_cong_viec integer default 0;
  v_da_cap_nhat_cong_viec integer default 0;
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
  
begin
  select count(*) into v_quyen_sua_cong_viec
  from cong_viec_du_an cv
  where cv.ma_cong_viec_du_an = p_ma_cong_viec_du_an
        and cv.ma_tai_khoan = p_ma_tai_khoan_sua
        and nvl(cv.tham_dinh_da_hoan_thanh_cv, 0) = 0;
  
  if v_quyen_sua_cong_viec > 0 then
         -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
         if v_thoi_gian_bat_dau_cong_viec <= v_min_thoi_gian_bat_dau_gd
               and v_max_thoi_gian_ket_thuc_gd <= v_thoi_gian_ket_thuc_cong_viec
            then
               update cong_viec_du_an cv
               set cv.ten_cong_viec_du_an = p_ten_cong_viec_du_an,
                  cv.noi_dung_cong_viec_du_an = p_noi_dung_cong_viec_du_an,
                  cv.ma_muc_do_uu_tien = p_ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau = p_ma_don_vi_yeu_cau,
                  cv.thoi_gian_bat_dau_cong_viec = v_thoi_gian_bat_dau_cong_viec,
                  cv.thoi_gian_ket_thuc_cong_viec = v_thoi_gian_ket_thuc_cong_viec,
                  cv.ma_du_an = p_ma_du_an,
                  cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_sua,
                  loai_cv_ht=v_loai_cv_ht
                 
                  
               where cv.ma_cong_viec_du_an = p_ma_cong_viec_du_an;
               delete cong_viec_donvi_yc where ma_cong_viec_du_an=p_ma_cong_viec_du_an;
               FOR data IN (SELECT regexp_substr(p_ma_don_vi_yeu_cau, '[^,]+', 1, ROWNUM) ma_don_vi_yeu_cau
               FROM dual CONNECT BY LEVEL <= length(regexp_replace(p_ma_don_vi_yeu_cau, '[^,]+')) + 1)
               LOOP
                    begin
                        insert into cong_viec_donvi_yc(ma_cong_viec_du_an,ma_don_vi_yeu_cau)
                        values(p_ma_cong_viec_du_an,data.ma_don_vi_yeu_cau);
                    end;
               END LOOP;
               v_da_cap_nhat_cong_viec := 1;
         end if; -- So sanh thoi gian
    end if; -- Kiem tra ten cong viec


  if v_da_cap_nhat_cong_viec = 1 then
     open v_result_cur for
         select p_ma_cong_viec_du_an as ma_cong_viec_du_an,
                nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
                'Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật!' as thong_bao
         from cong_viec_du_an cv
         where cv.ma_cong_viec_du_an = p_ma_cong_viec_du_an;
  elsif v_ton_tai_ten_cong_viec > 0 then
    open v_result_cur for
         select '' as ma_cong_viec_du_an,
                '' as ma_tai_khoan_xu_ly,
                'Tên công việc đã tồn tại! Vui lòng chọn tên khác!' as thong_bao
         from dual;
  elsif v_quyen_sua_cong_viec = 0 then
    open v_result_cur for
         select '' as ma_cong_viec_du_an,
                '' as ma_tai_khoan_xu_ly,
                'Bạn không thể sửa công việc đã được thẩm định hoàn thành!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec_du_an,
                '' as ma_tai_khoan_xu_ly,
                'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual; 
  else
    open v_result_cur for
         select '' as ma_cong_viec_du_an,
                '' as ma_tai_khoan_xu_ly,
                'Không sửa được công việc!' as thong_bao
         from dual;    
  end if;

  return v_result_cur;

end;