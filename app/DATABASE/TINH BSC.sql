select nhan_vien_xu_ly,
       so_gio_lam_viec,
       p1 + p2  as p,
       p2 as diem_cong_tru,
       tong_diem_chat_luong,
       tong_diem_thai_do,
       so_luong_cong_viec,
       tong_diem_chat_luong / so_luong_cong_viec as diem_chat_luong,
       tong_diem_thai_do / so_luong_cong_viec as diem_thai_do
from (
select ma_tai_khoan_xu_ly, 
       nhan_vien_xu_ly, 
       sum(ti_trong) * 100 as p1,
       sum((thoi_gian_ket_thuc_cong_viec - thoi_gian_hoan_thanh_cv) / (thoi_gian_ket_thuc_cong_viec - thoi_gian_bat_dau_cong_viec) * 50 * ti_trong)  as p2,
       sum(nvl(diem_chat_luong, 0)) as tong_diem_chat_luong,
       sum(nvl(diem_thai_do, 0))  as tong_diem_thai_do,
       count(*) as so_luong_cong_viec,
       sum(nvl(tong_thoi_gian_duoc_tham_dinh, tong_thoi_gian_cong_viec)) / 60 as so_gio_lam_viec
from (
select pt.ten_phong_to,
       nhom.ten_nhom_tai_khoan,
       da.ten_du_an,
       nv.ten_nhan_vien as nhan_vien_them,
       cv.ma_tai_khoan_xu_ly,
       nvxl.ten_nhan_vien as nhan_vien_xu_ly,
       cv.ten_cong_viec,
       cv.thoi_gian_bat_dau_cong_viec,
       cv.thoi_gian_ket_thuc_cong_viec,
       --to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_cong_viec,
       --to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_cong_viec,
       cv.tong_thoi_gian_cong_viec,
       cv.tham_dinh_tong_thoi_gian as tong_thoi_gian_duoc_tham_dinh,
       nvl(tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv) as thoi_gian_hoan_thanh_cv,
       --to_char(decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.thoi_gian_hoan_thanh_cv, cv.tham_dinh_thoi_gian_ht_cv), 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hoan_thanh,
       --mdut.muc_do_uu_tien,
       --cv.ti_le_hoan_thanh_cong_viec || '%' as ti_le_hoan_thanh_cong_viec,
       --tt.ten_trang_thai_cong_viec,
       cv.diem_chat_luong,
       cv.diem_thai_do,
       decode(cv.tham_dinh_thoi_gian_ht_cv, null, '', 'X') as CO_THAM_DINH,
       nvl(tham_dinh_tong_thoi_gian, tong_thoi_gian_cong_viec) / 60 / (22*8) as ti_trong
from cong_viec cv,
     nhom_tai_khoan nhom,
     du_an da,
     don_vi_yeu_cau dvyc,
     phong_to pt,
     tai_khoan tk,
     tai_khoan tkxl,
     nhan_vien nv,
     nhan_vien nvxl,
     trang_thai_cong_viec tt,
     muc_do_uu_tien mdut
     
where (to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = '05/2018'
          or to_char(cv.thoi_gian_ket_thuc_cong_viec, 'mm/yyyy') = '05/2018'
          or (cv.thoi_gian_bat_dau_cong_viec < to_date('05/2018', 'mm/yyyy')
             and cv.thoi_gian_ket_thuc_cong_viec > to_date('05/2018', 'mm/yyyy')))
      and cv.ma_nhom_tai_khoan = nhom.ma_nhom_tai_khoan
      and cv.ma_du_an = da.ma_du_an
      and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau
      and nhom.ma_phong_to = pt.ma_phong_to
      and cv.ma_tai_khoan = tk.ma_tai_khoan
      and cv.ma_tai_khoan_xu_ly = tkxl.ma_tai_khoan_xu_ly
      and tk.ma_nhan_vien = nv.ma_nhan_vien
      and tkxl.ma_nhan_vien = nvxl.ma_nhan_vien
      and cv.ma_trang_thai_cong_viec = tt.ma_trang_thai_cong_viec
      and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
      and tt.ma_trang_thai_cong_viec = 3 
      and pt.ma_phong_to in (3, 5)
order by pt.ma_phong_to, nvxl.ma_nhan_vien, cv.ma_nhom_tai_khoan) a
group by  ma_tai_khoan_xu_ly, nhan_vien_xu_ly) b


