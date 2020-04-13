create or replace function "SUA_TAI_KHOAN_CONG_VIEC_W"  -- Trang thai cong viec: THEM,
(      p_ma_cong_viec varchar2,
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_du_an varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_tai_khoan_sua varchar2,
       --p_tong_thoi_gian_cong_viec varchar2  -- so luong phut,
       p_loai_cv varchar,
       p_trong_so varchar
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
  --v_tong_thoi_gian number default to_number(p_tong_thoi_gian_cong_viec) * 60;  -- So phut
  v_ty_le number;
  v_loai_cv_ht number;
begin
  select ty_le,loai_cv_ht into v_ty_le,v_loai_cv_ht
    from dm_tyle_cv_thuoc_to
  where ma_loai_cv=p_loai_cv;
  
  select count(*) into v_quyen_sua_cong_viec
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan = p_ma_tai_khoan_sua
        and nvl(cv.tham_dinh_da_hoan_thanh_cv, 0) = 0;
  
  if v_quyen_sua_cong_viec > 0 then
    /*select count(*) into v_ton_tai_ten_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec != p_ma_cong_viec
        and cv.ten_cong_viec = p_ten_cong_viec;  */ 

    if v_ton_tai_ten_cong_viec = 0 and v_thoi_gian_bat_dau_cong_viec <= v_thoi_gian_ket_thuc_cong_viec then  
          select nvl(min(gd.thoi_gian_bat_dau_giai_doan), v_thoi_gian_bat_dau_cong_viec) 
                 into v_min_thoi_gian_bat_dau_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;

          select nvl(max(gd.thoi_gian_ket_thuc_giai_doan), v_thoi_gian_ket_thuc_cong_viec) 
                 into v_max_thoi_gian_ket_thuc_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;

          /*if v_tong_thoi_gian <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
            v_kiem_tra_tong_thoi_gian := 1;
          end if;*/

         -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
         if v_thoi_gian_bat_dau_cong_viec <= v_min_thoi_gian_bat_dau_gd
               and v_max_thoi_gian_ket_thuc_gd <= v_thoi_gian_ket_thuc_cong_viec
               /*and v_kiem_tra_tong_thoi_gian = 1*/ then
               update cong_viec cv
               set cv.ten_cong_viec = p_ten_cong_viec,
                  cv.noi_dung_cong_viec = p_noi_dung_cong_viec,
                  cv.ma_muc_do_uu_tien = p_ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau = p_ma_don_vi_yeu_cau,
                  cv.thoi_gian_bat_dau_cong_viec = v_thoi_gian_bat_dau_cong_viec,
                  cv.thoi_gian_ket_thuc_cong_viec = v_thoi_gian_ket_thuc_cong_viec,
                  cv.ma_du_an = p_ma_du_an,
                  cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_sua,
                  ma_tyle_cv=p_loai_cv,
                  ty_le_loaicv=v_ty_le,
                  trongso_cv=p_trong_so,
                  loai_cv_ht=v_loai_cv_ht
                  --cv.tong_thoi_gian_cong_viec = v_tong_thoi_gian
                  
               where cv.ma_cong_viec = p_ma_cong_viec;
               delete cong_viec_donvi_yc where ma_cong_viec=p_ma_cong_viec;
               FOR data IN (SELECT regexp_substr(p_ma_don_vi_yeu_cau, '[^,]+', 1, ROWNUM) ma_don_vi_yeu_cau
               FROM dual CONNECT BY LEVEL <= length(regexp_replace(p_ma_don_vi_yeu_cau, '[^,]+')) + 1)
               LOOP
                    begin
                        insert into cong_viec_donvi_yc(ma_cong_viec,ma_don_vi_yeu_cau)
                        values(p_ma_cong_viec,data.ma_don_vi_yeu_cau);
                    end;
               END LOOP;

               v_da_cap_nhat_cong_viec := 1;
         end if; -- So sanh thoi gian
    end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra quyen sua cong viec

  if v_da_cap_nhat_cong_viec = 1 then
     open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
                'Công vi¿c: ' || cv.ten_cong_viec || ' dã du¿c c¿p nh¿t!' as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  elsif v_ton_tai_ten_cong_viec > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Tên công vi¿c dã t¿n t¿i! Vui lòng ch¿n tên khác!' as thong_bao
         from dual;
  elsif v_quyen_sua_cong_viec = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'B¿n không th¿ s¿a công vi¿c dã du¿c th¿m d¿nh hoàn thành!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Th¿i gian b¿t d¿u ph¿i nh¿ hon th¿i gian k¿t thúc!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec > v_min_thoi_gian_bat_dau_gd then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày b¿t d¿u c¿a công vi¿c ph¿i tru¿c ngày b¿t d¿u c¿a các giai do¿n!' as thong_bao
         from dual; 
  elsif v_max_thoi_gian_ket_thuc_gd > v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày k¿t thúc c¿a công vi¿c ph¿i sau ngày k¿t thúc c¿a các giai do¿n!' as thong_bao
         from dual;
  /*elsif v_kiem_tra_tong_thoi_gian = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'T¿ng th¿i gian công vi¿c ph¿i nh¿ hon ho¿c b¿ng th¿i gian t¿ lúc b¿t d¿u d¿n lúc k¿t thúc công vi¿c!' as thong_bao
         from dual;   */
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Không s¿a du¿c công vi¿c!' as thong_bao
         from dual;    
  end if;

  return v_result_cur;

end;