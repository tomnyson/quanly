-- ----------------------------
-- Table structure for CONG_VIEC_DU_AN
-- ----------------------------
DROP TABLE "CONG_VIEC_DU_AN";
CREATE TABLE "CONG_VIEC_DU_AN" (
"MA_CONG_VIEC_DA" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TRANG_THAI_CONG_VIEC" NUMBER NOT NULL ,
"MA_CONG_VIEC_CHA" NUMBER NOT NULL ,
"MA_TAI_KHOAN_XU_LY" NUMBER NOT NULL ,
"ID_LOAI" NUMBER NOT NULL ,
"MA_DON_VI_YEU_CAU" NUMBER NOT NULL ,
"MA_DU_AN" NUMBER NOT NULL ,
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"MA_GIAI_DOAN_DA" NUMBER NOT NULL ,
"MA_CONG_VIEC_MAU" NUMBER NOT NULL ,
"TEN_CONG_VIEC_DA" VARCHAR2(4000 BYTE) NULL ,
"NGAY_TRIEN_KHAI" DATE NULL ,
"NGAY_HOAN_THANH" DATE NULL ,
"NOI_DUNG_CONG_VIEC" VARCHAR2(4000 BYTE) NULL ,
"KET_QUA_CONG_VIEC" VARCHAR2(4000 BYTE) NULL
)
LOGGING
NOCOMPRESS
NOCACHE

;
-- ----------------------------
NM -- ----------------------------
DROP TABLE "CONG_VIEC_MAU";
CREATE TABLE "CONG_VIEC_MAU" (
"MA_CONG_VIEC_MAU" NUMBER NOT NULL ,
"MA_DU_AN" NUMBER NOT NULL ,
"MA_GIAI_DOAN_DA" NUMBER NOT NULL ,
"TEN_CONG_VIEC" VARCHAR2(500 BYTE) NULL
)
LOGGING
NOCOMPRESS
NOCACHE

;
-- ----------------------------
-- Table structure for CHUC_NANG
-- ----------------------------
DROP TABLE "CHUC_NANG";
CREATE TABLE "CHUC_NANG" (
"MA_CHUC_NANG" NUMBER NOT NULL ,
"MA_NHOM_CHUC_NANG" NUMBER NOT NULL ,
"TEN_CHUC_NANG" VARCHAR2(300 BYTE) NULL ,
"HOAT_DONG_CN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for CONG_VIEC
-- ----------------------------
DROP TABLE "CONG_VIEC";
CREATE TABLE "CONG_VIEC" (
"MA_CONG_VIEC" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TRANG_THAI_CONG_VIEC" NUMBER NOT NULL ,
"MA_CONG_VIEC_CHA" NUMBER NULL ,
"MA_TAI_KHOAN_XU_LY" NUMBER NULL ,
"MA_MUC_DO_UU_TIEN" NUMBER NOT NULL ,
"MA_DON_VI_YEU_CAU" NUMBER NOT NULL ,
"MA_DU_AN" NUMBER NOT NULL ,
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"TEN_CONG_VIEC" VARCHAR2(4000 BYTE) NULL ,
"THOI_GIAN_THEM_CONG_VIEC" DATE NULL ,
"THOI_GIAN_BAT_DAU_CONG_VIEC" DATE NULL ,
"THOI_GIAN_KET_THUC_CONG_VIEC" DATE NULL ,
"NOI_DUNG_CONG_VIEC" CLOB NULL ,
"THOI_GIAN_XU_LY" DATE NULL ,
"THOI_GIAN_HOAN_THANH_CV" DATE NULL ,
"TI_LE_HOAN_THANH_CONG_VIEC" NUMBER NULL ,
"MA_TAI_KHOAN_LICH_SU" NUMBER NOT NULL ,
"MA_TAI_KHOAN_THAM_DINH" NUMBER NULL ,
"THAM_DINH_DA_HOAN_THANH_CV" NUMBER NULL ,
"THAM_DINH_THOI_GIAN_HT_CV" DATE NULL ,
"TONG_THOI_GIAN_CONG_VIEC" NUMBER NULL ,
"DIEM_CHAT_LUONG" NUMBER NULL ,
"DIEM_THAI_DO" NUMBER NULL ,
"MA_TAI_KHOAN_DG_CHAT_LUONG" NUMBER NULL ,
"MA_TAI_KHOAN_DG_THAI_DO" NUMBER NULL ,
"SO_LUONG_CONG_VIEC_CON" NUMBER NULL ,
"THAM_DINH_TONG_THOI_GIAN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for CONG_VIEC
-- ----------------------------
DROP TABLE "CONG_VIEC_DU_AN";
CREATE TABLE "CONG_VIEC_DU_AN" (
"MA_CONG_VIEC_DU_AN" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TRANG_THAI_CONG_VIEC" NUMBER NOT NULL ,
"MA_CONG_VIEC_CHA" NUMBER NULL ,
"MA_TAI_KHOAN_XU_LY" NUMBER NULL ,
"MA_MUC_DO_UU_TIEN" NUMBER NOT NULL ,
"MA_DON_VI_YEU_CAU" NUMBER NOT NULL ,
"MA_DU_AN" NUMBER NOT NULL ,
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"TEN_CONG_VIEC_DU_AN" VARCHAR2(4000 BYTE) NULL ,
"THOI_GIAN_THEM_CONG_VIEC_DU_AN" DATE NULL ,
"THOI_GIAN_BAT_DAU_CONG_VIEC_DU_AN" DATE NULL ,
"THOI_GIAN_KET_THUC_CONG_VIEC_DU_AN" DATE NULL ,
"NOI_DUNG_CONG_VIEC_DU_AN" CLOB NULL ,
"THOI_GIAN_XU_LY_DU_AN" DATE NULL ,
"THOI_GIAN_HOAN_THANH_CV_DU_AN" DATE NULL ,
"TI_LE_HOAN_THANH_CONG_VIEC_DU_AN" NUMBER NULL ,
"MA_TAI_KHOAN_LICH_SU" NUMBER NOT NULL ,
"MA_TAI_KHOAN_THAM_DINH" NUMBER NULL ,
"THAM_DINH_DA_HOAN_THANH_CV" NUMBER NULL ,
"THAM_DINH_THOI_GIAN_HT_CV" DATE NULL ,
"TONG_THOI_GIAN_CONG_VIEC" NUMBER NULL ,
"DIEM_CHAT_LUONG" NUMBER NULL ,
"DIEM_THAI_DO" NUMBER NULL ,
"MA_TAI_KHOAN_DG_CHAT_LUONG" NUMBER NULL ,
"MA_TAI_KHOAN_DG_THAI_DO" NUMBER NULL ,
"SO_LUONG_CONG_VIEC_CON" NUMBER NULL ,
"THAM_DINH_TONG_THOI_GIAN" NUMBER NULL ,
"MA_CONG_VIEC_MAU" NUMBER NULL
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DON_VI
-- ----------------------------
DROP TABLE "DON_VI";
CREATE TABLE "DON_VI" (
"MA_DON_VI" NUMBER NOT NULL ,
"MA_LOAI_DON_VI" NUMBER NULL ,
"TEN_DON_VI" VARCHAR2(500 BYTE) NULL,

)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DON_VI_YEU_CAU
-- ----------------------------
DROP TABLE "DON_VI_YEU_CAU";
CREATE TABLE "DON_VI_YEU_CAU" (
"MA_DON_VI_YEU_CAU" NUMBER NOT NULL ,
"TEN_DON_VI_YEU_CAU" VARCHAR2(500 BYTE) NULL,
"DIA_CHI_DV" VARCHAR2(500 BYTE) NULL,
"SO_DT_DV" VARCHAR2(20 BYTE) NULL,
"NGUOI_DAI_DIEN" VARCHAR2(100 BYTE) NULL

)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DU_AN
-- ----------------------------
DROP TABLE "DU_AN";
CREATE TABLE "DU_AN" (
"MA_DU_AN" NUMBER NOT NULL ,
"TEN_DU_AN" VARCHAR2(500 BYTE) NULL,
"MO_TA" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DU_AN_DON_VI_YEU_CAU
-- ----------------------------
DROP TABLE "DU_AN_DON_VI_YEU_CAU";
CREATE TABLE "DU_AN_DON_VI_YEU_CAU" (
"MA_DON_VI_YEU_CAU" NUMBER NOT NULL ,
"MA_DU_AN" NUMBER NOT NULL ,
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"HOAT_DONG_DADVYC" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for FILE_CONG_VIEC
-- ----------------------------
DROP TABLE "FILE_CONG_VIEC";
CREATE TABLE "FILE_CONG_VIEC" (
"MA_CONG_VIEC" NUMBER NOT NULL ,
"STT_FILE_CONG_VIEC" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"TEN_FILE_CONG_VIEC" VARCHAR2(300 BYTE) NULL ,
"LINK_FILE_CONG_VIEC" VARCHAR2(200 BYTE) NULL ,
"THOI_GIAN_THEM_FILE_CONG_VIEC" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for FILE_GIAI_DOAN
-- ----------------------------
DROP TABLE "FILE_GIAI_DOAN";
CREATE TABLE "FILE_GIAI_DOAN" (
"STT_GIAI_DOAN" NUMBER NOT NULL ,
"STT_FILE_GIAI_DOAN" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"TEN_FILE_GIAI_DOAN" VARCHAR2(300 BYTE) NULL ,
"LINK_FILE_GIAI_DOAN" VARCHAR2(200 BYTE) NULL ,
"THOI_GIAN_THEM_FILE_GIAI_DOAN" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for GHI_CHU_CONG_VIEC
-- ----------------------------
DROP TABLE "GHI_CHU_CONG_VIEC";
CREATE TABLE "GHI_CHU_CONG_VIEC" (
"MA_CONG_VIEC" NUMBER NOT NULL ,
"STT_GHI_CHU_CONG_VIEC" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"NOI_DUNG_GHI_CHU_CONG_VIEC" CLOB NULL ,
"THOI_GIAN_THEM_GHI_CHU_CV" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for GIAI_DOAN
-- ----------------------------
DROP TABLE "GIAI_DOAN";
CREATE TABLE "GIAI_DOAN" (
"STT_GIAI_DOAN" NUMBER NOT NULL ,
"MA_CONG_VIEC" NUMBER NOT NULL ,
"TEN_GIAI_DOAN" VARCHAR2(500 BYTE) NULL ,
"NOI_DUNG_GIAI_DOAN" CLOB NULL ,
"THOI_GIAN_THEM_GIAI_DOAN" DATE NULL ,
"THOI_GIAN_BAT_DAU_GIAI_DOAN" DATE NULL ,
"THOI_GIAN_KET_THUC_GIAI_DOAN" DATE NULL ,
"THOI_GIAN_HOAN_THANH_GD" DATE NULL ,
"TI_LE_HOAN_THANH_GIAI_DOAN" NUMBER NULL ,
"MA_TAI_KHOAN_LICH_SU" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for LICH_SU_CONG_VIEC
-- ----------------------------
DROP TABLE "LICH_SU_CONG_VIEC";
CREATE TABLE "LICH_SU_CONG_VIEC" (
"MA_CONG_VIEC" NUMBER NOT NULL ,
"STT_LICH_SU_CONG_VIEC" NUMBER NOT NULL ,
"MO_TA_LICH_SU_CONG_VIEC" VARCHAR2(4000 BYTE) NULL ,
"THOI_GIAN_THEM_LSCV" DATE NULL ,
"MA_TAI_KHOAN_LICH_SU" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for LOAI_DON_VI
-- ----------------------------
DROP TABLE "LOAI_DON_VI";
CREATE TABLE "LOAI_DON_VI" (
"MA_LOAI_DON_VI" NUMBER NOT NULL ,
"TEN_LOAI_DON_VI" VARCHAR2(300 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for LOAI_PHONG_TO
-- ----------------------------
DROP TABLE "LOAI_PHONG_TO";
CREATE TABLE "LOAI_PHONG_TO" (
"MA_LOAI_PHONG_TO" NUMBER NOT NULL ,
"TEN_LOAI_PHONG_TO" VARCHAR2(300 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for MENU
-- ----------------------------
DROP TABLE "MENU";
CREATE TABLE "MENU" (
"MA_MENU" NUMBER NOT NULL ,
"TEN_MENU" VARCHAR2(500 BYTE) NULL ,
"LINK" VARCHAR2(100 BYTE) NULL ,
"HOAT_DONG_MN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for MUC_DO_UU_TIEN
-- ----------------------------
DROP TABLE "MUC_DO_UU_TIEN";
CREATE TABLE "MUC_DO_UU_TIEN" (
"MA_MUC_DO_UU_TIEN" NUMBER NOT NULL ,
"MUC_DO_UU_TIEN" VARCHAR2(500 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for NHAN_VIEN
-- ----------------------------
DROP TABLE "NHAN_VIEN";
CREATE TABLE "NHAN_VIEN" (
"MA_NHAN_VIEN" NUMBER NOT NULL ,
"MA_PHONG_TO" NUMBER NOT NULL ,
"TEN_NHAN_VIEN" VARCHAR2(500 BYTE) NULL ,
"SDT_NHAN_VIEN" VARCHAR2(20 BYTE) NULL ,
"CAP_NHAN_VIEN" NUMBER DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for NHOM_CHUC_NANG
-- ----------------------------
DROP TABLE "NHOM_CHUC_NANG";
CREATE TABLE "NHOM_CHUC_NANG" (
"MA_NHOM_CHUC_NANG" NUMBER NOT NULL ,
"TEN_NHOM_CHUC_NANG" VARCHAR2(300 BYTE) NULL ,
"HOAT_DONG_NCN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for NHOM_TAI_KHOAN
-- ----------------------------
DROP TABLE "NHOM_TAI_KHOAN";
CREATE TABLE "NHOM_TAI_KHOAN" (
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"MA_PHONG_TO" NUMBER NOT NULL ,
"TEN_NHOM_TAI_KHOAN" VARCHAR2(500 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for PHONG_TO
-- ----------------------------
DROP TABLE "PHONG_TO";
CREATE TABLE "PHONG_TO" (
"MA_PHONG_TO" NUMBER NOT NULL ,
"MA_DON_VI" NUMBER NOT NULL ,
"MA_LOAI_PHONG_TO" NUMBER NULL ,
"TEN_PHONG_TO" VARCHAR2(500 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN
-- ----------------------------
DROP TABLE "TAI_KHOAN";
CREATE TABLE "TAI_KHOAN" (
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TAI_KHOAN_XU_LY" NUMBER NULL ,
"MA_NHAN_VIEN" NUMBER NOT NULL ,
"TEN_TRUY_CAP" VARCHAR2(50 BYTE) NULL ,
"MAT_KHAU" VARCHAR2(100 BYTE) NULL ,
"HOAT_DONG_TK" NUMBER NULL ,
"TEN_HIEN_THI" VARCHAR2(500 BYTE) NULL ,
"MA_TAI_KHOAN_THAM_DINH" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_CHUC_NANG
-- ----------------------------
DROP TABLE "TAI_KHOAN_CHUC_NANG";
CREATE TABLE "TAI_KHOAN_CHUC_NANG" (
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_CHUC_NANG" NUMBER NOT NULL ,
"HOAT_DONG_TKCN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_DG_CHAT_LUONG_NHOM
-- ----------------------------
DROP TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM";
CREATE TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM" (
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_DG_THAI_DO_CUA_NHOM
-- ----------------------------
DROP TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM";
CREATE TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM" (
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_LICH_SU
-- ----------------------------
DROP TABLE "TAI_KHOAN_LICH_SU";
CREATE TABLE "TAI_KHOAN_LICH_SU" (
"MA_TAI_KHOAN_LICH_SU" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_MENU
-- ----------------------------
DROP TABLE "TAI_KHOAN_MENU";
CREATE TABLE "TAI_KHOAN_MENU" (
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_MENU" NUMBER NOT NULL ,
"HOAT_DONG_TKMN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_THAM_DINH
-- ----------------------------
DROP TABLE "TAI_KHOAN_THAM_DINH";
CREATE TABLE "TAI_KHOAN_THAM_DINH" (
"MA_TAI_KHOAN_THAM_DINH" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_THIET_LAP
-- ----------------------------
DROP TABLE "TAI_KHOAN_THIET_LAP";
CREATE TABLE "TAI_KHOAN_THIET_LAP" (
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_THIET_LAP" NUMBER NOT NULL ,
"GIA_TRI_THIET_LAP" VARCHAR2(200 BYTE) DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_TRONG_NHOM
-- ----------------------------
DROP TABLE "TAI_KHOAN_TRONG_NHOM";
CREATE TABLE "TAI_KHOAN_TRONG_NHOM" (
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"HOAT_DONG_TKTN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_TRUONG_NHOM
-- ----------------------------
DROP TABLE "TAI_KHOAN_TRUONG_NHOM";
CREATE TABLE "TAI_KHOAN_TRUONG_NHOM" (
"MA_NHOM_TAI_KHOAN" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL ,
"HOAT_DONG_TK_TRUONG_N" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TAI_KHOAN_XU_LY
-- ----------------------------
DROP TABLE "TAI_KHOAN_XU_LY";
CREATE TABLE "TAI_KHOAN_XU_LY" (
"MA_TAI_KHOAN_XU_LY" NUMBER NOT NULL ,
"MA_TAI_KHOAN" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for THIET_LAP
-- ----------------------------
DROP TABLE "THIET_LAP";
CREATE TABLE "THIET_LAP" (
"MA_THIET_LAP" NUMBER NOT NULL ,
"TEN_THIET_LAP" VARCHAR2(500 BYTE) NULL ,
"GIA_TRI_BAN_DAU" VARCHAR2(100 BYTE) DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TONG_THOI_GIAN_CHUAN
-- ----------------------------
DROP TABLE "TONG_THOI_GIAN_CHUAN";
CREATE TABLE "TONG_THOI_GIAN_CHUAN" (
"THANG" NUMBER NOT NULL ,
"NAM" NUMBER NOT NULL ,
"TONG_THOI_GIAN_CHUAN" NUMBER(8) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TRANG_THAI_CONG_VIEC
-- ----------------------------
DROP TABLE "TRANG_THAI_CONG_VIEC";
CREATE TABLE "TRANG_THAI_CONG_VIEC" (
"MA_TRANG_THAI_CONG_VIEC" NUMBER NOT NULL ,
"TEN_TRANG_THAI_CONG_VIEC" VARCHAR2(200 BYTE) NULL ,
"MO_TA_TRANG_THAI_CONG_VIEC" VARCHAR2(500 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Function structure for CAP_NHAT_TI_LE_HT_CV
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TI_LE_HT_CV"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ti_le_hoan_thanh in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin  
    update cong_viec cv
    set cv.ti_le_hoan_thanh_cong_viec = p_ti_le_hoan_thanh,
        cv.thoi_gian_hoan_thanh_cv = decode(cv.thoi_gian_hoan_thanh_cv, null, decode(p_ti_le_hoan_thanh, 100, sysdate, null), cv.thoi_gian_hoan_thanh_cv),
        cv.ma_trang_thai_cong_viec = decode(p_ti_le_hoan_thanh, 100, 3, cv.ma_trang_thai_cong_viec),
        cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
    where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
        and cv.ti_le_hoan_thanh_cong_viec != p_ti_le_hoan_thanh
        and p_ti_le_hoan_thanh > 0;   

    if sql%rowcount = 1 then
      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan, 
                  to_char(sysdate, 'dd/mm HH24:MI') || ':  Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật tỉ lệ hoàn thành!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    else      
         if p_ti_le_hoan_thanh = 0 then
           open v_result for
           select 'Tỉ lệ hoàn thành phải lớn hơn 0!' as thong_bao
           from dual;
         else
           open v_result for
           select 'Tỉ lệ hoàn thành không thay đổi! Hoặc bạn không phải người xử lý công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for CAP_NHAT_TI_LE_HT_CV_W
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TI_LE_HT_CV_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ti_le_hoan_thanh in varchar2
)
return sys_refcursor
is
  v_kiem_tra_tg_hoan_thanh number default 0;
  v_result sys_refcursor;
begin  
    select count(*) into v_kiem_tra_tg_hoan_thanh
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
          and cv.thoi_gian_bat_dau_cong_viec <= sysdate;

    update cong_viec cv
    set cv.ti_le_hoan_thanh_cong_viec = p_ti_le_hoan_thanh,
        cv.thoi_gian_hoan_thanh_cv = decode(cv.thoi_gian_hoan_thanh_cv, null, decode(p_ti_le_hoan_thanh, 100, sysdate, null), cv.thoi_gian_hoan_thanh_cv),
        cv.ma_trang_thai_cong_viec = decode(p_ti_le_hoan_thanh, 100, 3, cv.ma_trang_thai_cong_viec),
        cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
    where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
        and cv.ti_le_hoan_thanh_cong_viec != p_ti_le_hoan_thanh
        and p_ti_le_hoan_thanh > 0
        and v_kiem_tra_tg_hoan_thanh > 0;   

    if sql%rowcount = 1 then
      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan, 
                  to_char(sysdate, 'dd/mm HH24:MI') || ':  Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật tỉ lệ hoàn thành!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    elsif v_kiem_tra_tg_hoan_thanh = 0 then
      open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                'Không thể cập nhật tỉ lệ hoàn thành công việc trước thời gian bắt đầu!' as thong_bao
           from dual;
    else      
         if p_ti_le_hoan_thanh = 0 then
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                'Tỉ lệ hoàn thành phải lớn hơn 0!' as thong_bao
           from dual;
         else
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  'Tỉ lệ hoàn thành không thay đổi! Hoặc bạn không phải người xử lý công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for CAP_NHAT_TI_LE_HT_GD
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TI_LE_HT_GD"
(
       p_ma_cong_viec in varchar2,
       p_stt_giai_doan in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ti_le_hoan_thanh_giai_doan in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_sua_giai_doan integer default 0;
begin
    select count(*) into v_quyen_sua_giai_doan
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

    if v_quyen_sua_giai_doan > 0 then
      update giai_doan gd
      set gd.ti_le_hoan_thanh_giai_doan = p_ti_le_hoan_thanh_giai_doan,
          gd.thoi_gian_hoan_thanh_gd = decode(gd.thoi_gian_hoan_thanh_gd, null, decode(p_ti_le_hoan_thanh_giai_doan, '100', sysdate, null), gd.thoi_gian_hoan_thanh_gd),
          gd.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
      where gd.ma_cong_viec = p_ma_cong_viec
          and gd.stt_giai_doan = p_stt_giai_doan
          and gd.ti_le_hoan_thanh_giai_doan != p_ti_le_hoan_thanh_giai_doan;
          
      if sql%rowcount = 1 then
        open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan,
                  'Giai đoạn ' || p_stt_giai_doan || ' của công việc: ' || cv.ten_cong_viec || ' đã được cập nhật tỉ lệ hoàn thành!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
      else
        open v_result for
        select '' as ma_cong_viec,
                  '' as ma_tai_khoan,
                  'Tỉ lệ hoàn thành không thay đổi!' as thong_bao
           from dual;
      end if;
    else
      open v_result for
      select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không có quyền sửa giai đoạn này!' as thong_bao
         from dual;
    end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for CAP_NHAT_TI_LE_HT_GD_W
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TI_LE_HT_GD_W"
(
       p_ma_cong_viec in varchar2,
       p_stt_giai_doan in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ti_le_hoan_thanh_giai_doan in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_sua_giai_doan integer default 0;
begin
    select count(*) into v_quyen_sua_giai_doan
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

    if v_quyen_sua_giai_doan > 0 then
      update giai_doan gd
      set gd.ti_le_hoan_thanh_giai_doan = p_ti_le_hoan_thanh_giai_doan,
          gd.thoi_gian_hoan_thanh_gd = decode(gd.thoi_gian_hoan_thanh_gd, null, decode(p_ti_le_hoan_thanh_giai_doan, '100', sysdate, null), gd.thoi_gian_hoan_thanh_gd),
          gd.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
      where gd.ma_cong_viec = p_ma_cong_viec
          and gd.stt_giai_doan = p_stt_giai_doan
          and gd.ti_le_hoan_thanh_giai_doan != p_ti_le_hoan_thanh_giai_doan;
          
      if sql%rowcount = 1 then
        open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan,
                  'Giai đoạn ' || p_stt_giai_doan || ' của công việc: ' || cv.ten_cong_viec || ' đã được cập nhật tỉ lệ hoàn thành!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
      else
        open v_result for
        select '' as ma_cong_viec,
                  '' as ma_tai_khoan,
                  'Tỉ lệ hoàn thành không thay đổi!' as thong_bao
           from dual;
      end if;
    else
      open v_result for
      select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không có quyền sửa giai đoạn này!' as thong_bao
         from dual;
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for CAP_NHAT_TRANG_THAI_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TRANG_THAI_CONG_VIEC"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ma_trang_thai_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_cap_nhat integer default 0;
  v_cap_nhat_khong_hop_le integer default 0;
  v_thong_bao clob default '';
  v_ti_le_hoan_thanh_cong_viec number default 0;
  v_ti_le_hoan_thanh_cong_viec2 number default null;
  v_so_luong_giai_doan number default 0;
  v_kiem_tra_tg_hoan_thanh number default 0;
begin   
  -- Lay quyen cap nhat cong viec
  select count(*) into v_quyen_cap_nhat
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;
        
  select count(*) into v_kiem_tra_tg_hoan_thanh
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
        and cv.thoi_gian_bat_dau_cong_viec <= sysdate;
        
  if v_quyen_cap_nhat > 0 then  -- Co quyen cap nhat doi voi tai khoan xu ly
    -- Lay ti le hoan thanh cong viec
    select cv.ti_le_hoan_thanh_cong_viec into v_ti_le_hoan_thanh_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    -- Lay so luong giai doan da them
    select count(*) into v_so_luong_giai_doan
    from giai_doan gd
    where gd.ma_cong_viec = p_ma_cong_viec;
  
    -- So sanh trang thai cong viec
    if p_ma_trang_thai_cong_viec = 1 then
      if v_ti_le_hoan_thanh_cong_viec > 0 then
         v_thong_bao := 'Không thể trả lại công việc khi tỉ lệ hoàn thành lớn hơn 0%';
         v_cap_nhat_khong_hop_le := 1;
      end if; 
      
      if v_so_luong_giai_doan > 0 then
          v_thong_bao := 'Không thể trả lại công việc đã thêm giai đoạn';
          v_cap_nhat_khong_hop_le := 1;
      end if; 
    elsif p_ma_trang_thai_cong_viec = 3 then
          v_ti_le_hoan_thanh_cong_viec2 := 100; 
    end if; -- p_ma_trang_thai_cong_viec == 'MOI'
    
    -- Cap nhat trang thai
    if v_cap_nhat_khong_hop_le = 0 and (v_kiem_tra_tg_hoan_thanh > 0 or p_ma_trang_thai_cong_viec != 3) then 
      update cong_viec cv             
      set cv.ma_trang_thai_cong_viec = p_ma_trang_thai_cong_viec,
          cv.ti_le_hoan_thanh_cong_viec = nvl(v_ti_le_hoan_thanh_cong_viec2, cv.ti_le_hoan_thanh_cong_viec),
          cv.ma_tai_khoan_xu_ly = decode(p_ma_trang_thai_cong_viec, 1, null, cv.ma_tai_khoan_xu_ly),
          cv.thoi_gian_xu_ly = decode(cv.thoi_gian_xu_ly, null, null, decode(p_ma_trang_thai_cong_viec, 1, null, cv.thoi_gian_xu_ly)),
          cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly,
          cv.thoi_gian_hoan_thanh_cv = decode(p_ma_trang_thai_cong_viec, 3, sysdate, null)
      where cv.ma_cong_viec = p_ma_cong_viec
            and cv.ma_trang_thai_cong_viec != 3;
    end if;  
  else  -- Khong co quyen cap nhat
    v_thong_bao := 'Bạn không phải người xử lý nên không có quyền cập nhật trạng thái công việc này!';   
  end if;  -- v_quyen_cap_nhat > 0

  -- Tra ket qua
  if v_kiem_tra_tg_hoan_thanh = 0 and p_ma_trang_thai_cong_viec = 3 then
    open v_result for
    select '' as ma_cong_viec, 
           '',
           'Không thể hoàn thành công việc trước thời gian bắt đầu!' as thong_bao
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec;
  elsif v_cap_nhat_khong_hop_le = 0 then
    open v_result for
    select p_ma_cong_viec as ma_cong_viec, 
           cv.ma_tai_khoan,
            'Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật trạng thái!' as thong_bao
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec;
  else
    open v_result for
    select '' as ma_cong_viec, 
           '' as ma_tai_khoan,
            v_thong_bao as thong_bao
     from dual;
  end if;
  return v_result;
end;

















/

-- ----------------------------
-- Function structure for CAP_NHAT_TRANG_THAI_CV_W
-- ----------------------------
CREATE OR REPLACE function "CAP_NHAT_TRANG_THAI_CV_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2,
       p_ma_trang_thai_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_cap_nhat integer default 0;
  v_cap_nhat_khong_hop_le integer default 0;
  v_thong_bao clob default '';
  v_ti_le_hoan_thanh_cong_viec number default 0;
  v_ti_le_hoan_thanh_cong_viec2 number default null;
  v_so_luong_giai_doan number default 0;
  v_kiem_tra_tg_hoan_thanh number default 0;
begin   
  -- Lay quyen cap nhat cong viec
  select count(*) into v_quyen_cap_nhat
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;
        
  select count(*) into v_kiem_tra_tg_hoan_thanh
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
        and cv.thoi_gian_bat_dau_cong_viec <= sysdate;
        
  if v_quyen_cap_nhat > 0 and (v_kiem_tra_tg_hoan_thanh > 0 or p_ma_trang_thai_cong_viec != 3) then  -- Co quyen cap nhat doi voi tai khoan xu ly
    -- Lay ti le hoan thanh cong viec
    select cv.ti_le_hoan_thanh_cong_viec into v_ti_le_hoan_thanh_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    -- Lay so luong giai doan da them
    select count(*) into v_so_luong_giai_doan
    from giai_doan gd
    where gd.ma_cong_viec = p_ma_cong_viec;
  
    -- So sanh trang thai cong viec
    if p_ma_trang_thai_cong_viec = 1 then
      if v_ti_le_hoan_thanh_cong_viec > 0 then
         v_thong_bao := 'Không thể trả lại công việc khi tỉ lệ hoàn thành lớn hơn 0%';
         v_cap_nhat_khong_hop_le := 1;
      end if; 
      
      if v_so_luong_giai_doan > 0 then
          v_thong_bao := 'Không thể trả lại công việc đã thêm giai đoạn';
          v_cap_nhat_khong_hop_le := 1;
      end if; 
    elsif p_ma_trang_thai_cong_viec = 3 then
          v_ti_le_hoan_thanh_cong_viec2 := 100; 
    end if; -- p_ma_trang_thai_cong_viec == 'MOI'
    
    -- Cap nhat trang thai
    if v_cap_nhat_khong_hop_le = 0 then 
      update cong_viec cv             
      set cv.ma_trang_thai_cong_viec = p_ma_trang_thai_cong_viec,
          cv.ti_le_hoan_thanh_cong_viec = nvl(v_ti_le_hoan_thanh_cong_viec2, cv.ti_le_hoan_thanh_cong_viec),
          cv.ma_tai_khoan_xu_ly = decode(p_ma_trang_thai_cong_viec, 1, null, cv.ma_tai_khoan_xu_ly),
          cv.thoi_gian_xu_ly = decode(cv.thoi_gian_xu_ly, null, null, decode(p_ma_trang_thai_cong_viec, 1, null, cv.thoi_gian_xu_ly)),
          cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly,
          cv.thoi_gian_hoan_thanh_cv = decode(p_ma_trang_thai_cong_viec, 3, sysdate, null)
      where cv.ma_cong_viec = p_ma_cong_viec
            and cv.ma_trang_thai_cong_viec != 3;
    end if;  
  else  -- Khong co quyen cap nhat
    v_cap_nhat_khong_hop_le := 1;
    v_thong_bao := 'Bạn không phải người xử lý nên không có quyền cập nhật trạng thái công việc này!';   
  end if;  -- v_quyen_cap_nhat > 0

  -- Tra ket qua
  if v_kiem_tra_tg_hoan_thanh = 0 and p_ma_trang_thai_cong_viec = 3 then
    open v_result for
    select '' as ma_cong_viec, 
           '',
           'Không thể hoàn thành công việc trước thời gian bắt đầu!' as thong_bao
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec;
  elsif v_cap_nhat_khong_hop_le = 0 then
    open v_result for
    select p_ma_cong_viec as ma_cong_viec, 
           cv.ma_tai_khoan,
            'Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật trạng thái!' as thong_bao
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec;
  else
    open v_result for
    select '' as ma_cong_viec, 
           '' as ma_tai_khoan,
            v_thong_bao as thong_bao
     from dual;
  end if;
  return v_result;
end;
/

-- ----------------------------
-- Function structure for DANG_NHAP
-- ----------------------------
CREATE OR REPLACE function "DANG_NHAP"
(
       p_ten_truy_cap varchar2,
       p_mat_khau     varchar2
)
return sys_refcursor
is
       v_result sys_refcursor;
       v_quyen_giao_viec integer;  -- ma_chuc_nang = 1
begin
    select count(*) into v_quyen_giao_viec
    from tai_khoan_chuc_nang tkcn,
         tai_khoan tk
     where tk.ten_truy_cap = p_ten_truy_cap
           and tkcn.hoat_dong_tkcn = 1
           and tkcn.ma_chuc_nang = 1
           and tk.ma_tai_khoan = tkcn.ma_tai_khoan;

    open v_result for
    select tk.ten_hien_thi,
           tk.ma_tai_khoan,
           tk.ten_truy_cap,
           v_quyen_giao_viec as quyen_giao_viec
    from tai_khoan tk
    where tk.ten_truy_cap = p_ten_truy_cap
          and tk.mat_khau = p_mat_khau;
  
  return v_result; 
end;

















/

-- ----------------------------
-- Function structure for DANG_NHAP_W
-- ----------------------------
CREATE OR REPLACE function "DANG_NHAP_W"
(
       p_ten_truy_cap varchar2,
       p_mat_khau     varchar2
)
return sys_refcursor
is
       v_result sys_refcursor;
       v_quyen_giao_viec integer;  -- ma_chuc_nang = 1
begin
    select count(*) into v_quyen_giao_viec
    from tai_khoan_chuc_nang tkcn,
         tai_khoan tk
     where tk.ten_truy_cap = p_ten_truy_cap
           and tkcn.hoat_dong_tkcn = 1
           and tkcn.ma_chuc_nang = 1
           and tk.ma_tai_khoan = tkcn.ma_tai_khoan;

    open v_result for
    select tk.ten_hien_thi,
           tk.ma_tai_khoan,
           tk.ten_truy_cap,
           v_quyen_giao_viec as quyen_giao_viec
    from tai_khoan tk
    where tk.ten_truy_cap = p_ten_truy_cap
          and tk.mat_khau = p_mat_khau;
  
  return v_result; 
end;
/

-- ----------------------------
-- Function structure for DANH_GIA_CHAT_LUONG_CV_W
-- ----------------------------
CREATE OR REPLACE function "DANH_GIA_CHAT_LUONG_CV_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan in varchar2,
       p_diem_chat_luong in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin  
    update cong_viec cv
    set cv.diem_chat_luong = p_diem_chat_luong
    where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_dg_chat_luong = p_ma_tai_khoan;

    if sql%rowcount = 1 then
      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan, 
                  'Công việc: ' || cv.ten_cong_viec || ' đã được đánh giá chất lượng!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    else      
         if p_diem_chat_luong <= 0 then
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  '0 <= Điểm chất lượng <= 120' as thong_bao
           from dual;
         else
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  'Bạn không phải là người đánh giá chất lượng của công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for DANH_GIA_CHAT_LUONG_NHIEU_CV_W
-- ----------------------------
CREATE OR REPLACE function "DANH_GIA_CHAT_LUONG_NHIEU_CV_W"
(
       p_chuoi_ma_cong_viec in varchar2,
       p_ma_tai_khoan in varchar2,
       p_diem_chat_luong in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin  
    update cong_viec cv
    set cv.diem_chat_luong = p_diem_chat_luong
    where instr(p_chuoi_ma_cong_viec, ',' || cv.ma_cong_viec || ',') > 0
        and cv.ma_tai_khoan_dg_chat_luong = p_ma_tai_khoan;

    if sql%rowcount > 0 then
      open v_result for
           select p_chuoi_ma_cong_viec as ma_cong_viec,
                  p_ma_tai_khoan as ma_tai_khoan, 
                  'Đã đánh giá chất lượng!' as thong_bao
           from dual;
    else      
         if p_diem_chat_luong <= 0 then
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  '0 <= Điểm chất lượng <= 120' as thong_bao
           from dual;
         else
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  'Bạn không phải là người đánh giá chất lượng của những công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for DANH_GIA_THAI_DO_CV_W
-- ----------------------------
CREATE OR REPLACE function "DANH_GIA_THAI_DO_CV_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan in varchar2,
       p_diem_thai_do in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin  
    update cong_viec cv
    set cv.diem_thai_do = p_diem_thai_do
    where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_dg_thai_do = p_ma_tai_khoan;

    if sql%rowcount = 1 then
      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan, 
                  'Công việc: ' || cv.ten_cong_viec || ' đã được đánh giá thái độ!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    else      
         if p_diem_thai_do < 0 then
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  '0 <= Điểm thái độ <= 120' as thong_bao
           from dual;
         else
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  'Bạn không phải là người đánh giá thái độ cho công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for DANH_GIA_THAI_DO_NHIEU_CV_W
-- ----------------------------
CREATE OR REPLACE function "DANH_GIA_THAI_DO_NHIEU_CV_W"
(
       p_chuoi_ma_cong_viec in varchar2,
       p_ma_tai_khoan in varchar2,
       p_diem_thai_do in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin  
    update cong_viec cv
    set cv.diem_thai_do = p_diem_thai_do
    where instr(p_chuoi_ma_cong_viec, ',' || cv.ma_cong_viec || ',') > 0
        and cv.ma_tai_khoan_dg_thai_do = p_ma_tai_khoan;

    if sql%rowcount > 0 then
      open v_result for
           select p_chuoi_ma_cong_viec as ma_cong_viec,
                  p_ma_tai_khoan as ma_tai_khoan, 
                  'Đã đánh giá thái độ!' as thong_bao
           from dual;
    else      
         if p_diem_thai_do < 0 then
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  '0 <= Điểm thái độ <= 120' as thong_bao
           from dual;
         else
           open v_result for
           select '' as ma_cong_viec,
                  '' as ma_tai_khoan, 
                  'Bạn không phải là người đánh giá thái độ của những công việc này!' as thong_bao
           from dual;
         end if;           
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for DOI_MAT_KHAU
-- ----------------------------
CREATE OR REPLACE function "DOI_MAT_KHAU"
(
       p_ten_truy_cap in varchar2,
       p_mat_khau_cu in varchar2,
       p_mat_khau_moi in varchar2
) 
return varchar2
is
  v_result varchar2(500);
begin
  
  update tai_khoan tk
  set tk.mat_khau = p_mat_khau_moi
  where tk.ten_truy_cap = p_ten_truy_cap
        and tk.mat_khau = p_mat_khau_cu;
  
  if sql%rowcount = 1 then
    v_result := 'Đổi mật khẩu thành công!';
  else
    v_result := 'Mật khẩu cũ không đúng!';
  end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for DOI_MAT_KHAU_W
-- ----------------------------
CREATE OR REPLACE function "DOI_MAT_KHAU_W"
(
       p_ten_truy_cap in varchar2,
       p_mat_khau_cu in varchar2,
       p_mat_khau_moi in varchar2
) 
return sys_refcursor
is
  v_result sys_refcursor;
  v_dung_mat_khau integer default 0;
begin
  select count(*) into v_dung_mat_khau
  from tai_khoan tk
  where tk.ten_truy_cap = p_ten_truy_cap
        and tk.mat_khau = p_mat_khau_cu; 

  if v_dung_mat_khau = 1 then
       update tai_khoan tk
       set tk.mat_khau = p_mat_khau_moi
       where tk.ten_truy_cap = p_ten_truy_cap
             and tk.mat_khau = p_mat_khau_cu;
  end if;
        
  if v_dung_mat_khau > 0 then
    open v_result for
         select '1' as thong_bao
         from dual;
  else
    open v_result for
         select 'Mật khẩu cũ không đúng!' as thong_bao
         from dual;
  end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for KIEM_TRA_CAP_NV_GIAO_VIEC
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_CAP_NV_GIAO_VIEC"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_tai_khoan_xu_ly varchar2
)
return integer
is
  v_result integer default 0;
  v_cap_nhan_vien_tkxl integer default 0;
begin
  if p_ma_tai_khoan != p_ma_tai_khoan_xu_ly then
    begin  
    select nv.cap_nhan_vien into v_cap_nhan_vien_tkxl
    from nhan_vien nv,
         tai_khoan tk
    where tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
         and nv.ma_nhan_vien = tk.ma_nhan_vien;
         
    select count(nv.ma_nhan_vien) into v_result
    from nhan_vien nv,
         tai_khoan tk
    where tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan
         and nv.ma_nhan_vien = tk.ma_nhan_vien
         and nv.cap_nhan_vien > v_cap_nhan_vien_tkxl;

    exception when no_data_found then v_result := 0;
    end;
  else
    v_result := 1;
  end if;
  return v_result;
end;

















/

-- ----------------------------
-- Function structure for KIEM_TRA_CAP_NV_GIAO_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_CAP_NV_GIAO_VIEC_W"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_tai_khoan_xu_ly varchar2
)
return integer
is
  v_result integer default 0;
  v_cap_nhan_vien_tkxl integer default 0;
begin
  if p_ma_tai_khoan != p_ma_tai_khoan_xu_ly then
    begin  
    select nv.cap_nhan_vien into v_cap_nhan_vien_tkxl
    from nhan_vien nv,
         tai_khoan tk
    where tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
         and nv.ma_nhan_vien = tk.ma_nhan_vien;
         
    select count(nv.ma_nhan_vien) into v_result
    from nhan_vien nv,
         tai_khoan tk
    where tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan
         and nv.ma_nhan_vien = tk.ma_nhan_vien
         and nv.cap_nhan_vien > v_cap_nhan_vien_tkxl;

    exception when no_data_found then v_result := 0;
    end;
  else
    v_result := 1;
  end if;
  return v_result;
end;
/

-- ----------------------------
-- Function structure for KIEM_TRA_CV_DA_TON_TAI
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_CV_DA_TON_TAI"
(
       p_ten_cong_viec in varchar2
)
return integer
is
  v_kiem_tra_cv_da_ton_tai integer;
begin
  select count(*) into v_kiem_tra_cv_da_ton_tai
      from cong_viec cv
      where cv.ten_cong_viec = p_ten_cong_viec
          and rownum = 1;

  return v_kiem_tra_cv_da_ton_tai;
end;

















/

-- ----------------------------
-- Function structure for KIEM_TRA_CV_DA_TON_TAI_W
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_CV_DA_TON_TAI_W"
(
       p_ten_cong_viec in varchar2
)
return integer
is
  v_kiem_tra_cv_da_ton_tai integer;
begin
  select count(*) into v_kiem_tra_cv_da_ton_tai
      from cong_viec cv
      where cv.ten_cong_viec = p_ten_cong_viec
          and rownum = 1;

  return v_kiem_tra_cv_da_ton_tai;
end;
/

-- ----------------------------
-- Function structure for KIEM_TRA_TK_THAM_DINH_W
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_TK_THAM_DINH_W"
(
       p_ma_nhom_tai_khoan varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_ma_tai_khoan_tham_dinh varchar2
) 
return number 
is
  v_result number;
begin
  select count(*) into v_result
  from tai_khoan_trong_nhom tkn,
       tai_khoan tk,
       tai_khoan tk2,
       nhan_vien nv,
       nhan_vien nv2,
       tai_khoan_xu_ly tkxl,
       tai_khoan_tham_dinh tktd
  where tkxl.ma_tai_khoan_xu_ly = decode(p_ma_tai_khoan_xu_ly, 'TAT_CA', tkxl.ma_tai_khoan_xu_ly, p_ma_tai_khoan_xu_ly)
        and tkxl.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
  
        and tkn.ma_nhom_tai_khoan = decode(p_ma_nhom_tai_khoan, 'TAT_CA', tkn.ma_nhom_tai_khoan, p_ma_nhom_tai_khoan)
        and tktd.ma_tai_khoan = tkn.ma_tai_khoan
        and tktd.ma_tai_khoan = tk2.ma_tai_khoan
        and tk2.ma_nhan_vien = nv2.ma_nhan_vien
        
        and (nv2.cap_nhan_vien > nv.cap_nhan_vien or nv2.cap_nhan_vien >0)
        and tktd.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
        
   return v_result;
  
end;
/

-- ----------------------------
-- Function structure for KIEM_TRA_TK_TRONG_NTK
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_TK_TRONG_NTK"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_nhom_tai_khoan varchar2
)
return integer
is
  v_result integer default 0;
begin
  begin
  select 1 into v_result
  from tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and rownum = 1;

  exception when no_data_found then v_result := 0;
  end;
  return v_result;
end;

















/


-- ----------------------------
-- Function structure for LAY_DS_GIAI_DOAN
-- ----------------------------
create or replace function "LAY_DS_GIAI_DOAN"
return sys_refcursor
is
  v_result sys_refcursor;
begin
  open v_result for
       SELECT MA_GIAI_DOAN_DA,MO_TA FROM giai_doan_mau;
  return v_result;
end;
/
-- ----------------------------
-- Function structure for KIEM_TRA_TK_TRONG_NTK_W
-- ----------------------------
CREATE OR REPLACE function "KIEM_TRA_TK_TRONG_NTK_W"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_nhom_tai_khoan varchar2
)
return integer
is
  v_result integer default 0;
begin
  begin
  select 1 into v_result
  from tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and rownum = 1;

  exception when no_data_found then v_result := 0;
  end;
  return v_result;
end;
/

-- ----------------------------
-- Function structure for KT_TK_TRONG_NHOM_CUA_CV
-- ----------------------------
CREATE OR REPLACE function "KT_TK_TRONG_NHOM_CUA_CV"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_cong_viec varchar2
)
return integer
is
  v_result integer default 0;
begin
  begin
  select 1 into v_result
  from cong_viec cv,
       tai_khoan_trong_nhom tktn
  where cv.ma_cong_viec = p_ma_cong_viec
        and tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and cv.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan;

  exception when no_data_found then v_result := 0;
  end;
  return v_result;
end;

















/

-- ----------------------------
-- Function structure for KT_TK_TRONG_NHOM_CUA_CV_W
-- ----------------------------
CREATE OR REPLACE function "KT_TK_TRONG_NHOM_CUA_CV_W"  -- Tai khoan trong nhom + con hoat dong
(
   p_ma_tai_khoan varchar2,
   p_ma_cong_viec varchar2
)
return integer
is
  v_result integer default 0;
begin
  begin
  select 1 into v_result
  from cong_viec cv,
       tai_khoan_trong_nhom tktn
  where cv.ma_cong_viec = p_ma_cong_viec
        and tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and cv.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan;

  exception when no_data_found then v_result := 0;
  end;
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_CONG_VIEC_DE_SUA
-- ----------------------------
CREATE OR REPLACE function "LAY_CONG_VIEC_DE_SUA"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select cv.ma_muc_do_uu_tien,
         cv.ma_nhom_tai_khoan,
         to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_cong_viec,  -- 4
         to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_cong_viec,  -- 5
         to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_cong_viec,  -- 6
         cv.ma_du_an,
         cv.ten_cong_viec,
         cv.noi_dung_cong_viec,
         cv.ma_don_vi_yeu_cau,
         nvl(cv.tong_thoi_gian_cong_viec, '') as tong_thoi_gian_cong_viec
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_CONG_VIEC_DE_SUA_W
-- ----------------------------
CREATE OR REPLACE function "LAY_CONG_VIEC_DE_SUA_W"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select cv.ma_muc_do_uu_tien,
         cv.ma_nhom_tai_khoan,
         to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_cong_viec,  -- 4
         to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_cong_viec,  -- 5
         to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_cong_viec,  -- 6
         cv.ma_du_an,
         cv.ten_cong_viec,
         cv.noi_dung_cong_viec,
         cv.ma_don_vi_yeu_cau,
         nvl(cv.tong_thoi_gian_cong_viec, '') as tong_thoi_gian_cong_viec
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_CONG_VIEC_W"
(
       p_ma_trang_thai_cong_viec varchar2,-- TAT_CA, cac trang thai cong viec cu the
       p_ma_nhom_tai_khoan varchar2,      -- TAT_CA, cac ma nhom cu the
       p_ngay_them_1 varchar2,            -- ngay them bat dau
       p_ngay_them_2 varchar2,            -- ngay them ket thuc
       p_ma_muc_do_uu_tien varchar2,         -- TAT_CA, cac muc do uu tien
       p_ma_du_an varchar2,
       p_ma_tai_khoan varchar2,              -- Session
       p_ma_tai_khoan_so_huu varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_ma_tai_khoan_tham_dinh varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_cong_viec_dang_xu_ly varchar2,  -- Lay cong viec dang xu ly
       p_ma_cong_viec varchar2                   -- Lay 1 cong viec theo ma (danh cho click vao cac cong viec duoc canh bao)
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_ngay_them_1 date default to_date(p_ngay_them_1, 'dd/mm/yyyy');
  v_ngay_them_2 date default to_date(p_ngay_them_2, 'dd/mm/yyyy');
begin
    if p_ma_cong_viec != 'TAT_CA' then
      open v_result for 
           select ma_cong_viec,
                  ten_cong_viec,
                  noi_dung_cong_viec,                
                  thoi_gian_them_cong_viec,
                  thoi_gian_bat_dau_cong_viec,
                  thoi_gian_ket_thuc_cong_viec,
                  thoi_gian_xu_ly,
                  thoi_gian_hoan_thanh_cv,
                  tham_dinh_da_hoan_thanh_cv,
                  tham_dinh_thoi_gian_ht_cv,
                  tong_thoi_gian_cong_viec,
                  thang_cua_cong_viec,
                  case when thoi_gian_con_lai < 0 then '0' else decode(substr(thoi_gian_con_lai, 0, 1), '.', '0' || thoi_gian_con_lai, thoi_gian_con_lai) end as thoi_gian_con_lai,
                  ten_trang_thai_cong_viec,
                  ti_le_hoan_thanh_cong_viec,
                  ten_du_an, ten_nhom_tai_khoan,                  
                  muc_do_uu_tien,
                  ten_tai_khoan,
                  ten_tai_khoan_xu_ly,
                  ten_tai_khoan_tham_dinh,
                  ten_don_vi_yeu_cau,
                  ma_tai_khoan,
                  ma_trang_thai_cong_viec,
                  ma_cong_viec_cha,
                  ma_tai_khoan_xu_ly,
                  ma_muc_do_uu_tien,
                  ma_don_vi_yeu_cau,
                  ma_du_an,
                  ma_nhom_tai_khoan,
                  ma_tai_khoan_tham_dinh,
                  diem_chat_luong,
                  diem_thai_do,
                  ten_tai_khoan_dg_chat_luong,
                  ten_tai_khoan_dg_thai_do,
                  ma_tai_khoan_dg_chat_luong,
                  ma_tai_khoan_dg_thai_do,
                  so_luong_cong_viec_con,
                  tham_dinh_tong_thoi_gian                
           from( 
           select cv.ma_cong_viec,
                  cv.ten_cong_viec,
                  cv.noi_dung_cong_viec,
                  cv.ma_tai_khoan,
                  cv.ma_trang_thai_cong_viec,
                  cv.ma_cong_viec_cha,
                  cv.ma_tai_khoan_xu_ly,
                  cv.ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau,
                  cv.ma_du_an,
                  cv.ma_nhom_tai_khoan, ntk.ten_nhom_tai_khoan,                  
                  to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_them_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_bat_dau_cong_viec,
                  to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_ket_thuc_cong_viec,
                  to_char(cv.thoi_gian_xu_ly, 'dd/mm/yyyy HH24:MI') as thoi_gian_xu_ly,
                  to_char(cv.thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI') as thoi_gian_hoan_thanh_cv,
                  to_char(nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv), 'dd/mm/yyyy HH24:MI') as tham_dinh_thoi_gian_ht_cv,
                  cv.tong_thoi_gian_cong_viec / 60 as tong_thoi_gian_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') as thang_cua_cong_viec,
                  to_char(round(cv.thoi_gian_ket_thuc_cong_viec - sysdate, 2)) as thoi_gian_con_lai,
                  cv.thoi_gian_them_cong_viec as thoi_gian_them_cong_viec_date,
                  cv.ma_tai_khoan_tham_dinh,
                  tk.ten_hien_thi as ten_tai_khoan,
                  tk_xl.ten_hien_thi as ten_tai_khoan_xu_ly,
                  tk_td.ten_hien_thi as ten_tai_khoan_tham_dinh,
                  tt.ten_trang_thai_cong_viec,
                  da.ten_du_an,
                  mdut.muc_do_uu_tien,
                  dvyc.ten_don_vi_yeu_cau,
                  cv.ti_le_hoan_thanh_cong_viec,
                  decode(cv.tham_dinh_da_hoan_thanh_cv, null, null, 0, 'Chưa HT', 'Hoàn thành') as tham_dinh_da_hoan_thanh_cv,
                  cv.diem_chat_luong,
                  cv.diem_thai_do,
                  tk_dg_cl.ten_hien_thi as ten_tai_khoan_dg_chat_luong,
                  tk_dg_td.ten_hien_thi as ten_tai_khoan_dg_thai_do,
                  cv.ma_tai_khoan_dg_chat_luong,
                  cv.ma_tai_khoan_dg_thai_do,
                  cv.so_luong_cong_viec_con,
                  cv.tham_dinh_tong_thoi_gian / 60 as tham_dinh_tong_thoi_gian
           from cong_viec cv
                left join tai_khoan tk_xl on cv.ma_tai_khoan_xu_ly = tk_xl.ma_tai_khoan_xu_ly
                left join tai_khoan tk_td on cv.ma_tai_khoan_tham_dinh = tk_td.ma_tai_khoan_tham_dinh
                left join tai_khoan tk_dg_cl on cv.ma_tai_khoan_dg_chat_luong = tk_dg_cl.ma_tai_khoan
                left join tai_khoan tk_dg_td on cv.ma_tai_khoan_dg_thai_do = tk_dg_td.ma_tai_khoan,
                tai_khoan_trong_nhom tktn,
                trang_thai_cong_viec tt,
                du_an da,
                nhom_tai_khoan ntk,
                muc_do_uu_tien mdut,
                don_vi_yeu_cau dvyc,
                tai_khoan tk              
           where (cv.ma_cong_viec = p_ma_cong_viec
                     or cv.ma_cong_viec_cha = decode(p_ma_cong_viec_cha, 'TAT_CA', -1, p_ma_cong_viec_cha))
                 and tktn.ma_tai_khoan = p_ma_tai_khoan
                 and tktn.ma_nhom_tai_khoan = cv.ma_nhom_tai_khoan   
                 
                 and cv.ma_trang_thai_cong_viec = tt.ma_trang_thai_cong_viec
                 and cv.ma_du_an = da.ma_du_an
                 and cv.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
                 and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
                 and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau 
                 and cv.ma_tai_khoan = tk.ma_tai_khoan       
           ) rs
           order by rs.thang_cua_cong_viec ,rs.thoi_gian_them_cong_viec_date, rs.thoi_gian_con_lai;
    elsif p_cong_viec_dang_xu_ly = '1' then
      open v_result for 
           select ma_cong_viec,
                  ten_cong_viec,
                  noi_dung_cong_viec,                
                  thoi_gian_them_cong_viec,
                  thoi_gian_bat_dau_cong_viec,
                  thoi_gian_ket_thuc_cong_viec,
                  thoi_gian_xu_ly,
                  thoi_gian_hoan_thanh_cv,
                  tham_dinh_da_hoan_thanh_cv,
                  tham_dinh_thoi_gian_ht_cv,
                  tong_thoi_gian_cong_viec,
                  thang_cua_cong_viec,
                  case when thoi_gian_con_lai < 0 then '0' else decode(substr(thoi_gian_con_lai, 0, 1), '.', '0' || thoi_gian_con_lai, thoi_gian_con_lai) end as thoi_gian_con_lai,
                  ten_trang_thai_cong_viec,
                  ti_le_hoan_thanh_cong_viec,
                  ten_du_an, ten_nhom_tai_khoan,
                  muc_do_uu_tien,
                  ten_tai_khoan,
                  ten_tai_khoan_xu_ly,
                  ten_tai_khoan_tham_dinh,
                  ten_don_vi_yeu_cau,
                  ma_tai_khoan,
                  ma_trang_thai_cong_viec,
                  ma_cong_viec_cha,
                  ma_tai_khoan_xu_ly,
                  ma_muc_do_uu_tien,
                  ma_don_vi_yeu_cau,
                  ma_du_an,
                  ma_nhom_tai_khoan,
                  ma_tai_khoan_tham_dinh,
                  diem_chat_luong,
                  diem_thai_do,
                  ten_tai_khoan_dg_chat_luong,
                  ten_tai_khoan_dg_thai_do,
                  ma_tai_khoan_dg_chat_luong,
                  ma_tai_khoan_dg_thai_do,
                  so_luong_cong_viec_con,
                  tham_dinh_tong_thoi_gian
           from( 
           select cv.ma_cong_viec,
                  cv.ten_cong_viec,
                  cv.noi_dung_cong_viec,
                  cv.ma_tai_khoan,
                  cv.ma_trang_thai_cong_viec,
                  cv.ma_cong_viec_cha,
                  cv.ma_tai_khoan_xu_ly,
                  cv.ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau,
                  cv.ma_du_an,
                  cv.ma_nhom_tai_khoan, ntk.ten_nhom_tai_khoan,
                  to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_them_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_bat_dau_cong_viec,
                  to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_ket_thuc_cong_viec,
                  to_char(cv.thoi_gian_xu_ly, 'dd/mm/yyyy HH24:MI') as thoi_gian_xu_ly,
                  to_char(cv.thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI') as thoi_gian_hoan_thanh_cv,
                  to_char(nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv), 'dd/mm/yyyy HH24:MI') as tham_dinh_thoi_gian_ht_cv,
                  cv.tong_thoi_gian_cong_viec / 60 as tong_thoi_gian_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') as thang_cua_cong_viec,
                  to_char(round(cv.thoi_gian_ket_thuc_cong_viec - sysdate, 2)) as thoi_gian_con_lai,
                  cv.thoi_gian_them_cong_viec as thoi_gian_them_cong_viec_date,
                  cv.ma_tai_khoan_tham_dinh,
                  tk.ten_hien_thi as ten_tai_khoan,
                  tk_xl.ten_hien_thi as ten_tai_khoan_xu_ly,
                  tk_td.ten_hien_thi as ten_tai_khoan_tham_dinh,
                  tt.ten_trang_thai_cong_viec,
                  da.ten_du_an,
                  mdut.muc_do_uu_tien,
                  dvyc.ten_don_vi_yeu_cau,
                  cv.ti_le_hoan_thanh_cong_viec,
                  decode(cv.tham_dinh_da_hoan_thanh_cv, null, null, 0, 'Chưa HT', 'Hoàn thành') as tham_dinh_da_hoan_thanh_cv,
                  cv.diem_chat_luong,
                  cv.diem_thai_do,
                  tk_dg_cl.ten_hien_thi as ten_tai_khoan_dg_chat_luong,
                  tk_dg_td.ten_hien_thi as ten_tai_khoan_dg_thai_do,
                  cv.ma_tai_khoan_dg_chat_luong,
                  cv.ma_tai_khoan_dg_thai_do,
                  cv.so_luong_cong_viec_con,
                  cv.tham_dinh_tong_thoi_gian / 60 as tham_dinh_tong_thoi_gian
           from cong_viec cv
                left join tai_khoan tk_xl on cv.ma_tai_khoan_xu_ly = tk_xl.ma_tai_khoan_xu_ly
                left join tai_khoan tk_td on cv.ma_tai_khoan_tham_dinh = tk_td.ma_tai_khoan_tham_dinh
                left join tai_khoan tk_dg_cl on cv.ma_tai_khoan_dg_chat_luong = tk_dg_cl.ma_tai_khoan
                left join tai_khoan tk_dg_td on cv.ma_tai_khoan_dg_thai_do = tk_dg_td.ma_tai_khoan,
                tai_khoan_trong_nhom tktn,
                trang_thai_cong_viec tt,
                du_an da,
                nhom_tai_khoan ntk,
                muc_do_uu_tien mdut,
                don_vi_yeu_cau dvyc,
                tai_khoan tk              
           where (cv.ma_trang_thai_cong_viec in (1, 2) 
                 	 --or (cv.ma_trang_thai_cong_viec = 3
                     --    and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0))
                     --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_chat_luong, -1) = -1))
                     --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_thai_do, -1) = -1))
                 )           
                 and tktn.ma_tai_khoan = p_ma_tai_khoan
                 and tktn.ma_nhom_tai_khoan = cv.ma_nhom_tai_khoan   
                 
                 and cv.ma_trang_thai_cong_viec = tt.ma_trang_thai_cong_viec
                 and cv.ma_du_an = da.ma_du_an
                 and cv.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
                 and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
                 and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau 
                 and cv.ma_tai_khoan = tk.ma_tai_khoan       
           ) rs
           order by rs.thang_cua_cong_viec ,rs.thoi_gian_them_cong_viec_date, rs.thoi_gian_con_lai;
    else  -- Lay cong viec theo tuy chon cua nguoi dung
      open v_result for 
           select ma_cong_viec,
                  ten_cong_viec,
                  noi_dung_cong_viec,                
                  thoi_gian_them_cong_viec,
                  thoi_gian_bat_dau_cong_viec,
                  thoi_gian_ket_thuc_cong_viec,
                  thoi_gian_xu_ly,
                  thoi_gian_hoan_thanh_cv,
                  tham_dinh_thoi_gian_ht_cv,
                  tong_thoi_gian_cong_viec,
                  thang_cua_cong_viec,
                  case when thoi_gian_con_lai < 0 then '0' else decode(substr(thoi_gian_con_lai, 0, 1), '.', '0' || thoi_gian_con_lai, thoi_gian_con_lai) end as thoi_gian_con_lai,
                  ten_trang_thai_cong_viec,
                  ti_le_hoan_thanh_cong_viec,
                  ten_du_an, ten_nhom_tai_khoan,
                  muc_do_uu_tien,
                  ten_tai_khoan,
                  ten_tai_khoan_xu_ly,
                  ten_tai_khoan_tham_dinh,
                  ten_don_vi_yeu_cau,
                  ma_tai_khoan,
                  ma_trang_thai_cong_viec,
                  ma_cong_viec_cha,
                  ma_tai_khoan_xu_ly,
                  ma_muc_do_uu_tien,
                  ma_don_vi_yeu_cau,
                  ma_du_an,
                  ma_nhom_tai_khoan,
                  ma_tai_khoan_tham_dinh,
                  tham_dinh_da_hoan_thanh_cv,
                  diem_chat_luong,
                  diem_thai_do,
                  ten_tai_khoan_dg_chat_luong,
                  ten_tai_khoan_dg_thai_do,
                  ma_tai_khoan_dg_chat_luong,
                  ma_tai_khoan_dg_thai_do,
                  so_luong_cong_viec_con,
                  tham_dinh_tong_thoi_gian
           from( 
           select cv.ma_cong_viec,
                  cv.ten_cong_viec,
                  cv.noi_dung_cong_viec,
                  cv.ma_tai_khoan,
                  cv.ma_trang_thai_cong_viec,
                  cv.ma_cong_viec_cha,
                  cv.ma_tai_khoan_xu_ly,
                  cv.ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau,
                  cv.ma_du_an,
                  cv.ma_nhom_tai_khoan, ntk.ten_nhom_tai_khoan,
                  to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_them_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_bat_dau_cong_viec,
                  to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI') as thoi_gian_ket_thuc_cong_viec,
                  to_char(cv.thoi_gian_xu_ly, 'dd/mm/yyyy HH24:MI') as thoi_gian_xu_ly,
                  to_char(cv.thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI') as thoi_gian_hoan_thanh_cv,
                  to_char(nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv), 'dd/mm/yyyy HH24:MI') as tham_dinh_thoi_gian_ht_cv,
                  cv.tong_thoi_gian_cong_viec / 60 as tong_thoi_gian_cong_viec,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') as thang_cua_cong_viec,
                  to_char(round(cv.thoi_gian_ket_thuc_cong_viec - sysdate, 2)) as thoi_gian_con_lai,
                  cv.thoi_gian_them_cong_viec as thoi_gian_them_cong_viec_date,
                  cv.ma_tai_khoan_tham_dinh,
                  tk.ten_hien_thi as ten_tai_khoan,
                  tk_xl.ten_hien_thi as ten_tai_khoan_xu_ly,
                  tk_td.ten_hien_thi as ten_tai_khoan_tham_dinh,
                  tt.ten_trang_thai_cong_viec,
                  da.ten_du_an,
                  mdut.muc_do_uu_tien,
                  dvyc.ten_don_vi_yeu_cau,
                  cv.ti_le_hoan_thanh_cong_viec,
                  decode(cv.tham_dinh_da_hoan_thanh_cv, null, null, 0, 'Chưa HT', 'Hoàn thành') as tham_dinh_da_hoan_thanh_cv,
                  cv.diem_chat_luong,
                  cv.diem_thai_do,
                  tk_dg_cl.ten_hien_thi as ten_tai_khoan_dg_chat_luong,
                  tk_dg_td.ten_hien_thi as ten_tai_khoan_dg_thai_do,
                  cv.ma_tai_khoan_dg_chat_luong,
                  cv.ma_tai_khoan_dg_thai_do,
                  cv.so_luong_cong_viec_con,
                  cv.tham_dinh_tong_thoi_gian / 60 as tham_dinh_tong_thoi_gian
           from cong_viec cv
                left join tai_khoan tk_xl on cv.ma_tai_khoan_xu_ly = tk_xl.ma_tai_khoan_xu_ly
                left join tai_khoan tk_td on cv.ma_tai_khoan_tham_dinh = tk_td.ma_tai_khoan_tham_dinh
                left join tai_khoan tk_dg_cl on cv.ma_tai_khoan_dg_chat_luong = tk_dg_cl.ma_tai_khoan
                left join tai_khoan tk_dg_td on cv.ma_tai_khoan_dg_thai_do = tk_dg_td.ma_tai_khoan,
                tai_khoan_trong_nhom tktn,
                trang_thai_cong_viec tt,
                du_an da,
                nhom_tai_khoan ntk,
                muc_do_uu_tien mdut,
                don_vi_yeu_cau dvyc,
                tai_khoan tk              
           where cv.ma_trang_thai_cong_viec = decode(p_ma_trang_thai_cong_viec, 'TAT_CA', cv.ma_trang_thai_cong_viec, p_ma_trang_thai_cong_viec)
                 and cv.ma_nhom_tai_khoan = decode(p_ma_nhom_tai_khoan, 'TAT_CA', cv.ma_nhom_tai_khoan, p_ma_nhom_tai_khoan)
                 and (v_ngay_them_1 between trunc(cv.thoi_gian_bat_dau_cong_viec) and trunc(cv.thoi_gian_ket_thuc_cong_viec)
                          or v_ngay_them_2 between trunc(cv.thoi_gian_bat_dau_cong_viec) and trunc(cv.thoi_gian_ket_thuc_cong_viec)
                      or (v_ngay_them_1 < cv.thoi_gian_bat_dau_cong_viec and v_ngay_them_2 > cv.thoi_gian_ket_thuc_cong_viec)
                     )
                 and cv.ma_muc_do_uu_tien = decode(p_ma_muc_do_uu_tien, 'TAT_CA', cv.ma_muc_do_uu_tien, p_ma_muc_do_uu_tien)
                 and cv.ma_don_vi_yeu_cau = decode(p_ma_don_vi_yeu_cau, 'TAT_CA', cv.ma_don_vi_yeu_cau, p_ma_don_vi_yeu_cau)
                 and cv.ma_tai_khoan = decode(p_ma_tai_khoan_so_huu, 'TAT_CA', cv.ma_tai_khoan, p_ma_tai_khoan_so_huu)
                 and nvl(cv.ma_tai_khoan_xu_ly, -1) = decode(p_ma_tai_khoan_xu_ly, 'TAT_CA', nvl(cv.ma_tai_khoan_xu_ly, -1), p_ma_tai_khoan_xu_ly)
                 and nvl(cv.ma_tai_khoan_tham_dinh, -1) = decode(p_ma_tai_khoan_tham_dinh, 'TAT_CA', nvl(cv.ma_tai_khoan_tham_dinh, -1), p_ma_tai_khoan_tham_dinh)
                 and cv.ma_du_an = decode(p_ma_du_an, 'TAT_CA', cv.ma_du_an, p_ma_du_an)
                 
                 and tktn.ma_tai_khoan = p_ma_tai_khoan
                 and tktn.ma_nhom_tai_khoan = cv.ma_nhom_tai_khoan   
                 
                 and cv.ma_trang_thai_cong_viec = tt.ma_trang_thai_cong_viec
                 and cv.ma_du_an = da.ma_du_an
                 and cv.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
                 and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
                 and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau 
                 and cv.ma_tai_khoan = tk.ma_tai_khoan       
           ) rs
           order by rs.thang_cua_cong_viec ,rs.thoi_gian_them_cong_viec_date, rs.thoi_gian_con_lai;
  end if;         
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_GHI_CHU
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_GHI_CHU"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
begin
  open v_result for
       select gc.stt_ghi_chu_cong_viec,
              tk.ten_hien_thi,
              gc.noi_dung_ghi_chu_cong_viec,              
              to_char(gc.thoi_gian_them_ghi_chu_cv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_ghi_chu_cv
       from ghi_chu_cong_viec gc,
            tai_khoan tk
       where gc.ma_cong_viec = p_ma_cong_viec
             and gc.ma_tai_khoan = tk.ma_tai_khoan
       order by gc.stt_ghi_chu_cong_viec;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_GHI_CHU_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_GHI_CHU_W"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
begin
  open v_result for
       select gc.stt_ghi_chu_cong_viec,
              tk.ten_hien_thi,
              gc.noi_dung_ghi_chu_cong_viec,              
              to_char(gc.thoi_gian_them_ghi_chu_cv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_ghi_chu_cv
       from ghi_chu_cong_viec gc,
            tai_khoan tk
       where gc.ma_cong_viec = p_ma_cong_viec
             and gc.ma_tai_khoan = tk.ma_tai_khoan
       order by gc.stt_ghi_chu_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_GIAI_DOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_GIAI_DOAN"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
       select gd.stt_giai_doan, -- 4
              gd.ten_giai_doan,  -- 5
              gd.noi_dung_giai_doan,
              to_char(gd.thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_giai_doan, -- 6
              to_char(gd.thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_giai_doan, -- 7
              to_char(gd.thoi_gian_them_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_giai_doan,
              gd.ti_le_hoan_thanh_giai_doan,
              gd.thoi_gian_hoan_thanh_gd,
              to_char(sysdate, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hien_tai
       from giai_doan gd
       where gd.ma_cong_viec = p_ma_cong_viec
       order by gd.stt_giai_doan asc;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_GIAI_DOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_GIAI_DOAN_W"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
       select gd.stt_giai_doan, -- 4
              gd.ten_giai_doan,  -- 5
              gd.noi_dung_giai_doan,
              to_char(gd.thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_giai_doan, -- 6
              to_char(gd.thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_giai_doan, -- 7
              to_char(gd.thoi_gian_them_giai_doan, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_giai_doan,
              gd.ti_le_hoan_thanh_giai_doan,
              gd.thoi_gian_hoan_thanh_gd,
              to_char(sysdate, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hien_tai
       from giai_doan gd
       where gd.ma_cong_viec = p_ma_cong_viec
       order by gd.stt_giai_doan asc;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_MENU
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_MENU"
(
       p_ma_tai_khoan number
) 
return sys_refcursor
is
  v_cursor sys_refcursor;
begin
  open v_cursor for
  select mn.ma_menu,
         mn.ten_menu,
         mn.link
  from tai_khoan_menu tkmn,
       menu mn
  where tkmn.ma_tai_khoan = p_ma_tai_khoan
        and mn.hoat_dong_mn = 1
        and tkmn.hoat_dong_tkmn = 1
        and tkmn.ma_menu = mn.ma_menu;
  
  return v_cursor;
end;


/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_MENU_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_MENU_W"
(
       p_ma_tai_khoan number
) 
return sys_refcursor
is
  v_cursor sys_refcursor;
begin
  open v_cursor for
  select mn.ma_menu,
         mn.ten_menu,
         mn.link
  from tai_khoan_menu tkmn,
       menu mn
  where tkmn.ma_tai_khoan = p_ma_tai_khoan
        and mn.hoat_dong_mn = 1
        and tkmn.hoat_dong_tkmn = 1
        and tkmn.ma_menu = mn.ma_menu
  order by mn.ma_menu;
  
  return v_cursor;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_TAI_KHOAN_W"
(
       p_ma_tai_khoan varchar2,
       p_ma_tai_khoan_sess varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_thang_hien_tai varchar2(7) default to_char(sysdate, 'mm/yyyy');
begin
  open v_result for
       select tk.ma_tai_khoan,
              tk.ten_hien_thi,
              pt.ma_phong_to,
              pt.ten_phong_to,
              sum(cv.tong_thoi_gian_cong_viec) / 60 as tong_thoi_gian_lam_viec,
              sum(decode(nvl(cv.tham_dinh_da_hoan_thanh_cv, 0), 1, nvl(cv.tham_dinh_tong_thoi_gian, nvl(cv.tong_thoi_gian_cong_viec, 0)), 0)) / 60 as tong_thoi_gian_thuc,
              count(cv.ten_cong_viec) as so_luong_cong_viec,
              listagg(to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm') || 
                   decode(to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm'), to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm'), '', ' - ' || to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm')) , ' ; ') within group (order by cv.thoi_gian_bat_dau_cong_viec asc)
                   as ngay_lam_viec
       from nhan_vien nv,
            phong_to pt,  
            (select distinct tk.ma_tai_khoan,
                   tk.ma_tai_khoan_xu_ly,
                   tk.ma_nhan_vien,
                   tk.ten_hien_thi            
                 from tai_khoan tk,                      
                      tai_khoan_trong_nhom tktn,
                      tai_khoan_trong_nhom tktn2
                 where tktn.ma_tai_khoan = p_ma_tai_khoan_sess
                       and tktn.ma_nhom_tai_khoan = tktn2.ma_nhom_tai_khoan
                       and tktn2.ma_tai_khoan = tk.ma_tai_khoan
                       and tktn2.ma_tai_khoan = decode(p_ma_tai_khoan, 'TAT_CA', tktn2.ma_tai_khoan, p_ma_tai_khoan)) tk
            left join cong_viec cv
                 on to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = v_thang_hien_tai
                         and cv.ma_trang_thai_cong_viec < 4
                         and tk.ma_tai_khoan_xu_ly = cv.ma_tai_khoan_xu_ly
        where tk.ma_nhan_vien = nv.ma_nhan_vien 
              and nv.ma_phong_to = pt.ma_phong_to
        group by tk.ma_tai_khoan,
              tk.ten_hien_thi,
              pt.ten_phong_to,
              pt.ma_phong_to,
              nv.cap_nhan_vien
        order by nv.cap_nhan_vien, pt.ma_phong_to;
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DANH_SACH_THIET_LAP_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DANH_SACH_THIET_LAP_W"
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tl.ma_thiet_lap,
         tl.ten_thiet_lap
  from thiet_lap tl
  order by tl.ten_thiet_lap;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CONG_VIEC_CUA_TOI_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CONG_VIEC_CUA_TOI_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec = 2
               --or (cv.ma_trang_thai_cong_viec = 3
                   --and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0))
               --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_chat_luong, -1) = -1))
                     --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_thai_do, -1) = -1))
               )
               and nvl(cv.ma_tai_khoan_xu_ly, -1) = p_ma_tai_khoan;           
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CONG_VIEC_LIEN_QUAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CONG_VIEC_LIEN_QUAN_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec in (1, 2)
               --or (cv.ma_trang_thai_cong_viec = 3
                --   and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0))
               --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_chat_luong, -1) = -1))
                --     or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_thai_do, -1) = -1))
               )
               and nvl(cv.ma_tai_khoan, -1) = p_ma_tai_khoan
               and nvl(cv.ma_tai_khoan_xu_ly, -1) != p_ma_tai_khoan;  
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CONG_VIEC_THAM_DINH_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CONG_VIEC_THAM_DINH_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec in (1, 2)
               or (cv.ma_trang_thai_cong_viec = 3
                  and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0)))
               and nvl(cv.ma_tai_khoan_tham_dinh, -1) = p_ma_tai_khoan;          
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_CHUA_XU_LY
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_CHUA_XU_LY"
(
       p_trang_thai_cong_viec varchar2,   -- TAT_CA, CHUA_XU_LY, CHUA_HOAN_THANH, NHO_HON_100, DA_HOAN_THANH
       p_ma_nhom_tai_khoan varchar2,      -- TAT_CA, cac ma nhom cu the
       p_ngay_them_1 varchar2,            -- TAT_CA, ngay them bat dau
       p_ngay_them_2 varchar2,            -- TAT_CA, ngay them ket thuc
       p_muc_do_uu_tien varchar2,         -- TAT_CA, cac muc do uu tien
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for  
         select rs.ma_cong_viec,
                rs.ten_cong_viec,
                rs.ma_tai_khoan_so_huu,
                rs.ma_tai_khoan_xu_ly,
                rs.ma_nhom_tai_khoan,
                rs.ma_trang_thai_cong_viec,
                rs.ma_cong_viec_cha,
                rs.so_luong_cong_viec_con,
                case when thoi_gian_con_lai < 0 then '0' else decode(substr(thoi_gian_con_lai, 0, 1), '.', '0' || thoi_gian_con_lai, thoi_gian_con_lai) end as thoi_gian_con_lai,
                ma_tai_khoan_tham_dinh,
                thang_cua_cong_viec
         from (    
           select cv.ma_cong_viec,
                  cv.ten_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan_so_huu,
                  cv.ma_tai_khoan_xu_ly,
                  cv.ma_nhom_tai_khoan,
                  cv.ma_trang_thai_cong_viec,
                  cv.ma_cong_viec_cha,
                  (select count(*) from cong_viec cv2 where cv2.ma_cong_viec_cha = cv.ma_cong_viec) as so_luong_cong_viec_con,
                  to_char(round(cv.thoi_gian_ket_thuc_cong_viec - sysdate, 2)) as thoi_gian_con_lai,
                  nvl(cv.ma_tai_khoan_tham_dinh, '') as ma_tai_khoan_tham_dinh,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') as thang_cua_cong_viec
           from cong_viec cv, 
                tai_khoan_trong_nhom tkn
           where tkn.ma_tai_khoan = p_ma_tai_khoan
                 and tkn.hoat_dong_tktn = 1
                 
                 and nvl(cv.ma_tai_khoan_xu_ly, 0) = nvl(decode(p_trang_thai_cong_viec, 'TAT_CA',  cv.ma_tai_khoan_xu_ly, 'CHUA_XU_LY', null, 'CHUA_HOAN_THANH', nvl(cv.ma_tai_khoan_xu_ly, -1), 'NHO_HON_100', cv.ma_tai_khoan_xu_ly, 'DA_HOAN_THANH', cv.ma_tai_khoan_xu_ly, cv.ma_tai_khoan_xu_ly), 0)
                 and ((cv.ti_le_hoan_thanh_cong_viec between decode(p_trang_thai_cong_viec, 'DA_HOAN_THANH', 100, 0)
                                                        and decode(p_trang_thai_cong_viec, 'TAT_CA', 100, 'DA_HOAN_THANH', 100, 99))
                      or (cv.ma_tai_khoan_tham_dinh is not null and nvl(cv.tham_dinh_da_hoan_thanh_cv, 0) != 1))
                 and cv.ma_trang_thai_cong_viec not in (decode(p_trang_thai_cong_viec, 'NHO_HON_100', 6, -1), decode(p_trang_thai_cong_viec, 'NHO_HON_100', 7, -1))  -- Bo cac cong viec da Huy va Khong the thuc hien
                 and (to_char(cv.ma_nhom_tai_khoan) in (select trim(regexp_substr(p_ma_nhom_tai_khoan, '[^,]+', 1, level)) as ma_nhom_tai_khoan
                                                 from dual
                                                 connect by level <= regexp_count(p_ma_nhom_tai_khoan, ',')+1)
                        or p_ma_nhom_tai_khoan = 'TAT_CA')
                 and cv.thoi_gian_them_cong_viec between decode(p_ngay_them_1, 'TAT_CA', cv.thoi_gian_them_cong_viec, to_date(p_ngay_them_1, 'dd/mm/yyyy HH24:MI:SS'))
                                                       and decode(p_ngay_them_1, 'TAT_CA', cv.thoi_gian_them_cong_viec, to_date(p_ngay_them_2, 'dd/mm/yyyy HH24:MI:SS'))
                 and (to_char(cv.ma_muc_do_uu_tien) in (select trim(regexp_substr(p_muc_do_uu_tien, '[^,]+', 1, level)) as muc_do_uu_tien_muc_do
                                                  from dual
                                                  connect by level <= regexp_count(p_muc_do_uu_tien, ',')+1)
                         or p_muc_do_uu_tien = 'TAT_CA')
                 and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
                 and cv.thoi_gian_ket_thuc_cong_viec <= decode(p_trang_thai_cong_viec, 'TRE_HAN', sysdate, cv.thoi_gian_ket_thuc_cong_viec)
           order by cv.thoi_gian_ket_thuc_cong_viec) rs;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_CHUA_XU_LY_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_CHUA_XU_LY_W"
(
       p_trang_thai_cong_viec varchar2,   -- TAT_CA, CHUA_XU_LY, CHUA_HOAN_THANH, NHO_HON_100, DA_HOAN_THANH
       p_ma_nhom_tai_khoan varchar2,      -- TAT_CA, cac ma nhom cu the
       p_ngay_them_1 varchar2,            -- TAT_CA, ngay them bat dau
       p_ngay_them_2 varchar2,            -- TAT_CA, ngay them ket thuc
       p_muc_do_uu_tien varchar2,         -- TAT_CA, cac muc do uu tien
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for  
         select rs.ma_cong_viec,
                rs.ten_cong_viec,
                rs.ma_tai_khoan_so_huu,
                rs.ma_tai_khoan_xu_ly,
                rs.ma_nhom_tai_khoan,
                rs.ma_trang_thai_cong_viec,
                rs.ma_cong_viec_cha,
                rs.so_luong_cong_viec_con,
                case when thoi_gian_con_lai < 0 then '0' else decode(substr(thoi_gian_con_lai, 0, 1), '.', '0' || thoi_gian_con_lai, thoi_gian_con_lai) end as thoi_gian_con_lai,
                ma_tai_khoan_tham_dinh,
                thang_cua_cong_viec
         from (    
           select cv.ma_cong_viec,
                  cv.ten_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan_so_huu,
                  cv.ma_tai_khoan_xu_ly,
                  cv.ma_nhom_tai_khoan,
                  cv.ma_trang_thai_cong_viec,
                  cv.ma_cong_viec_cha,
                  (select count(*) from cong_viec cv2 where cv2.ma_cong_viec_cha = cv.ma_cong_viec) as so_luong_cong_viec_con,
                  to_char(round(cv.thoi_gian_ket_thuc_cong_viec - sysdate, 2)) as thoi_gian_con_lai,
                  nvl(cv.ma_tai_khoan_tham_dinh, '') as ma_tai_khoan_tham_dinh,
                  to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') as thang_cua_cong_viec
           from cong_viec cv, 
                tai_khoan_trong_nhom tkn
           where tkn.ma_tai_khoan = p_ma_tai_khoan
                 and tkn.hoat_dong_tktn = 1
                 
                 and nvl(cv.ma_tai_khoan_xu_ly, 0) = nvl(decode(p_trang_thai_cong_viec, 'TAT_CA',  cv.ma_tai_khoan_xu_ly, 'CHUA_XU_LY', null, 'CHUA_HOAN_THANH', nvl(cv.ma_tai_khoan_xu_ly, -1), 'NHO_HON_100', cv.ma_tai_khoan_xu_ly, 'DA_HOAN_THANH', cv.ma_tai_khoan_xu_ly, cv.ma_tai_khoan_xu_ly), 0)
                 and ((cv.ti_le_hoan_thanh_cong_viec between decode(p_trang_thai_cong_viec, 'DA_HOAN_THANH', 100, 0)
                                                        and decode(p_trang_thai_cong_viec, 'TAT_CA', 100, 'DA_HOAN_THANH', 100, 99))
                      or (cv.ma_tai_khoan_tham_dinh is not null and nvl(cv.tham_dinh_da_hoan_thanh_cv, 0) != 1))
                 and cv.ma_trang_thai_cong_viec not in (decode(p_trang_thai_cong_viec, 'NHO_HON_100', 6, -1), decode(p_trang_thai_cong_viec, 'NHO_HON_100', 7, -1))  -- Bo cac cong viec da Huy va Khong the thuc hien
                 and (to_char(cv.ma_nhom_tai_khoan) in (select trim(regexp_substr(p_ma_nhom_tai_khoan, '[^,]+', 1, level)) as ma_nhom_tai_khoan
                                                 from dual
                                                 connect by level <= regexp_count(p_ma_nhom_tai_khoan, ',')+1)
                        or p_ma_nhom_tai_khoan = 'TAT_CA')
                 and cv.thoi_gian_them_cong_viec between decode(p_ngay_them_1, 'TAT_CA', cv.thoi_gian_them_cong_viec, to_date(p_ngay_them_1, 'dd/mm/yyyy HH24:MI:SS'))
                                                       and decode(p_ngay_them_1, 'TAT_CA', cv.thoi_gian_them_cong_viec, to_date(p_ngay_them_2, 'dd/mm/yyyy HH24:MI:SS'))
                 and (to_char(cv.ma_muc_do_uu_tien) in (select trim(regexp_substr(p_muc_do_uu_tien, '[^,]+', 1, level)) as muc_do_uu_tien_muc_do
                                                  from dual
                                                  connect by level <= regexp_count(p_muc_do_uu_tien, ',')+1)
                         or p_muc_do_uu_tien = 'TAT_CA')
                 and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
                 and cv.thoi_gian_ket_thuc_cong_viec <= decode(p_trang_thai_cong_viec, 'TRE_HAN', sysdate, cv.thoi_gian_ket_thuc_cong_viec)
           order by cv.thoi_gian_ket_thuc_cong_viec) rs;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_HOAN_THANH_TRE_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_HOAN_THANH_TRE_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv,
              tai_khoan_trong_nhom tktn   
         where (to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy')
                   or to_char(cv.thoi_gian_ket_thuc_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy') 
                   or (cv.thoi_gian_bat_dau_cong_viec < sysdate and cv.thoi_gian_ket_thuc_cong_viec > sysdate))                                     
               and ((cv.ma_trang_thai_cong_viec in (1, 2) and cv.thoi_gian_ket_thuc_cong_viec < sysdate)
                   or (cv.ma_trang_thai_cong_viec = 3 and cv.thoi_gian_ket_thuc_cong_viec < nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv)))
               and tktn.ma_tai_khoan = p_ma_tai_khoan
               and cv.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan;     
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_TOI_DG_CHAT_LUONG_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_TOI_DG_CHAT_LUONG_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv   
         where cv.ma_tai_khoan_dg_chat_luong = p_ma_tai_khoan
               and cv.diem_chat_luong is null
               and cv.ma_trang_thai_cong_viec < 4;
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_TOI_DG_THAI_DO_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_TOI_DG_THAI_DO_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv   
         where cv.ma_tai_khoan_dg_thai_do = p_ma_tai_khoan
               and cv.diem_thai_do is null
               and cv.ma_trang_thai_cong_viec < 4;
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_CV_TOI_HOAN_THANH_TRE_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_CV_TOI_HOAN_THANH_TRE_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select cv.ma_cong_viec,
                cv.ten_cong_viec,
                cv.ti_le_hoan_thanh_cong_viec
         from cong_viec cv
         where (to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy')
                   or to_char(cv.thoi_gian_ket_thuc_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy') 
                   or (cv.thoi_gian_bat_dau_cong_viec < sysdate and cv.thoi_gian_ket_thuc_cong_viec > sysdate))                                     
               and ((cv.ma_trang_thai_cong_viec in (1, 2) and cv.thoi_gian_ket_thuc_cong_viec < sysdate)
                   or (cv.ma_trang_thai_cong_viec = 3 and cv.thoi_gian_ket_thuc_cong_viec < nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv)))
               and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan;
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_DO_UU_TIEN
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DO_UU_TIEN"
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select mdut.ma_muc_do_uu_tien,
         mdut.muc_do_uu_tien
  from muc_do_uu_tien mdut
  order by mdut.ma_muc_do_uu_tien;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_DO_UU_TIEN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DO_UU_TIEN_W"
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select mdut.ma_muc_do_uu_tien,
         mdut.muc_do_uu_tien
  from muc_do_uu_tien mdut
  order by mdut.ma_muc_do_uu_tien;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_DU_AN_THEO_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DU_AN_THEO_TAI_KHOAN"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select distinct da.ma_du_an,
         da.ten_du_an
  from du_an_don_vi_yeu_cau dadvyc,
       du_an da,
       tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and dadvyc.hoat_dong_dadvyc = 1   -- Con hoat dong
        and tktn.hoat_dong_tktn = 1
        and dadvyc.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan
        and dadvyc.ma_du_an = da.ma_du_an
  order by da.ten_du_an;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_DU_AN_THEO_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DU_AN_THEO_TAI_KHOAN_W"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select distinct da.ma_du_an,
         da.ten_du_an
  from du_an_don_vi_yeu_cau dadvyc,
       du_an da,
       tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and dadvyc.hoat_dong_dadvyc = 1   -- Con hoat dong
        and tktn.hoat_dong_tktn = 1
        and dadvyc.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan
        and dadvyc.ma_du_an = da.ma_du_an
  order by da.ten_du_an;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_DVYC_THEO_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DVYC_THEO_TAI_KHOAN"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select dvyc.ma_don_vi_yeu_cau,
         dvyc.ten_don_vi_yeu_cau
  from du_an_don_vi_yeu_cau dadvyc,
       tai_khoan_trong_nhom tktn,
       don_vi_yeu_cau dvyc
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and dadvyc.hoat_dong_dadvyc = 1
        and tktn.hoat_dong_tktn = 1
        and dadvyc.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan
        and dadvyc.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau
  order by dvyc.ten_don_vi_yeu_cau;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_DVYC_THEO_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_DVYC_THEO_TAI_KHOAN_W"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select distinct dvyc.ma_don_vi_yeu_cau,
         dvyc.ten_don_vi_yeu_cau
  from du_an_don_vi_yeu_cau dadvyc,
       tai_khoan_trong_nhom tktn,
       don_vi_yeu_cau dvyc
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and dadvyc.hoat_dong_dadvyc = 1
        and tktn.hoat_dong_tktn = 1
        and dadvyc.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan
        and dadvyc.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau
  order by dvyc.ten_don_vi_yeu_cau;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_MA_TAI_KHOAN_TRONG_NHOM
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_MA_TAI_KHOAN_TRONG_NHOM"
(
       p_ma_nhom_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tk.ma_tai_khoan
  from tai_khoan_trong_nhom tk
  where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tk.hoat_dong_tktn = 1;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_MA_TK_TRONG_NHOM_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_MA_TK_TRONG_NHOM_W"
(
       p_ma_nhom_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tk.ma_tai_khoan
  from tai_khoan_trong_nhom tk
  where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tk.hoat_dong_tktn = 1;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_NGUOI_THAM_DINH_THEO_CV
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_NGUOI_THAM_DINH_THEO_CV"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tktd.ma_tai_khoan_tham_dinh,
         tk.ten_hien_thi
  from cong_viec cv,
       tai_khoan_trong_nhom tkn,
       tai_khoan tk,
       tai_khoan_tham_dinh tktd
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_tai_khoan_tham_dinh = tktd.ma_tai_khoan_tham_dinh;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_NHOM_THEO_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_NHOM_THEO_TAI_KHOAN"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select ntk.ma_nhom_tai_khoan,
         ntk.ten_nhom_tai_khoan
  from nhom_tai_khoan ntk,
       tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
  order by ntk.ten_nhom_tai_khoan;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_NHOM_THEO_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_NHOM_THEO_TAI_KHOAN_W"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select ntk.ma_nhom_tai_khoan,
         ntk.ten_nhom_tai_khoan
  from nhom_tai_khoan ntk,
       tai_khoan_trong_nhom tktn
  where tktn.ma_tai_khoan = p_ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
  order by ntk.ten_nhom_tai_khoan;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TAI_KHOAN"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
  open v_result for
       select ma_tai_khoan,
              ten_hien_thi,
              to_char(ma_nhom_tk) as ma_nhom_tk
       from
       (select ntk.ma_nhom_tai_khoan as ma_tai_khoan,
               ntk.ten_nhom_tai_khoan as ten_hien_thi,
               tkn.ma_nhom_tai_khoan as ma_nhom_tk
       from nhom_tai_khoan ntk,
            tai_khoan_trong_nhom tkn
       where tkn.hoat_dong_tktn = 1
            and tkn.ma_tai_khoan = p_ma_tai_khoan
            and ntk.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
       order by ntk.ten_nhom_tai_khoan) a
       union all
       select ma_tai_khoan,
              ten_hien_thi,
              listagg(ma_nhom_tk, ',') WITHIN GROUP (ORDER BY ma_nhom_tk) as ma_nhom_tk
       from
       (select distinct tk.ma_tai_khoan,
              tk.ten_hien_thi,
              tkn.ma_nhom_tai_khoan as ma_nhom_tk           
       from tai_khoan tk,
            tai_khoan_trong_nhom tkn,
            tai_khoan_trong_nhom tkn2,
            nhom_tai_khoan ntk2
       where tkn.ma_tai_khoan = p_ma_tai_khoan
             and tkn.hoat_dong_tktn = 1
             and tkn2.hoat_dong_tktn = 1
             and tkn.ma_nhom_tai_khoan = tkn2.ma_nhom_tai_khoan
             and tkn2.ma_tai_khoan = tk.ma_tai_khoan
             and tkn2.ma_nhom_tai_khoan = ntk2.ma_nhom_tai_khoan
             and ntk2.ten_nhom_tai_khoan != tk.ten_hien_thi
       order by tk.ten_hien_thi) b
       group by b.ma_tai_khoan,
             b.ten_hien_thi;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_TAI_KHOAN_TRONG_NHOM
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TAI_KHOAN_TRONG_NHOM"
(
       p_ma_nhom_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tk.ma_tai_khoan,
         tk.ten_hien_thi
  from tai_khoan_trong_nhom tktn,
       tai_khoan tk
  where tktn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and tktn.ma_tai_khoan = tk.ma_tai_khoan;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_TAI_KHOAN_TRONG_NHOM_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TAI_KHOAN_TRONG_NHOM_W"
(
       p_ma_nhom_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tk.ma_tai_khoan,
         tk.ten_hien_thi
  from tai_khoan_trong_nhom tktn,
       tai_khoan tk
  where tktn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tktn.hoat_dong_tktn = 1
        and tktn.ma_tai_khoan = tk.ma_tai_khoan;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TAI_KHOAN_W"
(
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
  open v_result for
       select ma_tai_khoan,
              ten_hien_thi,
              to_char(ma_nhom_tk) as ma_nhom_tk
       from
       (select ntk.ma_nhom_tai_khoan as ma_tai_khoan,
               ntk.ten_nhom_tai_khoan as ten_hien_thi,
               tkn.ma_nhom_tai_khoan as ma_nhom_tk
       from nhom_tai_khoan ntk,
            tai_khoan_trong_nhom tkn
       where tkn.hoat_dong_tktn = 1
            and tkn.ma_tai_khoan = p_ma_tai_khoan
            and ntk.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
       order by ntk.ten_nhom_tai_khoan) a
       union all
       select ma_tai_khoan,
              ten_hien_thi,
              listagg(ma_nhom_tk, ',') WITHIN GROUP (ORDER BY ma_nhom_tk) as ma_nhom_tk
       from
       (select distinct tk.ma_tai_khoan,
              tk.ten_hien_thi,
              tkn.ma_nhom_tai_khoan as ma_nhom_tk           
       from tai_khoan tk,
            tai_khoan_trong_nhom tkn,
            tai_khoan_trong_nhom tkn2,
            nhom_tai_khoan ntk2
       where tkn.ma_tai_khoan = p_ma_tai_khoan
             and tkn.hoat_dong_tktn = 1
             and tkn2.hoat_dong_tktn = 1
             and tkn.ma_nhom_tai_khoan = tkn2.ma_nhom_tai_khoan
             and tkn2.ma_tai_khoan = tk.ma_tai_khoan
             and tkn2.ma_nhom_tai_khoan = ntk2.ma_nhom_tai_khoan
             and ntk2.ten_nhom_tai_khoan != tk.ten_hien_thi
       order by tk.ten_hien_thi) b
       group by b.ma_tai_khoan,
             b.ten_hien_thi;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_TAI_KHOAN_XU_LY_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TAI_KHOAN_XU_LY_W"
(
       p_ma_nhom_tai_khoan varchar2,
       p_ma_tai_khoan varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
 v_cap_nhan_vien number;
begin
  select nv.cap_nhan_vien into v_cap_nhan_vien
  from nhan_vien nv,
       tai_khoan tk
  where tk.ma_tai_khoan = p_ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien; 

  open v_result for
  select distinct tk.ma_tai_khoan,
         tk.ten_hien_thi
  from tai_khoan_trong_nhom tktn,
       tai_khoan tk,
       nhan_vien nv
  where tktn.ma_nhom_tai_khoan = decode(p_ma_nhom_tai_khoan, 'TAT_CA', tktn.ma_nhom_tai_khoan, p_ma_nhom_tai_khoan)
        and (nv.cap_nhan_vien < v_cap_nhan_vien or tk.ma_tai_khoan = p_ma_tai_khoan)
        and tktn.hoat_dong_tktn = 1
        and tktn.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
  group by tk.ma_tai_khoan,
        tk.ten_hien_thi;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_THAM_DINH_THEO_CV_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_THAM_DINH_THEO_CV_W"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tktd.ma_tai_khoan_tham_dinh,
         tk.ten_hien_thi
  from cong_viec cv,
       tai_khoan_trong_nhom tkn,
       tai_khoan tk,
       tai_khoan_tham_dinh tktd
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_tai_khoan_tham_dinh = tktd.ma_tai_khoan_tham_dinh;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_TK_THAM_DINH_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TK_THAM_DINH_W"
(
       p_ma_nhom_tai_khoan varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select distinct tktd.ma_tai_khoan_tham_dinh,
         tk2.ten_hien_thi
  from tai_khoan_trong_nhom tkn,
       tai_khoan tk,
       tai_khoan tk2,
       nhan_vien nv,
       nhan_vien nv2,
       tai_khoan_xu_ly tkxl,
       tai_khoan_tham_dinh tktd
  where tkxl.ma_tai_khoan_xu_ly = decode(p_ma_tai_khoan_xu_ly, 'TAT_CA', tkxl.ma_tai_khoan_xu_ly, p_ma_tai_khoan_xu_ly)
        and tkxl.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
  
        and tkn.ma_nhom_tai_khoan = decode(p_ma_nhom_tai_khoan, 'TAT_CA', tkn.ma_nhom_tai_khoan, p_ma_nhom_tai_khoan)
        and tktd.ma_tai_khoan = tkn.ma_tai_khoan
        and tktd.ma_tai_khoan = tk2.ma_tai_khoan
        and tk2.ma_nhan_vien = nv2.ma_nhan_vien
        and nv2.cap_nhan_vien >0;
        --and (nv2.cap_nhan_vien > nv.cap_nhan_vien or nv2.cap_nhan_vien >0);

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_DS_TRANG_THAI_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TRANG_THAI_CONG_VIEC"
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tt.ma_trang_thai_cong_viec,
         tt.ten_trang_thai_cong_viec
  from trang_thai_cong_viec tt;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_DS_TRANG_THAI_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "LAY_DS_TRANG_THAI_CONG_VIEC_W"
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
  select tt.ma_trang_thai_cong_viec,
         tt.ten_trang_thai_cong_viec
  from trang_thai_cong_viec tt;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_GIA_TRI_THIET_LAP_W
-- ----------------------------
CREATE OR REPLACE function "LAY_GIA_TRI_THIET_LAP_W"
(
       p_ma_thiet_lap in varchar2,
       p_ma_tai_khoan in varchar2
)
return sys_refcursor
is
 v_result_cusor sys_refcursor;
 v_gia_tri_thiet_lap varchar2(200) default null;
begin
  begin
  select tl.gia_tri_thiet_lap into v_gia_tri_thiet_lap
  from tai_khoan_thiet_lap tl
  where tl.ma_thiet_lap = p_ma_thiet_lap
        and tl.ma_tai_khoan = p_ma_tai_khoan;
  exception when no_data_found then v_gia_tri_thiet_lap := null;
  end;
  
  if v_gia_tri_thiet_lap is null then
       select tl.gia_tri_ban_dau into v_gia_tri_thiet_lap
       from thiet_lap tl
       where tl.ma_thiet_lap = p_ma_thiet_lap;
  end if;
  
  open v_result_cusor for
  select v_gia_tri_thiet_lap as gia_tri_thiet_lap
  from dual; 

  return v_result_cusor;
end;
/

-- ----------------------------
-- Function structure for LAY_LICH_SU_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "LAY_LICH_SU_CONG_VIEC"
(
       p_ma_cong_viec in varchar2,
       p_stt_lich_su_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select ls.stt_lich_su_cong_viec,
         to_char(ls.thoi_gian_them_lscv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_lscv,
         tk.ten_hien_thi || ' đã cập nhật:' || ls.mo_ta_lich_su_cong_viec as mo_ta_lich_su_cong_viec,
         (select max(ls1.stt_lich_su_cong_viec) 
             from lich_su_cong_viec ls1
             where ls1.ma_cong_viec = p_ma_cong_viec) as stt_lich_su_cong_viec_max
  from lich_su_cong_viec ls,
       tai_khoan_lich_su tkls,
       tai_khoan tk
  where ls.ma_cong_viec = p_ma_cong_viec
        and ls.ma_tai_khoan_lich_su = tkls.ma_tai_khoan_lich_su
        and tkls.ma_tai_khoan = tk.ma_tai_khoan
        and ls.stt_lich_su_cong_viec = p_stt_lich_su_cong_viec;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_LICH_SU_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "LAY_LICH_SU_CONG_VIEC_W"
(
       p_ma_cong_viec in varchar2,
       p_stt_lich_su_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select ls.stt_lich_su_cong_viec,
         to_char(ls.thoi_gian_them_lscv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_lscv,
         tk.ten_hien_thi || ' đã cập nhật:' || ls.mo_ta_lich_su_cong_viec as mo_ta_lich_su_cong_viec,
         (select max(ls1.stt_lich_su_cong_viec) 
             from lich_su_cong_viec ls1
             where ls1.ma_cong_viec = p_ma_cong_viec) as stt_lich_su_cong_viec_max
  from lich_su_cong_viec ls,
       tai_khoan_lich_su tkls,
       tai_khoan tk
  where ls.ma_cong_viec = p_ma_cong_viec
        and ls.ma_tai_khoan_lich_su = tkls.ma_tai_khoan_lich_su
        and tkls.ma_tai_khoan = tk.ma_tai_khoan
        and ls.stt_lich_su_cong_viec = p_stt_lich_su_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CONG_VIEC_CUA_TOI_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CONG_VIEC_CUA_TOI_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec = 2
               --or (cv.ma_trang_thai_cong_viec = 3
               --   and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0))
              -- or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_chat_luong, -1) = -1))
                --     or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_thai_do, -1) = -1))
               )
               and nvl(cv.ma_tai_khoan_xu_ly, -1) = p_ma_tai_khoan;           
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CONG_VIEC_LIEN_QUAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CONG_VIEC_LIEN_QUAN_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec in (1, 2)
               --or (cv.ma_trang_thai_cong_viec = 3
               --    and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0))
               --or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_chat_luong, -1) = -1))
               --      or (cv.ma_trang_thai_cong_viec < 4 and (nvl(cv.diem_thai_do, -1) = -1))
               )
               and nvl(cv.ma_tai_khoan, -1) = p_ma_tai_khoan
               and nvl(cv.ma_tai_khoan_xu_ly, -1) != p_ma_tai_khoan;           
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CONG_VIEC_THAM_DINH_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CONG_VIEC_THAM_DINH_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv   
         where (cv.ma_trang_thai_cong_viec in (1, 2)
               or (cv.ma_trang_thai_cong_viec = 3
                  and decode(cv.tham_dinh_thoi_gian_ht_cv, null, cv.ma_tai_khoan_tham_dinh, -1) = nvl(cv.ma_tai_khoan_tham_dinh, 0)))
               and nvl(cv.ma_tai_khoan_tham_dinh, -1) = p_ma_tai_khoan;         
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CV_HOAN_THANH_TRE_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CV_HOAN_THANH_TRE_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv,
              tai_khoan_trong_nhom tktn  
         where (to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy')
                   or to_char(cv.thoi_gian_ket_thuc_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy') 
                   or (cv.thoi_gian_bat_dau_cong_viec < sysdate and cv.thoi_gian_ket_thuc_cong_viec > sysdate)) 
               and ((cv.ma_trang_thai_cong_viec in (1, 2) and cv.thoi_gian_ket_thuc_cong_viec < sysdate)
                   or (cv.ma_trang_thai_cong_viec = 3 and cv.thoi_gian_ket_thuc_cong_viec < nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv)))
               and tktn.ma_tai_khoan = p_ma_tai_khoan
               and cv.ma_nhom_tai_khoan = tktn.ma_nhom_tai_khoan;      
               
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CV_TOI_DG_CHAT_LUONG_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CV_TOI_DG_CHAT_LUONG_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv   
         where cv.ma_tai_khoan_dg_chat_luong = p_ma_tai_khoan
               and cv.diem_chat_luong is null
               and cv.ma_trang_thai_cong_viec < 4;
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CV_TOI_DG_THAI_DO_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CV_TOI_DG_THAI_DO_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv   
         where cv.ma_tai_khoan_dg_thai_do = p_ma_tai_khoan
               and cv.diem_thai_do is null
               and cv.ma_trang_thai_cong_viec < 4;
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_SL_CV_TOI_HOAN_THANH_TRE_W
-- ----------------------------
CREATE OR REPLACE function "LAY_SL_CV_TOI_HOAN_THANH_TRE_W"
(
       p_ma_tai_khoan varchar2             -- Session
)
return sys_refcursor
is
  v_result sys_refcursor;
begin
    open v_result for 
         select count(*) as SO_LUONG_CONG_VIEC
         from cong_viec cv
         where (to_char(cv.thoi_gian_bat_dau_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy')
                   or to_char(cv.thoi_gian_ket_thuc_cong_viec, 'mm/yyyy') = to_char(sysdate, 'mm/yyyy') 
                   or (cv.thoi_gian_bat_dau_cong_viec < sysdate and cv.thoi_gian_ket_thuc_cong_viec > sysdate)) 
               and ((cv.ma_trang_thai_cong_viec in (1, 2) and cv.thoi_gian_ket_thuc_cong_viec < sysdate)
                   or (cv.ma_trang_thai_cong_viec = 3 and cv.thoi_gian_ket_thuc_cong_viec < nvl(cv.tham_dinh_thoi_gian_ht_cv, cv.thoi_gian_hoan_thanh_cv)))
               and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan;                 
               
  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_TAI_KHOAN_XU_LY_CV
-- ----------------------------
CREATE OR REPLACE function "LAY_TAI_KHOAN_XU_LY_CV"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
       select cv.ma_tai_khoan_xu_ly
       from cong_viec cv
       where cv.ma_cong_viec = p_ma_cong_viec;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_TAI_KHOAN_XU_LY_CV_W
-- ----------------------------
CREATE OR REPLACE function "LAY_TAI_KHOAN_XU_LY_CV_W"
(
       p_ma_cong_viec varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
begin
  open v_result for
       select cv.ma_tai_khoan_xu_ly
       from cong_viec cv
       where cv.ma_cong_viec = p_ma_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_THONG_TIN_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "LAY_THONG_TIN_CONG_VIEC"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select cv.ten_cong_viec,   -- 0
         tk.ten_hien_thi as ten_tai_khoan_so_huu,  -- 1
         mdut.muc_do_uu_tien,  -- 2
         ntk.ten_nhom_tai_khoan,  -- 3
         to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_cong_viec,  -- 4
         to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_cong_viec,  -- 5
         to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_cong_viec,  -- 6
         cv.ti_le_hoan_thanh_cong_viec,  -- 7
         to_char(cv.thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hoan_thanh_cv,
         ttcv.ma_trang_thai_cong_viec,
         ttcv.ten_trang_thai_cong_viec,  -- 8
         to_char(cv.thoi_gian_xu_ly, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_xu_ly,  -- 9
         nvl(tkxl.ten_hien_thi, '') as ten_tai_khoan_xu_ly,  -- 10
         cv.noi_dung_cong_viec,  -- 11
         tk.ma_tai_khoan as ma_tai_khoan,  -- 12
         nvl(tkxl.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly, -- 13
         dvyc.ten_don_vi_yeu_cau,  -- 14
         to_char(sysdate, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hien_tai,
         nvl(cv.ma_cong_viec_cha, '') as ma_cong_viec_cha,
         cv.ma_nhom_tai_khoan,
         (select count(*) from cong_viec cv2 where cv2.ma_cong_viec_cha = p_ma_cong_viec) as so_luong_cong_viec_con,
         nvl(cv.ma_tai_khoan_tham_dinh, '') as ma_tai_khoan_tham_dinh,
         nvl(tktd.ten_hien_thi, '') as ten_tai_khoan_tham_dinh,
         decode(cv.tham_dinh_da_hoan_thanh_cv, 1, 'Đã hoàn thành', 0, 'Chưa hoàn thành', '') as tham_dinh_da_hoan_thanh_cv,
         to_char(cv.tham_dinh_thoi_gian_ht_cv, 'dd/mm/yyyy HH24:MI:SS') as tham_dinh_thoi_gian_ht_cv,
         nvl(cv.tong_thoi_gian_cong_viec, '') as tong_thoi_gian_cong_viec
  from cong_viec cv
       left outer join tai_khoan tkxl on cv.ma_tai_khoan_xu_ly = tkxl.ma_tai_khoan_xu_ly
       left outer join tai_khoan tktd on cv.ma_tai_khoan_tham_dinh = tktd.ma_tai_khoan_tham_dinh,
       tai_khoan tk,
       nhom_tai_khoan ntk,
       muc_do_uu_tien mdut,
       don_vi_yeu_cau dvyc,
       du_an da,
       trang_thai_cong_viec ttcv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_cong_viec = cv.ma_cong_viec
        and cv.ma_tai_khoan = tk.ma_tai_khoan
        and cv.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
        and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
        and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau
        and cv.ma_trang_thai_cong_viec = ttcv.ma_trang_thai_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_THONG_TIN_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "LAY_THONG_TIN_CONG_VIEC_W"
(
       p_ma_cong_viec in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

  open v_result for
  select cv.ten_cong_viec,   -- 0
         tk.ten_hien_thi as ten_tai_khoan_so_huu,  -- 1
         mdut.muc_do_uu_tien,  -- 2
         ntk.ten_nhom_tai_khoan,  -- 3
         to_char(cv.thoi_gian_them_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_them_cong_viec,  -- 4
         to_char(cv.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_bat_dau_cong_viec,  -- 5
         to_char(cv.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_ket_thuc_cong_viec,  -- 6
         cv.ti_le_hoan_thanh_cong_viec,  -- 7
         to_char(cv.thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hoan_thanh_cv,
         ttcv.ma_trang_thai_cong_viec,
         ttcv.ten_trang_thai_cong_viec,  -- 8
         to_char(cv.thoi_gian_xu_ly, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_xu_ly,  -- 9
         nvl(tkxl.ten_hien_thi, '') as ten_tai_khoan_xu_ly,  -- 10
         cv.noi_dung_cong_viec,  -- 11
         tk.ma_tai_khoan as ma_tai_khoan,  -- 12
         nvl(tkxl.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly, -- 13
         dvyc.ten_don_vi_yeu_cau,  -- 14
         to_char(sysdate, 'dd/mm/yyyy HH24:MI:SS') as thoi_gian_hien_tai,
         nvl(cv.ma_cong_viec_cha, '') as ma_cong_viec_cha,
         cv.ma_nhom_tai_khoan,
         (select count(*) from cong_viec cv2 where cv2.ma_cong_viec_cha = p_ma_cong_viec) as so_luong_cong_viec_con,
         nvl(cv.ma_tai_khoan_tham_dinh, '') as ma_tai_khoan_tham_dinh,
         nvl(tktd.ten_hien_thi, '') as ten_tai_khoan_tham_dinh,
         decode(cv.tham_dinh_da_hoan_thanh_cv, 1, 'Đã hoàn thành', 0, 'Chưa hoàn thành', '') as tham_dinh_da_hoan_thanh_cv,
         to_char(cv.tham_dinh_thoi_gian_ht_cv, 'dd/mm/yyyy HH24:MI:SS') as tham_dinh_thoi_gian_ht_cv,
         nvl(cv.tong_thoi_gian_cong_viec, '') as tong_thoi_gian_cong_viec
  from cong_viec cv
       left outer join tai_khoan tkxl on cv.ma_tai_khoan_xu_ly = tkxl.ma_tai_khoan_xu_ly
       left outer join tai_khoan tktd on cv.ma_tai_khoan_tham_dinh = tktd.ma_tai_khoan_tham_dinh,
       tai_khoan tk,
       nhom_tai_khoan ntk,
       muc_do_uu_tien mdut,
       don_vi_yeu_cau dvyc,
       du_an da,
       trang_thai_cong_viec ttcv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_cong_viec = cv.ma_cong_viec
        and cv.ma_tai_khoan = tk.ma_tai_khoan
        and cv.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
        and cv.ma_muc_do_uu_tien = mdut.ma_muc_do_uu_tien
        and cv.ma_don_vi_yeu_cau = dvyc.ma_don_vi_yeu_cau
        and cv.ma_trang_thai_cong_viec = ttcv.ma_trang_thai_cong_viec;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LAY_THONG_TIN_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "LAY_THONG_TIN_TAI_KHOAN"
(
       p_ma_tai_khoan in varchar2
) 
return sys_refcursor
is
  v_result sys_refcursor;
begin
  
  open v_result for
  select tk.ten_truy_cap,
         tk.ten_hien_thi,
         nv.ten_nhan_vien,
         pt.ten_phong_to,
         dv.ten_don_vi,
         listagg(ntk.ten_nhom_tai_khoan, '*nl*') WITHIN GROUP (ORDER BY ntk.ten_nhom_tai_khoan asc) as ds_nhom_tai_khoan
  from tai_khoan tk,
       tai_khoan_trong_nhom tktn,
       nhom_tai_khoan ntk,
       nhan_vien nv,
       phong_to pt,
       don_vi dv
  where tk.ma_tai_khoan = p_ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
        and nv.ma_phong_to = pt.ma_phong_to
        and pt.ma_don_vi = dv.ma_don_vi
        and tk.ma_tai_khoan = tktn.ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
  group by tk.ten_truy_cap,
         tk.ten_hien_thi,
         nv.ten_nhan_vien,
         pt.ten_phong_to,
         dv.ten_don_vi;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for LAY_THONG_TIN_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "LAY_THONG_TIN_TAI_KHOAN_W"
(
       p_ma_tai_khoan in varchar2
) 
return sys_refcursor
is
  v_result sys_refcursor;
begin
  
  open v_result for
  select tk.ten_truy_cap,
         tk.ten_hien_thi,
         nv.ten_nhan_vien,
         pt.ten_phong_to,
         dv.ten_don_vi,
         listagg(ntk.ten_nhom_tai_khoan, '*nl*') WITHIN GROUP (ORDER BY ntk.ten_nhom_tai_khoan asc) as ds_nhom_tai_khoan
  from tai_khoan tk,
       tai_khoan_trong_nhom tktn,
       nhom_tai_khoan ntk,
       nhan_vien nv,
       phong_to pt,
       don_vi dv
  where tk.ma_tai_khoan = p_ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
        and nv.ma_phong_to = pt.ma_phong_to
        and pt.ma_don_vi = dv.ma_don_vi
        and tk.ma_tai_khoan = tktn.ma_tai_khoan
        and tktn.ma_nhom_tai_khoan = ntk.ma_nhom_tai_khoan
  group by tk.ten_truy_cap,
         tk.ten_hien_thi,
         nv.ten_nhan_vien,
         pt.ten_phong_to,
         dv.ten_don_vi;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for LUU_NGUOI_THAM_DINH_CV
-- ----------------------------
CREATE OR REPLACE function "LUU_NGUOI_THAM_DINH_CV"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan_tham_dinh varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
 v_tk_tham_dinh_thuoc_nhom_cv integer(1);
 v_cv_chua_co_tk_tham_dinh integer(1);
begin
  select count(tk.ma_tai_khoan) into v_tk_tham_dinh_thuoc_nhom_cv
  from tai_khoan tk,
       tai_khoan_trong_nhom tkn,
       cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and tk.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
        and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan;
        
  select count(*) into v_cv_chua_co_tk_tham_dinh
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_tham_dinh is null;

  if v_tk_tham_dinh_thuoc_nhom_cv > 0 and  v_cv_chua_co_tk_tham_dinh > 0 then
     update cong_viec cv
     set cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
     where cv.ma_cong_viec = p_ma_cong_viec;
  end if;
  
  if v_tk_tham_dinh_thuoc_nhom_cv = 0 then
       open v_result for
       select '' as ma_cong_viec,
              '' as ma_tai_khoan_xu_ly,
              'Tài khoản được thêm không chung nhóm tài khoản của công việc!' as thong_bao
       from dual;
  elsif v_cv_chua_co_tk_tham_dinh = 0 then
       open v_result for
       select '' as ma_cong_viec,
              '' as ma_tai_khoan_xu_ly,
              'Không thể thêm người thẩm định vì công việc đã có người thẩm định!' as thong_bao
       from dual;
  else
       open v_result for
       select cv.ma_cong_viec as ma_cong_viec,
              nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
              'Công việc: ' || cv.ten_cong_viec || ' đã được thêm người thẩm định!' as thong_bao
       from cong_viec cv
       where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;
end;


/

-- ----------------------------
-- Function structure for LUU_NGUOI_THAM_DINH_CV_W
-- ----------------------------
CREATE OR REPLACE function "LUU_NGUOI_THAM_DINH_CV_W"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan_tham_dinh varchar2
)
return sys_refcursor
is
 v_result sys_refcursor;
 v_tk_tham_dinh_thuoc_nhom_cv integer(1);
 v_cv_chua_co_tk_tham_dinh integer(1);
begin
  select count(tk.ma_tai_khoan) into v_tk_tham_dinh_thuoc_nhom_cv
  from tai_khoan tk,
       tai_khoan_trong_nhom tkn,
       cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and tk.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
        and cv.ma_nhom_tai_khoan = tkn.ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan;
        
  select count(*) into v_cv_chua_co_tk_tham_dinh
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_tham_dinh is null;

  if v_tk_tham_dinh_thuoc_nhom_cv > 0 and  v_cv_chua_co_tk_tham_dinh > 0 then
     update cong_viec cv
     set cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
     where cv.ma_cong_viec = p_ma_cong_viec;
  end if;
  
  if v_tk_tham_dinh_thuoc_nhom_cv = 0 then
       open v_result for
       select '' as ma_cong_viec,
              '' as ma_tai_khoan_xu_ly,
              'Tài khoản được thêm không chung nhóm tài khoản của công việc!' as thong_bao
       from dual;
  elsif v_cv_chua_co_tk_tham_dinh = 0 then
       open v_result for
       select '' as ma_cong_viec,
              '' as ma_tai_khoan_xu_ly,
              'Không thể thêm người thẩm định vì công việc đã có người thẩm định!' as thong_bao
       from dual;
  else
       open v_result for
       select cv.ma_cong_viec as ma_cong_viec,
              nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
              'Công việc: ' || cv.ten_cong_viec || ' đã được thêm người thẩm định!' as thong_bao
       from cong_viec cv
       where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for NHAN_XU_LY_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "NHAN_XU_LY_CONG_VIEC"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_ma_tai_khoan_xu_ly varchar2(50);
  v_quyen_nhan_xu_ly integer default 0;
begin

begin
  select cv.ma_tai_khoan_xu_ly into v_ma_tai_khoan_xu_ly
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec;

  exception when no_data_found then v_ma_tai_khoan_xu_ly := null;
end;

  if v_ma_tai_khoan_xu_ly is null then  -- Cong viec chua co nguoi xu ly
    v_quyen_nhan_xu_ly := KT_TK_TRONG_NHOM_CUA_CV(p_ma_tai_khoan_xu_ly, p_ma_cong_viec);
  
    if v_quyen_nhan_xu_ly > 0 then
      update cong_viec cv
      set cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly,
          cv.ma_trang_thai_cong_viec = 2,
          cv.thoi_gian_xu_ly = sysdate
      where cv.ma_cong_viec = p_ma_cong_viec;

      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan,
                  'Công việc: ' || cv.ten_cong_viec || ' đã được nhận xử lý!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    else
      open v_result for
         select 'Bạn không thuộc nhóm của công việc này!' as thong_bao
         from dual;
    end if;
  else  -- Cong viec da co nguoi xu ly
    open v_result for
         select 'Công việc đã có người xử lý hoặc đã bị xóa!' as thong_bao
         from dual;
  end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for NHAN_XU_LY_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "NHAN_XU_LY_CONG_VIEC_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_ma_tai_khoan_xu_ly varchar2(50);
  v_quyen_nhan_xu_ly integer default 0;
begin

begin
  select cv.ma_tai_khoan_xu_ly into v_ma_tai_khoan_xu_ly
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec;

  exception when no_data_found then v_ma_tai_khoan_xu_ly := null;
end;

  if v_ma_tai_khoan_xu_ly is null then  -- Cong viec chua co nguoi xu ly
    v_quyen_nhan_xu_ly := KT_TK_TRONG_NHOM_CUA_CV(p_ma_tai_khoan_xu_ly, p_ma_cong_viec);
  
    if v_quyen_nhan_xu_ly > 0 then
      update cong_viec cv
      set cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly,
          cv.ma_trang_thai_cong_viec = 2,
          cv.thoi_gian_xu_ly = sysdate
      where cv.ma_cong_viec = p_ma_cong_viec;

      open v_result for
           select p_ma_cong_viec as ma_cong_viec,
                  cv.ma_tai_khoan as ma_tai_khoan,
                  'Công việc: ' || cv.ten_cong_viec || ' đã được nhận xử lý!' as thong_bao
           from cong_viec cv
           where cv.ma_cong_viec = p_ma_cong_viec;
    else
      open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không thuộc nhóm của công việc này!' as thong_bao
         from dual;
    end if;
  else  -- Cong viec da co nguoi xu ly
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Công việc đã có người xử lý hoặc đã bị xóa!' as thong_bao
         from dual;
  end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for SUA_GIAI_DOAN
-- ----------------------------
CREATE OR REPLACE function "SUA_GIAI_DOAN"
(
       p_ma_cong_viec varchar2,
       p_stt_giai_doan varchar2,
       p_ten_giai_doan varchar2,
       p_noi_dung_giai_doan varchar2,
       p_thoi_gian_bat_dau_giai_doan varchar2,
       p_thoi_gian_ket_thuc_giai_doan varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_thoi_gian_bat_dau_giai_doan date default to_date(p_thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_thoi_gian_ket_thuc_giai_doan date default to_date(p_thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_quyen_sua_giai_doan integer default 0;
       v_thoi_gian_bat_dau_cong_viec date; -- Ngay bat dau GD phai sau ngay bat dau CV
       v_thoi_gian_ket_thuc_cong_viec date; -- Ngay ket thuc GD phai truoc ngay ket thuc CV
begin
  select count(*) into v_quyen_sua_giai_doan
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

  if v_quyen_sua_giai_doan > 0 then -- Duoc phep sua giai doan, doi voi nguoi xu ly  
    select cv.thoi_gian_bat_dau_cong_viec,
           cv.thoi_gian_ket_thuc_cong_viec
           	into v_thoi_gian_bat_dau_cong_viec,
                    v_thoi_gian_ket_thuc_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;       
 
    -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
    if v_thoi_gian_bat_dau_cong_viec <= v_thoi_gian_bat_dau_giai_doan
         	and v_thoi_gian_ket_thuc_giai_doan <= v_thoi_gian_ket_thuc_cong_viec then
         update giai_doan gd
         set gd.ten_giai_doan = p_ten_giai_doan,
             gd.noi_dung_giai_doan = p_noi_dung_giai_doan,
             gd.thoi_gian_bat_dau_giai_doan = v_thoi_gian_bat_dau_giai_doan,
             gd.thoi_gian_ket_thuc_giai_doan = v_thoi_gian_ket_thuc_giai_doan,
             gd.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
         where gd.ma_cong_viec = p_ma_cong_viec
               and gd.stt_giai_doan = p_stt_giai_doan;
    end if;  -- So sanh thoi gian
  end if; -- Kiem tra quyen them GD

  -- Tra ket qua
  if v_quyen_sua_giai_doan = 0 then  
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không phải người xử lý công việc này!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_bat_dau_giai_doan then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày bắt đầu của giai đoạn phải sau ngày bắt đầu của công việc!' as thong_bao
         from dual;  
  elsif v_thoi_gian_ket_thuc_giai_doan > v_thoi_gian_ket_thuc_cong_viec then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày kết thúc của giai đoạn phải trước ngày kết thúc của công việc!' as thong_bao
         from dual; 
  else   
    open v_result for
         select p_ma_cong_viec as ma_cong_viec,  
                cv.ma_tai_khoan,              
                'Giai đoạn ' || p_stt_giai_doan || ' của công việc: ' || cv.ten_cong_viec || ' đã được cập nhật!' as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;

end;

















/

-- ----------------------------
-- Function structure for SUA_GIAI_DOAN_W
-- ----------------------------
CREATE OR REPLACE function "SUA_GIAI_DOAN_W"
(
       p_ma_cong_viec varchar2,
       p_stt_giai_doan varchar2,
       p_ten_giai_doan varchar2,
       p_noi_dung_giai_doan varchar2,
       p_thoi_gian_bat_dau_giai_doan varchar2,
       p_thoi_gian_ket_thuc_giai_doan varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_thoi_gian_bat_dau_giai_doan date default to_date(p_thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_thoi_gian_ket_thuc_giai_doan date default to_date(p_thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_quyen_sua_giai_doan integer default 0;
       v_thoi_gian_bat_dau_cong_viec date; -- Ngay bat dau GD phai sau ngay bat dau CV
       v_thoi_gian_ket_thuc_cong_viec date; -- Ngay ket thuc GD phai truoc ngay ket thuc CV
begin
  select count(*) into v_quyen_sua_giai_doan
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

  if v_quyen_sua_giai_doan > 0 then -- Duoc phep sua giai doan, doi voi nguoi xu ly  
    select cv.thoi_gian_bat_dau_cong_viec,
           cv.thoi_gian_ket_thuc_cong_viec
           	into v_thoi_gian_bat_dau_cong_viec,
                    v_thoi_gian_ket_thuc_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;       
 
    -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
    if v_thoi_gian_bat_dau_cong_viec <= v_thoi_gian_bat_dau_giai_doan
         	and v_thoi_gian_ket_thuc_giai_doan <= v_thoi_gian_ket_thuc_cong_viec then
         update giai_doan gd
         set gd.ten_giai_doan = p_ten_giai_doan,
             gd.noi_dung_giai_doan = p_noi_dung_giai_doan,
             gd.thoi_gian_bat_dau_giai_doan = v_thoi_gian_bat_dau_giai_doan,
             gd.thoi_gian_ket_thuc_giai_doan = v_thoi_gian_ket_thuc_giai_doan,
             gd.ma_tai_khoan_lich_su = p_ma_tai_khoan_xu_ly
         where gd.ma_cong_viec = p_ma_cong_viec
               and gd.stt_giai_doan = p_stt_giai_doan;
    end if;  -- So sanh thoi gian
  end if; -- Kiem tra quyen them GD

  -- Tra ket qua
  if v_quyen_sua_giai_doan = 0 then  
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không phải người xử lý công việc này!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_bat_dau_giai_doan then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày bắt đầu của giai đoạn phải sau ngày bắt đầu của công việc!' as thong_bao
         from dual;  
  elsif v_thoi_gian_ket_thuc_giai_doan > v_thoi_gian_ket_thuc_cong_viec then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày kết thúc của giai đoạn phải trước ngày kết thúc của công việc!' as thong_bao
         from dual; 
  else   
    open v_result for
         select p_ma_cong_viec as ma_cong_viec,  
                cv.ma_tai_khoan,              
                'Giai đoạn ' || p_stt_giai_doan || ' của công việc: ' || cv.ten_cong_viec || ' đã được cập nhật!' as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;

end;
/

-- ----------------------------
-- Function structure for SUA_TAI_KHOAN_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "SUA_TAI_KHOAN_CONG_VIEC"  -- Trang thai cong viec: THEM,
(
       p_ma_cong_viec varchar2,
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_du_an varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_tai_khoan_sua varchar2,
       p_tong_thoi_gian_cong_viec varchar2  -- so luong phut
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
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan = p_ma_tai_khoan_sua;  

  if v_quyen_sua_cong_viec > 0 then
    select count(*) into v_ton_tai_ten_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec != p_ma_cong_viec
        and cv.ten_cong_viec = p_ten_cong_viec;   
        
    if v_ton_tai_ten_cong_viec = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then  
          select nvl(min(gd.thoi_gian_bat_dau_giai_doan), v_thoi_gian_bat_dau_cong_viec) 
                 into v_min_thoi_gian_bat_dau_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;
          
          select nvl(max(gd.thoi_gian_ket_thuc_giai_doan), v_thoi_gian_ket_thuc_cong_viec) 
                 into v_max_thoi_gian_ket_thuc_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;

          if p_tong_thoi_gian_cong_viec <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
            v_kiem_tra_tong_thoi_gian := 1;
          end if;

         -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
         if v_thoi_gian_bat_dau_cong_viec <= v_min_thoi_gian_bat_dau_gd
               and v_max_thoi_gian_ket_thuc_gd <= v_thoi_gian_ket_thuc_cong_viec
               and v_kiem_tra_tong_thoi_gian = 1 then
               update cong_viec cv
               set cv.ten_cong_viec = p_ten_cong_viec,
                  cv.noi_dung_cong_viec = p_noi_dung_cong_viec,
                  cv.ma_muc_do_uu_tien = p_ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau = p_ma_don_vi_yeu_cau,
                  cv.thoi_gian_bat_dau_cong_viec = v_thoi_gian_bat_dau_cong_viec,
                  cv.thoi_gian_ket_thuc_cong_viec = v_thoi_gian_ket_thuc_cong_viec,
                  cv.ma_du_an = p_ma_du_an,
                  cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_sua,
                  cv.tong_thoi_gian_cong_viec = p_tong_thoi_gian_cong_viec
               where cv.ma_cong_viec = p_ma_cong_viec;
                        
               v_da_cap_nhat_cong_viec := 1;
         end if; -- So sanh thoi gian
    end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra quyen sua cong viec

  if v_da_cap_nhat_cong_viec = 1 then
     open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
                'Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật!' as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  elsif v_ton_tai_ten_cong_viec > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Tên công việc đã tồn tại! Vui lòng chọn tên khác!' as thong_bao
         from dual;
  elsif v_quyen_sua_cong_viec = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Bạn không có quyền sửa công việc này!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec > v_min_thoi_gian_bat_dau_gd then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày bắt đầu của công việc phải trước ngày bắt đầu của các giai đoạn!' as thong_bao
         from dual; 
  elsif v_max_thoi_gian_ket_thuc_gd > v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày kết thúc của công việc phải sau ngày kết thúc của các giai đoạn!' as thong_bao
         from dual;
  elsif v_kiem_tra_tong_thoi_gian = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual;   
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Không sửa được công việc!' as thong_bao
         from dual;    
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Function structure for SUA_TAI_KHOAN_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "SUA_TAI_KHOAN_CONG_VIEC_W"  -- Trang thai cong viec: THEM,
(
       p_ma_cong_viec varchar2,
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_du_an varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_tai_khoan_sua varchar2,
       p_tong_thoi_gian_cong_viec varchar2  -- so luong phut
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
  v_tong_thoi_gian number default to_number(p_tong_thoi_gian_cong_viec) * 60;  -- So phut
begin
  select count(*) into v_quyen_sua_cong_viec
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan = p_ma_tai_khoan_sua
        and nvl(cv.tham_dinh_da_hoan_thanh_cv, 0) = 0;

  if v_quyen_sua_cong_viec > 0 then
    select count(*) into v_ton_tai_ten_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec != p_ma_cong_viec
        and cv.ten_cong_viec = p_ten_cong_viec;   
        
    if v_ton_tai_ten_cong_viec = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then  
          select nvl(min(gd.thoi_gian_bat_dau_giai_doan), v_thoi_gian_bat_dau_cong_viec) 
                 into v_min_thoi_gian_bat_dau_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;
          
          select nvl(max(gd.thoi_gian_ket_thuc_giai_doan), v_thoi_gian_ket_thuc_cong_viec) 
                 into v_max_thoi_gian_ket_thuc_gd
          from giai_doan gd
          where gd.ma_cong_viec = p_ma_cong_viec;

          if v_tong_thoi_gian <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
            v_kiem_tra_tong_thoi_gian := 1;
          end if;

         -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
         if v_thoi_gian_bat_dau_cong_viec <= v_min_thoi_gian_bat_dau_gd
               and v_max_thoi_gian_ket_thuc_gd <= v_thoi_gian_ket_thuc_cong_viec
               and v_kiem_tra_tong_thoi_gian = 1 then
               update cong_viec cv
               set cv.ten_cong_viec = p_ten_cong_viec,
                  cv.noi_dung_cong_viec = p_noi_dung_cong_viec,
                  cv.ma_muc_do_uu_tien = p_ma_muc_do_uu_tien,
                  cv.ma_don_vi_yeu_cau = p_ma_don_vi_yeu_cau,
                  cv.thoi_gian_bat_dau_cong_viec = v_thoi_gian_bat_dau_cong_viec,
                  cv.thoi_gian_ket_thuc_cong_viec = v_thoi_gian_ket_thuc_cong_viec,
                  cv.ma_du_an = p_ma_du_an,
                  cv.ma_tai_khoan_lich_su = p_ma_tai_khoan_sua,
                  cv.tong_thoi_gian_cong_viec = v_tong_thoi_gian
               where cv.ma_cong_viec = p_ma_cong_viec;
                        
               v_da_cap_nhat_cong_viec := 1;
         end if; -- So sanh thoi gian
    end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra quyen sua cong viec

  if v_da_cap_nhat_cong_viec = 1 then
     open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                nvl(cv.ma_tai_khoan_xu_ly, '') as ma_tai_khoan_xu_ly,
                'Công việc: ' || cv.ten_cong_viec || ' đã được cập nhật!' as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  elsif v_ton_tai_ten_cong_viec > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Tên công việc đã tồn tại! Vui lòng chọn tên khác!' as thong_bao
         from dual;
  elsif v_quyen_sua_cong_viec = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Bạn không thể sửa công việc đã được thẩm định hoàn thành!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual; 
  elsif v_thoi_gian_bat_dau_cong_viec > v_min_thoi_gian_bat_dau_gd then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày bắt đầu của công việc phải trước ngày bắt đầu của các giai đoạn!' as thong_bao
         from dual; 
  elsif v_max_thoi_gian_ket_thuc_gd > v_thoi_gian_ket_thuc_cong_viec then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Ngày kết thúc của công việc phải sau ngày kết thúc của các giai đoạn!' as thong_bao
         from dual;
  elsif v_kiem_tra_tong_thoi_gian = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual;   
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_xu_ly,
                'Không sửa được công việc!' as thong_bao
         from dual;    
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Function structure for THAM_DINH_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "THAM_DINH_CONG_VIEC"
(
       p_ma_cong_viec in varchar2,
       p_da_hoan_thanh_cong_viec in varchar2,
       p_thoi_gian_hoan_thanh_cv in varchar2,
       p_ma_tai_khoan_tham_dinh in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_thoi_gian_hoan_thanh_cv date default to_date(p_thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI:SS');
  v_ngay_ht_sau_ngay_bd integer(1) default 0;
begin
  select count(*) into v_ngay_ht_sau_ngay_bd
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
       and cv.thoi_gian_bat_dau_cong_viec < v_thoi_gian_hoan_thanh_cv;
  
  if v_ngay_ht_sau_ngay_bd = 1 then
    if p_da_hoan_thanh_cong_viec = '1' then
         update cong_viec cv
         set cv.tham_dinh_da_hoan_thanh_cv = 1,
             cv.tham_dinh_thoi_gian_ht_cv = v_thoi_gian_hoan_thanh_cv,
             cv.ma_trang_thai_cong_viec = 3,
             cv.ti_le_hoan_thanh_cong_viec = 100,
             cv.thoi_gian_hoan_thanh_cv = decode(cv.thoi_gian_hoan_thanh_cv, null, sysdate, cv.thoi_gian_hoan_thanh_cv)
         where cv.ma_cong_viec = p_ma_cong_viec
               and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
    else
        update cong_viec cv
        set cv.tham_dinh_da_hoan_thanh_cv = 0,
            cv.tham_dinh_thoi_gian_ht_cv = null,
            cv.thoi_gian_hoan_thanh_cv = null,
            cv.ti_le_hoan_thanh_cong_viec = 95,
            cv.ma_trang_thai_cong_viec = 2
        where cv.ma_cong_viec = p_ma_cong_viec
              and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
    end if;  
  end if;

  if v_ngay_ht_sau_ngay_bd = 0 then
    open v_result for
    select '' as ma_cong_viec,
          '' as ma_tai_khoan,
          '' as ma_tai_khoan_xu_ly,
          'Ngày hoàn thành không thể trước ngày bắt đầu công việc!' as thong_bao
    from dual;
  else
    open v_result for
    select p_ma_cong_viec as ma_cong_viec,
          cv.ma_tai_khoan as ma_tai_khoan,
          cv.ma_tai_khoan_xu_ly as ma_tai_khoan_xu_ly,
          'Công việc: ' || cv.ten_cong_viec || ' đã được thẩm định!' as thong_bao
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for THAM_DINH_CONG_VIEC_DUNG_HAN_W
-- ----------------------------
CREATE OR REPLACE function "THAM_DINH_CONG_VIEC_DUNG_HAN_W"
(
       p_chuoi_ma_cong_viec in varchar2,
       p_ma_tai_khoan_tham_dinh in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
begin       
  update cong_viec cv
  set cv.tham_dinh_da_hoan_thanh_cv = 1,
      cv.tham_dinh_thoi_gian_ht_cv = cv.thoi_gian_ket_thuc_cong_viec,
      cv.ma_trang_thai_cong_viec = 3,
      cv.ti_le_hoan_thanh_cong_viec = 100,
      cv.thoi_gian_hoan_thanh_cv = decode(cv.thoi_gian_hoan_thanh_cv, null, sysdate, cv.thoi_gian_hoan_thanh_cv)
  where instr(p_chuoi_ma_cong_viec, ',' || cv.ma_cong_viec || ',') > 0  
        and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
    
  if sql%rowcount > 0 then
      open v_result for
           select p_chuoi_ma_cong_viec as ma_cong_viec,
                  p_ma_tai_khoan_tham_dinh as ma_tai_khoan, 
                  'Đã thẩm định đúng hạn!' as thong_bao
           from dual;
    else      
         open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan, 
                'Bạn không phải là người thẩm định những công việc này!' as thong_bao
         from dual;       
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for THAM_DINH_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "THAM_DINH_CONG_VIEC_W"
(
       p_ma_cong_viec in varchar2,
       p_da_hoan_thanh_cong_viec in varchar2,
       p_thoi_gian_hoan_thanh_cv in varchar2,
       p_ma_tai_khoan_tham_dinh in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_thoi_gian_hoan_thanh_cv date default to_date(p_thoi_gian_hoan_thanh_cv, 'dd/mm/yyyy HH24:MI:SS');
  v_ngay_ht_sau_ngay_bd integer(1) default 1;
begin
  
    if p_da_hoan_thanh_cong_viec = '1' then
          select count(*) into v_ngay_ht_sau_ngay_bd
          from cong_viec cv
          where cv.ma_cong_viec = p_ma_cong_viec
            and cv.thoi_gian_bat_dau_cong_viec < v_thoi_gian_hoan_thanh_cv
            and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;     
    
         if v_ngay_ht_sau_ngay_bd = 1 then
              update cong_viec cv
              set cv.tham_dinh_da_hoan_thanh_cv = 1,
                  cv.tham_dinh_thoi_gian_ht_cv = v_thoi_gian_hoan_thanh_cv,
                  cv.ma_trang_thai_cong_viec = 3,
                  cv.ti_le_hoan_thanh_cong_viec = 100,
                  cv.thoi_gian_hoan_thanh_cv = decode(cv.thoi_gian_hoan_thanh_cv, null, sysdate, cv.thoi_gian_hoan_thanh_cv)
              where cv.ma_cong_viec = p_ma_cong_viec
                    and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
         end if;
    else
        update cong_viec cv
        set cv.tham_dinh_da_hoan_thanh_cv = 0,
            cv.tham_dinh_thoi_gian_ht_cv = null,
            cv.thoi_gian_hoan_thanh_cv = null,
            cv.ti_le_hoan_thanh_cong_viec = 95,
            cv.ma_trang_thai_cong_viec = 2
        where cv.ma_cong_viec = p_ma_cong_viec
              and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
    end if;  

  if v_ngay_ht_sau_ngay_bd = 0 then
    open v_result for
    select '' as ma_cong_viec,
          '' as ma_tai_khoan,
          '' as ma_tai_khoan_xu_ly,
          'Ngày hoàn thành không thể trước ngày bắt đầu công việc hoặc bạn không phải là người thẩm định!' as thong_bao
    from dual;
  else
    open v_result for
    select p_ma_cong_viec as ma_cong_viec,
          cv.ma_tai_khoan as ma_tai_khoan,
          cv.ma_tai_khoan_xu_ly as ma_tai_khoan_xu_ly,
          'Công việc: ' || cv.ten_cong_viec || ' đã được thẩm định!' as thong_bao
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for THAM_DINH_DUNG_TONG_TG_W
-- ----------------------------
CREATE OR REPLACE function "THAM_DINH_DUNG_TONG_TG_W"
(
       p_chuoi_ma_cong_viec in varchar2,
       p_ma_tai_khoan_tham_dinh in varchar2    
)
return sys_refcursor
is
  v_result sys_refcursor;
begin

   update cong_viec cv
   set cv.tham_dinh_tong_thoi_gian = cv.tong_thoi_gian_cong_viec
   where instr(p_chuoi_ma_cong_viec, ',' || cv.ma_cong_viec || ',') > 0
         and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;

    if sql%rowcount > 0 then
         open v_result for
         select p_chuoi_ma_cong_viec as ma_cong_viec,
               'Đã thẩm định lại tổng thời gian!' as thong_bao
         from dual;
    else
         open v_result for
         select '' as ma_cong_viec,
               'Bạn không phải là người thẩm định những công việc này!' as thong_bao
         from dual;
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for THAM_DINH_TONG_THOI_GIAN_W
-- ----------------------------
CREATE OR REPLACE function "THAM_DINH_TONG_THOI_GIAN_W"
(
       p_ma_cong_viec in varchar2,
       p_ma_tai_khoan_tham_dinh in varchar2,
       p_tong_thoi_gian in varchar2       
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
  v_tong_thoi_gian number default to_number(p_tong_thoi_gian) * 60;  -- So phut
begin
    select case when v_tong_thoi_gian <= (cv.thoi_gian_ket_thuc_cong_viec - cv.thoi_gian_bat_dau_cong_viec) * 24 *60 then 1 else 0 end into v_kiem_tra_tong_thoi_gian
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;

    if v_kiem_tra_tong_thoi_gian = 1 then
         update cong_viec cv
         set cv.tham_dinh_tong_thoi_gian = v_tong_thoi_gian
         where cv.ma_cong_viec = p_ma_cong_viec
               and cv.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh;
    end if;

  if v_kiem_tra_tong_thoi_gian = 0 then
    open v_result for
    select '' as ma_cong_viec,
          'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
    from dual;
  else
    open v_result for
    select p_ma_cong_viec as ma_cong_viec,
          'Công việc: ' || cv.ten_cong_viec || ' đã được thẩm định lại tổng thời gian!' as thong_bao
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for THEM_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "THEM_CONG_VIEC"  -- Trang thai cong viec: THEM,
(
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_ma_du_an varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_ma_nhom_tai_khoan varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor  
as
  v_result_cur sys_refcursor;  
  v_ma_cong_viec_moi number default null;
  v_kiem_tra_tk_trong_nhom integer default 0; 
  v_kiem_tra_tk_xu_ly_trong_nhom integer default 1;    -- Mac dinh la tai khoan da o trong nhom
  v_kiem_tra_cv_da_ton_tai integer default 0; 
  v_kiem_tra_cv_cha_chung_nhom integer default 1;  -- Mac dinh la cong viec cha chung nhom
  v_kiem_tra_cap_nhan_vien integer default 1; -- Cap nhan vien phai > cap nhan vien duoc giao viec
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
begin
  if p_ma_cong_viec_cha != 'null' then
     select count(*) into v_kiem_tra_cv_cha_chung_nhom
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec_cha	
           and cv.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
  end if;
  -- Kiem tra tai khoan co trong nhom hay khong
  v_kiem_tra_tk_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan,  p_ma_nhom_tai_khoan);
  
  if p_ma_tai_khoan_xu_ly != 'null' then
       v_kiem_tra_tk_xu_ly_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan_xu_ly,  p_ma_nhom_tai_khoan);
       v_kiem_tra_cap_nhan_vien := kiem_tra_cap_nv_giao_viec(p_ma_tai_khoan, p_ma_tai_khoan_xu_ly);
  end if;

  if v_kiem_tra_tk_trong_nhom = 1 and v_kiem_tra_tk_xu_ly_trong_nhom = 1 and v_kiem_tra_cv_cha_chung_nhom = 1 and v_kiem_tra_cap_nhan_vien = 1 then 
      v_kiem_tra_cv_da_ton_tai := KIEM_TRA_CV_DA_TON_TAI(p_ten_cong_viec);
      
      if v_kiem_tra_cv_da_ton_tai = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then
           select nvl(max(ma_cong_viec), 0) + 1 into v_ma_cong_viec_moi
           from cong_viec;

           insert into cong_viec(ma_cong_viec, ma_tai_khoan, ma_trang_thai_cong_viec, ma_cong_viec_cha, ma_tai_khoan_xu_ly, ma_muc_do_uu_tien, ma_don_vi_yeu_cau, ma_du_an, ma_nhom_tai_khoan, ten_cong_viec, thoi_gian_them_cong_viec, thoi_gian_bat_dau_cong_viec, thoi_gian_ket_thuc_cong_viec, noi_dung_cong_viec, thoi_gian_xu_ly, thoi_gian_hoan_thanh_cv, ti_le_hoan_thanh_cong_viec, ma_tai_khoan_lich_su)
           select v_ma_cong_viec_moi as ma_cong_viec, 
                  p_ma_tai_khoan as ma_tai_khoan, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', 1, 2) as ma_trang_thai_cong_viec, 
                  decode(p_ma_cong_viec_cha, 'null', null, p_ma_cong_viec_cha) as ma_cong_viec_cha, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, p_ma_tai_khoan_xu_ly) as ma_tai_khoan_xu_ly, 
                  p_ma_muc_do_uu_tien as ma_muc_do_uu_tien, 
                  p_ma_don_vi_yeu_cau as ma_don_vi_yeu_cau, 
                  p_ma_du_an as ma_du_an,
                  p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                  p_ten_cong_viec as ten_cong_viec, 
                  sysdate as thoi_gian_them_cong_viec, 
                  v_thoi_gian_bat_dau_cong_viec as thoi_gian_bat_dau_cong_viec, 
                  v_thoi_gian_ket_thuc_cong_viec as thoi_gian_ket_thuc_cong_viec, 
                  p_noi_dung_cong_viec as noi_dung_cong_viec, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, sysdate) as thoi_gian_xu_ly, 
                  null as thoi_gian_hoan_thanh_cv, 
                  0 as ti_le_hoan_thanh_cong_viec,
                  p_ma_tai_khoan as ma_tai_khoan
           from dual;
      end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra tai khoan trong nhom

  -- Tra ve ket qua
  if (v_ma_cong_viec_moi is not null) then  
    open v_result_cur for
         select v_ma_cong_viec_moi as ma_cong_viec,
                p_ten_cong_viec as ten_cong_viec,
                p_ma_tai_khoan as ma_tai_khoan_so_huu,
                nvl(p_ma_tai_khoan_xu_ly, 0) as ma_tai_khoan_xu_ly,
                p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                'MOI' as ma_trang_thai_cong_viec,
                'Công việc: ' || p_ten_cong_viec || ' đã được thêm' as thong_bao
         from dual;
  elsif v_kiem_tra_tk_trong_nhom = 0 then
    open v_result_cur for
         select '' as ma_cong_viec, 
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tài khoản hiện tại không thể thêm công việc trong nhóm này!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_da_ton_tai = 1 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tên công việc đã tồn tại!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tk_xu_ly_trong_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản xử lý không thuộc nhóm đã chọn!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_cha_chung_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhánh công việc mới phải chung nhóm với công việc gốc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_cap_nhan_vien = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Không thể giao việc cho người cấp trên hoặc cùng cấp với bạn!' as thong_bao
         from dual;          
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
               'Không thêm được công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;

















/

-- ----------------------------
-- Function structure for THEM_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "THEM_CONG_VIEC_W"  -- Trang thai cong viec: THEM,
(
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_ma_du_an varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_ma_nhom_tai_khoan varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_tong_thoi_gian varchar2,
       p_ma_tai_khoan_tham_dinh varchar2
)
return sys_refcursor  
as
  v_result_cur sys_refcursor;  
  v_ma_cong_viec_moi number default null;
  v_kiem_tra_tk_trong_nhom integer default 0; 
  v_kiem_tra_tk_xu_ly_trong_nhom integer default 1;    -- Mac dinh la tai khoan da o trong nhom
  v_kiem_tra_cv_da_ton_tai integer default 0; 
  v_kiem_tra_cv_cha_chung_nhom integer default 1;  -- Mac dinh la cong viec cha chung nhom
  v_kiem_tra_cap_nhan_vien integer default 1; -- Cap nhan vien phai > cap nhan vien duoc giao viec
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec || ':00', 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec || ':00'  , 'dd/mm/yyyy HH24:MI:SS');
  v_tk_tham_dinh_thuoc_nhom_cv number;
  v_tong_thoi_gian number default to_number(p_tong_thoi_gian) * 60;  -- So phut
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
  v_ma_tk_danh_gia_chat_luong integer default 0;
  v_ma_tk_danh_gia_thai_do integer default 0;
  v_kiem_tra_tk_tham_dinh number;
begin   
  if p_ma_cong_viec_cha != 'null' then
     select count(*) into v_kiem_tra_cv_cha_chung_nhom
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec_cha	
           and cv.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
  end if;
  
  if v_tong_thoi_gian <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
    v_kiem_tra_tong_thoi_gian := 1;
  end if;
  
  -- Kiem tra tai khoan co trong nhom hay khong
  v_kiem_tra_tk_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan,  p_ma_nhom_tai_khoan);
  
  if p_ma_tai_khoan_xu_ly != 'null' then
       v_kiem_tra_tk_xu_ly_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan_xu_ly,  p_ma_nhom_tai_khoan);
       v_kiem_tra_cap_nhan_vien := kiem_tra_cap_nv_giao_viec(p_ma_tai_khoan, p_ma_tai_khoan_xu_ly);
  end if;
  
  select count(tk.ma_tai_khoan) into v_tk_tham_dinh_thuoc_nhom_cv
  from tai_khoan tk,
       tai_khoan_trong_nhom tkn,
       cong_viec cv,
       nhan_vien nv
  where tk.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
        and tkn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
        and (nv.cap_nhan_vien > (select nv2.cap_nhan_vien 
                                    from nhan_vien nv2, tai_khoan tk2
                                    where tk2.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
                                          and tk2.ma_nhan_vien = nv2.ma_nhan_vien
                                          and rownum = 1)
             or p_ma_tai_khoan_xu_ly = p_ma_tai_khoan_tham_dinh);

  if v_kiem_tra_tk_trong_nhom = 1 and v_kiem_tra_tk_xu_ly_trong_nhom = 1 and v_kiem_tra_cv_cha_chung_nhom = 1 and v_kiem_tra_cap_nhan_vien = 1 and v_tk_tham_dinh_thuoc_nhom_cv > 0 and v_tong_thoi_gian > 0 and v_kiem_tra_tong_thoi_gian = 1 then 
      v_kiem_tra_cv_da_ton_tai := KIEM_TRA_CV_DA_TON_TAI(p_ten_cong_viec);
      
      if v_kiem_tra_cv_da_ton_tai = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then
           begin
                select tk.ma_tai_khoan into v_ma_tk_danh_gia_chat_luong
                from tai_khoan_dg_chat_luong_nhom tk
                where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;     
           
                select tk.ma_tai_khoan into v_ma_tk_danh_gia_thai_do
                from tai_khoan_dg_thai_do_cua_nhom tk
                where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
                
                exception when no_data_found then null;
           end;
           
           if v_ma_tk_danh_gia_chat_luong != 0 and v_ma_tk_danh_gia_thai_do != 0 then
                select nvl(max(ma_cong_viec), 0) + 1 into v_ma_cong_viec_moi
                from cong_viec;

                v_kiem_tra_tk_tham_dinh := KIEM_TRA_TK_THAM_DINH_W(p_ma_nhom_tai_khoan, p_ma_tai_khoan_xu_ly, p_ma_tai_khoan_tham_dinh);

                if v_kiem_tra_tk_tham_dinh > 0 then
                     insert into cong_viec(ma_cong_viec, ma_tai_khoan, ma_trang_thai_cong_viec, ma_cong_viec_cha, ma_tai_khoan_xu_ly, ma_muc_do_uu_tien, ma_don_vi_yeu_cau, ma_du_an, ma_nhom_tai_khoan, ten_cong_viec, thoi_gian_them_cong_viec, thoi_gian_bat_dau_cong_viec, thoi_gian_ket_thuc_cong_viec, noi_dung_cong_viec, thoi_gian_xu_ly, thoi_gian_hoan_thanh_cv, ti_le_hoan_thanh_cong_viec, ma_tai_khoan_lich_su, ma_tai_khoan_tham_dinh, tong_thoi_gian_cong_viec, ma_tai_khoan_dg_chat_luong, ma_tai_khoan_dg_thai_do)
                     select v_ma_cong_viec_moi as ma_cong_viec, 
                            p_ma_tai_khoan as ma_tai_khoan, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', 1, 2) as ma_trang_thai_cong_viec, 
                            decode(p_ma_cong_viec_cha, 'null', null, p_ma_cong_viec_cha) as ma_cong_viec_cha, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', null, p_ma_tai_khoan_xu_ly) as ma_tai_khoan_xu_ly, 
                            p_ma_muc_do_uu_tien as ma_muc_do_uu_tien, 
                            p_ma_don_vi_yeu_cau as ma_don_vi_yeu_cau, 
                            p_ma_du_an as ma_du_an,
                            p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                            p_ten_cong_viec as ten_cong_viec, 
                            sysdate as thoi_gian_them_cong_viec, 
                            v_thoi_gian_bat_dau_cong_viec as thoi_gian_bat_dau_cong_viec, 
                            v_thoi_gian_ket_thuc_cong_viec as thoi_gian_ket_thuc_cong_viec, 
                            p_noi_dung_cong_viec as noi_dung_cong_viec, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', null, sysdate) as thoi_gian_xu_ly, 
                            null as thoi_gian_hoan_thanh_cv, 
                            0 as ti_le_hoan_thanh_cong_viec,
                            p_ma_tai_khoan as ma_tai_khoan,
                            p_ma_tai_khoan_tham_dinh as ma_tai_khoan_tham_dinh,
                            v_tong_thoi_gian as tong_thoi_gian_cong_viec,
                            v_ma_tk_danh_gia_chat_luong as ma_tai_khoan_dg_chat_luong,
                            v_ma_tk_danh_gia_thai_do as ma_tai_khoan_dg_thai_do
                     from dual;
                end if;
           end if; -- Kiem tra tai khoan danh gia chat luong va thai do
      end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra tai khoan trong nhom

  -- Tra ve ket qua
  if (v_ma_cong_viec_moi is not null) then  
    open v_result_cur for
         select v_ma_cong_viec_moi as ma_cong_viec,
                p_ten_cong_viec as ten_cong_viec,
                p_ma_tai_khoan as ma_tai_khoan_so_huu,
                nvl(p_ma_tai_khoan_xu_ly, 0) as ma_tai_khoan_xu_ly,
                p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                'MOI' as ma_trang_thai_cong_viec,
                'Công việc: ' || p_ten_cong_viec || ' đã được thêm' as thong_bao
         from dual;
  elsif v_kiem_tra_tk_trong_nhom = 0 then
    open v_result_cur for
         select '' as ma_cong_viec, 
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tài khoản hiện tại không thể thêm công việc trong nhóm này!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_da_ton_tai = 1 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tên công việc đã tồn tại!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tk_xu_ly_trong_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản xử lý không thuộc nhóm đã chọn!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_cha_chung_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhánh công việc mới phải chung nhóm với công việc gốc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_cap_nhan_vien = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Không thể giao việc cho người cấp trên hoặc cùng cấp với bạn!' as thong_bao
         from dual;
  elsif v_tk_tham_dinh_thuoc_nhom_cv = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản thẩm định phải nằm trong nhóm đã được chọn!' as thong_bao
         from dual; 
  elsif v_tong_thoi_gian <= 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tổng thời gian phải lớn hơn 0!' as thong_bao
         from dual; 
  elsif v_kiem_tra_tong_thoi_gian = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual; 
  elsif v_ma_tk_danh_gia_chat_luong = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhóm đã chọn không có tài khoản kiểm tra chất lượng công việc!' as thong_bao
         from dual; 
  elsif v_ma_tk_danh_gia_thai_do = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhóm đã chọn không có tài khoản kiểm tra thái độ đối với công việc!' as thong_bao
         from dual;
   elsif v_kiem_tra_tk_tham_dinh = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản thẩm định không hợp lệ (phải là Tổ Trưởng, Tổ Phó, Phó Giám Đốc hoặc Giám đốc trung tâm)!' as thong_bao
         from dual;
   else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
               'Không thêm được công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Function structure for THEM_GHI_CHU_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "THEM_GHI_CHU_CONG_VIEC"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_noi_dung_ghi_chu_cong_viec varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_stt_ghi_chu_cong_viec integer;
       v_quyen_them_ghi_chu integer default 0;
       
       v_ma_tai_khoan number;
       v_ma_tai_khoan_xu_ly number;
       v_thong_bao varchar2(300);
begin

  v_quyen_them_ghi_chu :=  KT_TK_TRONG_NHOM_CUA_CV(p_ma_tai_khoan, p_ma_cong_viec); 
        
  if v_quyen_them_ghi_chu > 0 then  -- Tai khoan trong nhom co quyen them ghi chu
    select nvl(max(gc.stt_ghi_chu_cong_viec), 0) + 1 into v_stt_ghi_chu_cong_viec
    from ghi_chu_cong_viec gc
    where gc.ma_cong_viec = p_ma_cong_viec;
        
    insert into ghi_chu_cong_viec(ma_cong_viec, ma_tai_khoan, stt_ghi_chu_cong_viec, noi_dung_ghi_chu_cong_viec, thoi_gian_them_ghi_chu_cv)
    values(p_ma_cong_viec, p_ma_tai_khoan, v_stt_ghi_chu_cong_viec, p_noi_dung_ghi_chu_cong_viec, sysdate); 
  end if;
  
  -- Tra ket qua
  if v_quyen_them_ghi_chu > 0 then
    select cv.ma_tai_khoan, 
           cv.ma_tai_khoan_xu_ly, 
           'Công việc: ' || cv.ten_cong_viec || ' đã được thêm ghi chú!' 
                 into v_ma_tai_khoan, v_ma_tai_khoan_xu_ly, v_thong_bao
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    open v_result for
         select distinct ma_cong_viec,
                ma_tai_khoan_ghi_chu,
                thong_bao
         from
         (select distinct p_ma_cong_viec as ma_cong_viec,
                gc.ma_tai_khoan as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from ghi_chu_cong_viec gc
         where gc.ma_cong_viec = p_ma_cong_viec
         union all
         select distinct p_ma_cong_viec as ma_cong_viec,
                v_ma_tai_khoan as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from dual
         union all 
         select distinct p_ma_cong_viec as ma_cong_viec,
                v_ma_tai_khoan_xu_ly as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from dual
         where v_ma_tai_khoan_xu_ly is not null) result_table;
  else
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_ghi_chu,
                'Bạn không được phép thêm ghi chú vì không thuộc nhóm của công việc này!' as thong_bao
         from dual;
  end if;
  return v_result;

end;

















/

-- ----------------------------
-- Function structure for THEM_GHI_CHU_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "THEM_GHI_CHU_CONG_VIEC_W"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_noi_dung_ghi_chu_cong_viec varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_stt_ghi_chu_cong_viec integer;
       v_quyen_them_ghi_chu integer default 0;
       
       v_ma_tai_khoan number;
       v_ma_tai_khoan_xu_ly number;
       v_thong_bao varchar2(300);
begin

  v_quyen_them_ghi_chu :=  KT_TK_TRONG_NHOM_CUA_CV(p_ma_tai_khoan, p_ma_cong_viec); 
        
  if v_quyen_them_ghi_chu > 0 then  -- Tai khoan trong nhom co quyen them ghi chu
    select nvl(max(gc.stt_ghi_chu_cong_viec), 0) + 1 into v_stt_ghi_chu_cong_viec
    from ghi_chu_cong_viec gc
    where gc.ma_cong_viec = p_ma_cong_viec;
        
    insert into ghi_chu_cong_viec(ma_cong_viec, ma_tai_khoan, stt_ghi_chu_cong_viec, noi_dung_ghi_chu_cong_viec, thoi_gian_them_ghi_chu_cv)
    values(p_ma_cong_viec, p_ma_tai_khoan, v_stt_ghi_chu_cong_viec, p_noi_dung_ghi_chu_cong_viec, sysdate); 
  end if;
  
  -- Tra ket qua
  if v_quyen_them_ghi_chu > 0 then
    select cv.ma_tai_khoan, 
           cv.ma_tai_khoan_xu_ly, 
           'Công việc: ' || cv.ten_cong_viec || ' đã được thêm ghi chú!' 
                 into v_ma_tai_khoan, v_ma_tai_khoan_xu_ly, v_thong_bao
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    open v_result for
         select distinct ma_cong_viec,
                ma_tai_khoan_ghi_chu,
                thong_bao
         from
         (select distinct p_ma_cong_viec as ma_cong_viec,
                gc.ma_tai_khoan as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from ghi_chu_cong_viec gc
         where gc.ma_cong_viec = p_ma_cong_viec
         union all
         select distinct p_ma_cong_viec as ma_cong_viec,
                v_ma_tai_khoan as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from dual
         union all 
         select distinct p_ma_cong_viec as ma_cong_viec,
                v_ma_tai_khoan_xu_ly as ma_tai_khoan_ghi_chu,
                v_thong_bao as thong_bao
         from dual
         where v_ma_tai_khoan_xu_ly is not null) result_table;
  else
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan_ghi_chu,
                'Bạn không được phép thêm ghi chú vì không thuộc nhóm của công việc này!' as thong_bao
         from dual;
  end if;
  return v_result;

end;
/

-- ----------------------------
-- Function structure for THEM_GIAI_DOAN
-- ----------------------------
CREATE OR REPLACE function "THEM_GIAI_DOAN"
(
       p_ma_cong_viec varchar2,
       p_ten_giai_doan varchar2,
       p_noi_dung_giai_doan varchar2,
       p_thoi_gian_bat_dau_giai_doan varchar2,
       p_thoi_gian_ket_thuc_giai_doan varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_stt_giai_doan integer;
       v_thoi_gian_bat_dau_giai_doan date default to_date(p_thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_thoi_gian_ket_thuc_giai_doan date default to_date(p_thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_quyen_them_giai_doan integer default 0;
       v_thoi_gian_bat_dau_cong_viec date; -- Ngay bat dau GD phai sau ngay bat dau CV
       v_thoi_gian_ket_thuc_cong_viec date; -- Ngay ket thuc GD phai truoc ngay ket thuc CV
begin
  select count(*) into v_quyen_them_giai_doan
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

  if v_quyen_them_giai_doan > 0 then -- Duoc phep them giai doan, doi voi nguoi xu ly
    select cv.thoi_gian_bat_dau_cong_viec,
           cv.thoi_gian_ket_thuc_cong_viec
           	into v_thoi_gian_bat_dau_cong_viec,
                    v_thoi_gian_ket_thuc_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
    if v_thoi_gian_bat_dau_cong_viec <= v_thoi_gian_bat_dau_giai_doan
         	and v_thoi_gian_ket_thuc_giai_doan <= v_thoi_gian_ket_thuc_cong_viec then	
         select nvl(max(gd.stt_giai_doan), 0) + 1 into v_stt_giai_doan
         from giai_doan gd
         where gd.ma_cong_viec = p_ma_cong_viec;

         insert into giai_doan(ma_cong_viec, stt_giai_doan, ten_giai_doan, thoi_gian_bat_dau_giai_doan, thoi_gian_ket_thuc_giai_doan, thoi_gian_hoan_thanh_gd, ti_le_hoan_thanh_giai_doan, thoi_Gian_them_giai_doan, noi_dung_giai_doan, ma_tai_khoan_lich_su)
         values(p_ma_cong_viec, v_stt_giai_doan, p_ten_giai_doan, v_thoi_gian_bat_dau_giai_doan, v_thoi_gian_ket_thuc_giai_doan, null, 0, sysdate, p_noi_dung_giai_doan, p_ma_tai_khoan_xu_ly);
    end if;  -- So sanh thoi gian
  end if; -- Kiem tra quyen them GD

  -- Tra ket qua
  if v_quyen_them_giai_doan = 0 then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không phải người xử lý công việc này!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_bat_dau_giai_doan then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày bắt đầu của giai đoạn phải sau ngày bắt đầu của công việc!' as thong_bao
         from dual;  
  elsif v_thoi_gian_ket_thuc_giai_doan > v_thoi_gian_ket_thuc_cong_viec then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày kết thúc của giai đoạn phải trước ngày kết thúc của công việc!' as thong_bao
         from dual; 
  else    
    open v_result for
         select p_ma_cong_viec as ma_cong_viec,
                cv.ma_tai_khoan as ma_tai_khoan,
                'Công việc: ' || cv.ten_cong_viec || ' đã được thêm giai đoạn ' || v_stt_giai_doan as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;

end;

















/

-- ----------------------------
-- Function structure for THEM_GIAI_DOAN_W
-- ----------------------------
CREATE OR REPLACE function "THEM_GIAI_DOAN_W"
(
       p_ma_cong_viec varchar2,
       p_ten_giai_doan varchar2,
       p_noi_dung_giai_doan varchar2,
       p_thoi_gian_bat_dau_giai_doan varchar2,
       p_thoi_gian_ket_thuc_giai_doan varchar2,
       p_ma_tai_khoan_xu_ly varchar2
)
return sys_refcursor
as
       v_result sys_refcursor;
       v_stt_giai_doan integer;
       v_thoi_gian_bat_dau_giai_doan date default to_date(p_thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_thoi_gian_ket_thuc_giai_doan date default to_date(p_thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy HH24:MI:SS');
       v_quyen_them_giai_doan integer default 0;
       v_thoi_gian_bat_dau_cong_viec date; -- Ngay bat dau GD phai sau ngay bat dau CV
       v_thoi_gian_ket_thuc_cong_viec date; -- Ngay ket thuc GD phai truoc ngay ket thuc CV
begin
  select count(*) into v_quyen_them_giai_doan
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

  if v_quyen_them_giai_doan > 0 then -- Duoc phep them giai doan, doi voi nguoi xu ly
    select cv.thoi_gian_bat_dau_cong_viec,
           cv.thoi_gian_ket_thuc_cong_viec
           	into v_thoi_gian_bat_dau_cong_viec,
                    v_thoi_gian_ket_thuc_cong_viec
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec;
  
    -- Ngay bat dau GD phai sau ngay bat dau CV + Ngay ket thuc GD phai truoc ngay ket thuc CV
    if v_thoi_gian_bat_dau_cong_viec <= v_thoi_gian_bat_dau_giai_doan
         	and v_thoi_gian_ket_thuc_giai_doan <= v_thoi_gian_ket_thuc_cong_viec then	
         select nvl(max(gd.stt_giai_doan), 0) + 1 into v_stt_giai_doan
         from giai_doan gd
         where gd.ma_cong_viec = p_ma_cong_viec;

         insert into giai_doan(ma_cong_viec, stt_giai_doan, ten_giai_doan, thoi_gian_bat_dau_giai_doan, thoi_gian_ket_thuc_giai_doan, thoi_gian_hoan_thanh_gd, ti_le_hoan_thanh_giai_doan, thoi_Gian_them_giai_doan, noi_dung_giai_doan, ma_tai_khoan_lich_su)
         values(p_ma_cong_viec, v_stt_giai_doan, p_ten_giai_doan, v_thoi_gian_bat_dau_giai_doan, v_thoi_gian_ket_thuc_giai_doan, null, 0, sysdate, p_noi_dung_giai_doan, p_ma_tai_khoan_xu_ly);
    end if;  -- So sanh thoi gian
  end if; -- Kiem tra quyen them GD

  -- Tra ket qua
  if v_quyen_them_giai_doan = 0 then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Bạn không phải người xử lý công việc này!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec > v_thoi_gian_bat_dau_giai_doan then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày bắt đầu của giai đoạn phải sau ngày bắt đầu của công việc!' as thong_bao
         from dual;  
  elsif v_thoi_gian_ket_thuc_giai_doan > v_thoi_gian_ket_thuc_cong_viec then
    open v_result for
         select '' as ma_cong_viec,
                '' as ma_tai_khoan,
                'Ngày kết thúc của giai đoạn phải trước ngày kết thúc của công việc!' as thong_bao
         from dual; 
  else    
    open v_result for
         select p_ma_cong_viec as ma_cong_viec,
                cv.ma_tai_khoan as ma_tai_khoan,
                'Công việc: ' || cv.ten_cong_viec || ' đã được thêm giai đoạn ' || v_stt_giai_doan as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;
  end if;

  return v_result;

end;
/

-- ----------------------------
-- Function structure for THEM_TAI_KHOAN
-- ----------------------------
CREATE OR REPLACE function "THEM_TAI_KHOAN"
(
       p_ma_phong_to number,
       p_ten_nhan_vien varchar2,
       p_sdt_nhan_vien varchar2,
       p_ten_truy_cap varchar2,
       p_ten_hien_thi varchar2,
       p_ma_nhom_tai_khoan number,
       p_la_tai_khoan_truong_nhom number  -- 0 or 1
) 
return varchar2
is
       v_ma_nhan_vien number;
begin
  select nvl(max(ma_nhan_vien), 0) + 1 into v_ma_nhan_vien
  from nhan_vien;

  insert into nhan_vien(ma_nhan_vien, ma_phong_to, ten_nhan_vien, sdt_nhan_vien)
  values(v_ma_nhan_vien, p_ma_phong_to, p_ten_nhan_vien, p_sdt_nhan_vien);  
  
  insert into tai_khoan(ma_tai_khoan, ma_tai_khoan_xu_ly, ma_nhan_vien, ten_truy_cap, mat_khau, hoat_dong_tk, ten_hien_thi)
  values(v_ma_nhan_vien, null, v_ma_nhan_vien, p_ten_truy_cap, 'e10adc3949ba59abbe56e057f20f883e', 1, p_ten_hien_thi); 
  
  insert into tai_khoan_xu_ly(ma_tai_khoan, ma_tai_khoan_xu_ly)
  values(v_ma_nhan_vien, v_ma_nhan_vien);
  
  update tai_khoan
  set ma_tai_khoan_xu_ly = v_ma_nhan_vien
  where ma_tai_khoan = v_ma_nhan_vien;
  
  insert into tai_khoan_trong_nhom(ma_tai_khoan, ma_nhom_tai_khoan, hoat_dong_tktn)
  values(v_ma_nhan_vien, p_ma_nhom_tai_khoan, 1);
  
  if p_la_tai_khoan_truong_nhom = 1 then
    insert into tai_khoan_truong_nhom(ma_tai_khoan, ma_nhom_tai_khoan, hoat_dong_tk_truong_n)
    values(v_ma_nhan_vien, p_ma_nhom_tai_khoan, 1);
  end if;
  
  insert into tai_khoan_lich_su(ma_tai_khoan_lich_su, ma_tai_khoan)
  values(v_ma_nhan_vien, v_ma_nhan_vien);
  
  return 1;
end;

















/

-- ----------------------------
-- Function structure for THEM_TAI_KHOAN_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "THEM_TAI_KHOAN_CONG_VIEC"  -- Trang thai cong viec: THEM,
(
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_ma_du_an varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_ma_nhom_tai_khoan varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_tong_thoi_gian_cong_viec varchar2  -- so luong phut
)
return sys_refcursor  
as
  v_result_cur sys_refcursor;  
  v_ma_cong_viec_moi number default null;
  v_kiem_tra_tk_trong_nhom integer default 0; 
  v_kiem_tra_tk_xu_ly_trong_nhom integer default 1;    -- Mac dinh la tai khoan da o trong nhom
  v_kiem_tra_cv_da_ton_tai integer default 0; 
  v_kiem_tra_cv_cha_chung_nhom integer default 1;  -- Mac dinh la cong viec cha chung nhom
  v_kiem_tra_cap_nhan_vien integer default 1; -- Cap nhan vien phai > cap nhan vien duoc giao viec
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
begin
  if p_ma_cong_viec_cha != 'null' then
     select count(*) into v_kiem_tra_cv_cha_chung_nhom
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec_cha  
           and cv.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
  end if;
  -- Kiem tra tai khoan co trong nhom hay khong
  v_kiem_tra_tk_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan,  p_ma_nhom_tai_khoan);
  
  if p_ma_tai_khoan_xu_ly != 'null' then
       v_kiem_tra_tk_xu_ly_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan_xu_ly,  p_ma_nhom_tai_khoan);
       v_kiem_tra_cap_nhan_vien := kiem_tra_cap_nv_giao_viec(p_ma_tai_khoan, p_ma_tai_khoan_xu_ly);
  end if;
  
  if p_tong_thoi_gian_cong_viec <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 and to_number(p_tong_thoi_gian_cong_viec) > 0 then
    v_kiem_tra_tong_thoi_gian := 1;
  end if;

  if v_kiem_tra_tk_trong_nhom = 1 and v_kiem_tra_tk_xu_ly_trong_nhom = 1 and v_kiem_tra_cv_cha_chung_nhom = 1 and v_kiem_tra_cap_nhan_vien = 1 and v_kiem_tra_tong_thoi_gian = 1 then 
      v_kiem_tra_cv_da_ton_tai := KIEM_TRA_CV_DA_TON_TAI(p_ten_cong_viec);
      
      if v_kiem_tra_cv_da_ton_tai = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then
           select nvl(max(ma_cong_viec), 0) + 1 into v_ma_cong_viec_moi
           from cong_viec;

           insert into cong_viec(ma_cong_viec, ma_tai_khoan, ma_trang_thai_cong_viec, ma_cong_viec_cha, ma_tai_khoan_xu_ly, ma_muc_do_uu_tien, ma_don_vi_yeu_cau, ma_du_an, ma_nhom_tai_khoan, ten_cong_viec, thoi_gian_them_cong_viec, thoi_gian_bat_dau_cong_viec, thoi_gian_ket_thuc_cong_viec, noi_dung_cong_viec, thoi_gian_xu_ly, thoi_gian_hoan_thanh_cv, ti_le_hoan_thanh_cong_viec, ma_tai_khoan_lich_su, tong_thoi_gian_cong_viec)
           select v_ma_cong_viec_moi as ma_cong_viec, 
                  p_ma_tai_khoan as ma_tai_khoan, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', 1, 2) as ma_trang_thai_cong_viec, 
                  decode(p_ma_cong_viec_cha, 'null', null, p_ma_cong_viec_cha) as ma_cong_viec_cha, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, p_ma_tai_khoan_xu_ly) as ma_tai_khoan_xu_ly, 
                  p_ma_muc_do_uu_tien as ma_muc_do_uu_tien, 
                  p_ma_don_vi_yeu_cau as ma_don_vi_yeu_cau, 
                  p_ma_du_an as ma_du_an,
                  p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                  p_ten_cong_viec as ten_cong_viec, 
                  sysdate as thoi_gian_them_cong_viec, 
                  v_thoi_gian_bat_dau_cong_viec as thoi_gian_bat_dau_cong_viec, 
                  v_thoi_gian_ket_thuc_cong_viec as thoi_gian_ket_thuc_cong_viec, 
                  p_noi_dung_cong_viec as noi_dung_cong_viec, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, sysdate) as thoi_gian_xu_ly, 
                  null as thoi_gian_hoan_thanh_cv, 
                  0 as ti_le_hoan_thanh_cong_viec,
                  p_ma_tai_khoan as ma_tai_khoan,
                  p_tong_thoi_gian_cong_viec as tong_thoi_gian_cong_viec
           from dual;
      end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra tai khoan trong nhom

  -- Tra ve ket qua
  if (v_ma_cong_viec_moi is not null) then  
    open v_result_cur for
         select v_ma_cong_viec_moi as ma_cong_viec,
                p_ten_cong_viec as ten_cong_viec,
                p_ma_tai_khoan as ma_tai_khoan_so_huu,
                nvl(p_ma_tai_khoan_xu_ly, 0) as ma_tai_khoan_xu_ly,
                p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                'MOI' as ma_trang_thai_cong_viec,
                'Công việc: ' || p_ten_cong_viec || ' đã được thêm' as thong_bao
         from dual;
  elsif v_kiem_tra_tk_trong_nhom = 0 then
    open v_result_cur for
         select '' as ma_cong_viec, 
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tài khoản hiện tại không thể thêm công việc trong nhóm này!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_da_ton_tai = 1 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tên công việc đã tồn tại!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tk_xu_ly_trong_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản xử lý không thuộc nhóm đã chọn!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_cha_chung_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhánh công việc mới phải chung nhóm với công việc gốc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_cap_nhan_vien = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Không thể giao việc cho người cấp trên hoặc cùng cấp với bạn!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tong_thoi_gian = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                ' Tổng thời gian phải lớn hơn 0! Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual;       
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
               'Không thêm được công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Function structure for THEM_TAI_KHOAN_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "THEM_TAI_KHOAN_CONG_VIEC_W"  -- Trang thai cong viec: THEM,
(
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_ma_du_an varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_ma_nhom_tai_khoan varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_tong_thoi_gian_cong_viec varchar2  -- so luong phut
)
return sys_refcursor  
as
  v_result_cur sys_refcursor;  
  v_ma_cong_viec_moi number default null;
  v_kiem_tra_tk_trong_nhom integer default 0; 
  v_kiem_tra_tk_xu_ly_trong_nhom integer default 1;    -- Mac dinh la tai khoan da o trong nhom
  v_kiem_tra_cv_da_ton_tai integer default 0; 
  v_kiem_tra_cv_cha_chung_nhom integer default 1;  -- Mac dinh la cong viec cha chung nhom
  v_kiem_tra_cap_nhan_vien integer default 1; -- Cap nhan vien phai > cap nhan vien duoc giao viec
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy HH24:MI:SS');
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
begin
  if p_ma_cong_viec_cha != 'null' then
     select count(*) into v_kiem_tra_cv_cha_chung_nhom
     from cong_viec cv
     where cv.ma_cong_viec = p_ma_cong_viec_cha	
           and cv.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
  end if;
  -- Kiem tra tai khoan co trong nhom hay khong
  v_kiem_tra_tk_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan,  p_ma_nhom_tai_khoan);
  
  if p_ma_tai_khoan_xu_ly != 'null' then
       v_kiem_tra_tk_xu_ly_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan_xu_ly,  p_ma_nhom_tai_khoan);
       v_kiem_tra_cap_nhan_vien := kiem_tra_cap_nv_giao_viec(p_ma_tai_khoan, p_ma_tai_khoan_xu_ly);
  end if;
  
  if p_tong_thoi_gian_cong_viec <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
    v_kiem_tra_tong_thoi_gian := 1;
  end if;

  if v_kiem_tra_tk_trong_nhom = 1 and v_kiem_tra_tk_xu_ly_trong_nhom = 1 and v_kiem_tra_cv_cha_chung_nhom = 1 and v_kiem_tra_cap_nhan_vien = 1 and v_kiem_tra_tong_thoi_gian = 1 then 
      v_kiem_tra_cv_da_ton_tai := KIEM_TRA_CV_DA_TON_TAI(p_ten_cong_viec);
      
      if v_kiem_tra_cv_da_ton_tai = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then
           select nvl(max(ma_cong_viec), 0) + 1 into v_ma_cong_viec_moi
           from cong_viec;

           insert into cong_viec(ma_cong_viec, ma_tai_khoan, ma_trang_thai_cong_viec, ma_cong_viec_cha, ma_tai_khoan_xu_ly, ma_muc_do_uu_tien, ma_don_vi_yeu_cau, ma_du_an, ma_nhom_tai_khoan, ten_cong_viec, thoi_gian_them_cong_viec, thoi_gian_bat_dau_cong_viec, thoi_gian_ket_thuc_cong_viec, noi_dung_cong_viec, thoi_gian_xu_ly, thoi_gian_hoan_thanh_cv, ti_le_hoan_thanh_cong_viec, ma_tai_khoan_lich_su, tong_thoi_gian_cong_viec)
           select v_ma_cong_viec_moi as ma_cong_viec, 
                  p_ma_tai_khoan as ma_tai_khoan, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', 1, 2) as ma_trang_thai_cong_viec, 
                  decode(p_ma_cong_viec_cha, 'null', null, p_ma_cong_viec_cha) as ma_cong_viec_cha, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, p_ma_tai_khoan_xu_ly) as ma_tai_khoan_xu_ly, 
                  p_ma_muc_do_uu_tien as ma_muc_do_uu_tien, 
                  p_ma_don_vi_yeu_cau as ma_don_vi_yeu_cau, 
                  p_ma_du_an as ma_du_an,
                  p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                  p_ten_cong_viec as ten_cong_viec, 
                  sysdate as thoi_gian_them_cong_viec, 
                  v_thoi_gian_bat_dau_cong_viec as thoi_gian_bat_dau_cong_viec, 
                  v_thoi_gian_ket_thuc_cong_viec as thoi_gian_ket_thuc_cong_viec, 
                  p_noi_dung_cong_viec as noi_dung_cong_viec, 
                  decode(p_ma_tai_khoan_xu_ly, 'null', null, sysdate) as thoi_gian_xu_ly, 
                  null as thoi_gian_hoan_thanh_cv, 
                  0 as ti_le_hoan_thanh_cong_viec,
                  p_ma_tai_khoan as ma_tai_khoan,
                  p_tong_thoi_gian_cong_viec as tong_thoi_gian_cong_viec
           from dual;
           
           if p_ma_cong_viec_cha != 'null' then
                update cong_viec cv
                set cv.so_luong_cong_viec_con = nvl(cv.so_luong_cong_viec_con, 0) + 1
                where cv.ma_cong_viec = p_ma_cong_viec_cha;
           end if;
           
      end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra tai khoan trong nhom

  -- Tra ve ket qua
  if (v_ma_cong_viec_moi is not null) then  
    open v_result_cur for
         select v_ma_cong_viec_moi as ma_cong_viec,
                p_ten_cong_viec as ten_cong_viec,
                p_ma_tai_khoan as ma_tai_khoan_so_huu,
                nvl(p_ma_tai_khoan_xu_ly, 0) as ma_tai_khoan_xu_ly,
                p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                'MOI' as ma_trang_thai_cong_viec,
                'Công việc: ' || p_ten_cong_viec || ' đã được thêm' as thong_bao
         from dual;
  elsif v_kiem_tra_tk_trong_nhom = 0 then
    open v_result_cur for
         select '' as ma_cong_viec, 
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tài khoản hiện tại không thể thêm công việc trong nhóm này!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_da_ton_tai = 1 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tên công việc đã tồn tại!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tk_xu_ly_trong_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản xử lý không thuộc nhóm đã chọn!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_cha_chung_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhánh công việc mới phải chung nhóm với công việc gốc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_cap_nhan_vien = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Không thể giao việc cho người cấp trên hoặc cùng cấp với bạn!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tong_thoi_gian = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual;       
  else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
               'Không thêm được công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Function structure for THEM_TAI_KHOAN_W
-- ----------------------------
CREATE OR REPLACE function "THEM_TAI_KHOAN_W"
(
       p_ma_phong_to number,
       p_ten_nhan_vien varchar2,
       p_sdt_nhan_vien varchar2,
       p_ten_truy_cap varchar2,
       p_ten_hien_thi varchar2,
       p_ma_nhom_tai_khoan number,
       p_la_tai_khoan_truong_nhom number  -- 0 or 1
) 
return varchar2
is
       v_ma_nhan_vien number;
begin
  select nvl(max(ma_nhan_vien), 0) + 1 into v_ma_nhan_vien
  from nhan_vien;

  insert into nhan_vien(ma_nhan_vien, ma_phong_to, ten_nhan_vien, sdt_nhan_vien)
  values(v_ma_nhan_vien, p_ma_phong_to, p_ten_nhan_vien, p_sdt_nhan_vien);  
  
  insert into tai_khoan(ma_tai_khoan, ma_tai_khoan_xu_ly, ma_nhan_vien, ten_truy_cap, mat_khau, hoat_dong_tk, ten_hien_thi)
  values(v_ma_nhan_vien, null, v_ma_nhan_vien, p_ten_truy_cap, 'e10adc3949ba59abbe56e057f20f883e', 1, p_ten_hien_thi); 
  
  insert into tai_khoan_xu_ly(ma_tai_khoan, ma_tai_khoan_xu_ly)
  values(v_ma_nhan_vien, v_ma_nhan_vien);
  
  update tai_khoan
  set ma_tai_khoan_xu_ly = v_ma_nhan_vien
  where ma_tai_khoan = v_ma_nhan_vien;
  
  insert into tai_khoan_trong_nhom(ma_tai_khoan, ma_nhom_tai_khoan, hoat_dong_tktn)
  values(v_ma_nhan_vien, p_ma_nhom_tai_khoan, 1);
  
  if p_la_tai_khoan_truong_nhom = 1 then
    insert into tai_khoan_truong_nhom(ma_tai_khoan, ma_nhom_tai_khoan, hoat_dong_tk_truong_n)
    values(v_ma_nhan_vien, p_ma_nhom_tai_khoan, 1);
  end if;
  
  insert into tai_khoan_lich_su(ma_tai_khoan_lich_su, ma_tai_khoan)
  values(v_ma_nhan_vien, v_ma_nhan_vien);
  
  return 1;
end;
/

-- ----------------------------
-- Function structure for XEM_CAY_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "XEM_CAY_CONG_VIEC"
(
       p_ma_cong_viec varchar2       
) 
return sys_refcursor is
       v_cursor sys_refcursor;
begin
  open v_cursor for
  select temp.ma_cong_viec,
         temp.ten_cong_viec,
         temp.ti_le_hoan_thanh_cong_viec,
         floor(temp.tong_thoi_gian_da_qua) || ' ngày ' || floor(mod(temp.tong_thoi_gian_da_qua, floor(temp.tong_thoi_gian_da_qua)) * 24) || ' giờ ' || floor(mod(temp.tong_thoi_gian_da_qua*24, floor(temp.tong_thoi_gian_da_qua*24)) * 60) || ' phút' as tong_thoi_gian_da_qua,
         case when temp.tong_thoi_gian_con_lai < 0 then '0 giờ 0 phút 0 giây' else floor(temp.tong_thoi_gian_con_lai) || ' ngày ' || floor(mod(temp.tong_thoi_gian_con_lai, floor(temp.tong_thoi_gian_con_lai)) * 24) || ' giờ ' || floor(mod(temp.tong_thoi_gian_con_lai*24, floor(temp.tong_thoi_gian_con_lai*24)) * 60) || ' phút' end as tong_thoi_gian_con_lai,
         CEIL(temp.tong_thoi_gian_da_qua * 24)  as tong_thoi_gian_da_qua_m,
         case when temp.tong_thoi_gian_con_lai < 0 then 0 else CEIL(temp.tong_thoi_gian_con_lai * 24) end as tong_thoi_gian_con_lai_m
  from (select cv.ma_cong_viec,
              cv.ten_cong_viec,
              cv.ti_le_hoan_thanh_cong_viec,
              (sysdate - cv.thoi_gian_bat_dau_cong_viec) as tong_thoi_gian_da_qua,  -- Don vi: ngay
              case when cv.thoi_gian_ket_thuc_cong_viec - sysdate < 0 then 0 else (cv.thoi_gian_ket_thuc_cong_viec - sysdate) end as tong_thoi_gian_con_lai
       from cong_viec cv  
       where cv.ma_cong_viec = p_ma_cong_viec
       union all  
       select cv.ma_cong_viec,
              cv.ten_cong_viec,
              cv.ti_le_hoan_thanh_cong_viec,
              (sysdate - cv.thoi_gian_bat_dau_cong_viec) as tong_thoi_gian_da_qua,
              case when cv.thoi_gian_ket_thuc_cong_viec - sysdate < 0 then 0 else (cv.thoi_gian_ket_thuc_cong_viec - sysdate) end as tong_thoi_gian_con_lai
       from cong_viec cv  
       where cv.ma_cong_viec_cha = p_ma_cong_viec) temp;

  return v_cursor;
end;



/

-- ----------------------------
-- Function structure for XEM_CAY_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "XEM_CAY_CONG_VIEC_W"
(
       p_ma_cong_viec varchar2       
) 
return sys_refcursor is
       v_cursor sys_refcursor;
begin
  open v_cursor for
  select temp.ma_cong_viec,
         temp.ten_cong_viec,
         temp.ti_le_hoan_thanh_cong_viec,
         floor(temp.tong_thoi_gian_da_qua) || ' ngày ' || floor(mod(temp.tong_thoi_gian_da_qua, floor(temp.tong_thoi_gian_da_qua)) * 24) || ' giờ ' || floor(mod(temp.tong_thoi_gian_da_qua*24, floor(temp.tong_thoi_gian_da_qua*24)) * 60) || ' phút' as tong_thoi_gian_da_qua,
         case when temp.tong_thoi_gian_con_lai < 0 then '0 giờ 0 phút 0 giây' else floor(temp.tong_thoi_gian_con_lai) || ' ngày ' || floor(mod(temp.tong_thoi_gian_con_lai, floor(temp.tong_thoi_gian_con_lai)) * 24) || ' giờ ' || floor(mod(temp.tong_thoi_gian_con_lai*24, floor(temp.tong_thoi_gian_con_lai*24)) * 60) || ' phút' end as tong_thoi_gian_con_lai,
         CEIL(temp.tong_thoi_gian_da_qua * 24)  as tong_thoi_gian_da_qua_m,
         case when temp.tong_thoi_gian_con_lai < 0 then 0 else CEIL(temp.tong_thoi_gian_con_lai * 24) end as tong_thoi_gian_con_lai_m
  from (select cv.ma_cong_viec,
              cv.ten_cong_viec,
              cv.ti_le_hoan_thanh_cong_viec,
              (sysdate - cv.thoi_gian_bat_dau_cong_viec) as tong_thoi_gian_da_qua,  -- Don vi: ngay
              case when cv.thoi_gian_ket_thuc_cong_viec - sysdate < 0 then 0 else (cv.thoi_gian_ket_thuc_cong_viec - sysdate) end as tong_thoi_gian_con_lai
       from cong_viec cv  
       where cv.ma_cong_viec = p_ma_cong_viec
       union all  
       select cv.ma_cong_viec,
              cv.ten_cong_viec,
              cv.ti_le_hoan_thanh_cong_viec,
              (sysdate - cv.thoi_gian_bat_dau_cong_viec) as tong_thoi_gian_da_qua,
              case when cv.thoi_gian_ket_thuc_cong_viec - sysdate < 0 then 0 else (cv.thoi_gian_ket_thuc_cong_viec - sysdate) end as tong_thoi_gian_con_lai
       from cong_viec cv  
       where cv.ma_cong_viec_cha = p_ma_cong_viec) temp;

  return v_cursor;
end;
/

-- ----------------------------
-- Function structure for XOA_cong_viec
-- ----------------------------
CREATE OR REPLACE function "XOA_cong_viec"  
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan varchar2
)
return sys_refcursor 
as
  v_result_cur sys_refcursor;
  v_da_co_nguoi_xu_ly integer default 0;
begin

  select count(*) into v_da_co_nguoi_xu_ly
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.tai_khoan_xu_ly_ma is not null;

  if v_da_co_nguoi_xu_ly = 0 then
    delete from lich_su_cong_viec ls
    where ls.ma_cong_viec = p_ma_cong_viec;
  
    delete from ghi_chu_cong_viec gc
    where gc.ma_cong_viec = p_ma_cong_viec; 
  
    delete from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan = p_ma_tai_khoan;
  end if;

  if v_da_co_nguoi_xu_ly > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                'Công việc đã có người xử lý! Không thể xóa!' as thong_bao
         from dual;
  else
    open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                'Đã xóa thành công công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;

















/

-- ----------------------------
-- Function structure for XOA_GIAI_DOAN
-- ----------------------------
CREATE OR REPLACE function "XOA_GIAI_DOAN"
(
       p_ma_cong_viec in varchar2,
       p_stt_giai_doan in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_xoa_giai_doan integer default 0;
begin

    select count(*) into v_quyen_xoa_giai_doan
    from cong_viec tk
    where tk.ma_cong_viec = p_ma_cong_viec
          and tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

    if v_quyen_xoa_giai_doan > 0 then    
      delete from giai_doan gd
      where gd.ma_cong_viec = p_ma_cong_viec
          and gd.stt_giai_doan = p_stt_giai_doan;
          
      open v_result for
         select p_ma_cong_viec as ma_cong_viec,
                cv.ma_tai_khoan,
                'Công việc: ' || cv.ten_cong_viec || ' đã bị xóa giai đoạn ' || p_stt_giai_doan as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;   
    else
      open v_result for
      select '' as ma_cong_viec,
             '' as ma_tai_khoan,
             'Bạn không có quyền xóa giai đoạn này!' as thong_bao
         from dual; 
    end if;

  return v_result;
end;

















/

-- ----------------------------
-- Function structure for XOA_GIAI_DOAN_W
-- ----------------------------
CREATE OR REPLACE function "XOA_GIAI_DOAN_W"
(
       p_ma_cong_viec in varchar2,
       p_stt_giai_doan in varchar2,
       p_ma_tai_khoan_xu_ly in varchar2
)
return sys_refcursor
is
  v_result sys_refcursor;
  v_quyen_xoa_giai_doan integer default 0;
begin

    select count(*) into v_quyen_xoa_giai_doan
    from cong_viec tk
    where tk.ma_cong_viec = p_ma_cong_viec
          and tk.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly;

    if v_quyen_xoa_giai_doan > 0 then    
      delete from giai_doan gd
      where gd.ma_cong_viec = p_ma_cong_viec
          and gd.stt_giai_doan = p_stt_giai_doan;
          
      open v_result for
         select p_ma_cong_viec as ma_cong_viec,
                cv.ma_tai_khoan,
                'Công việc: ' || cv.ten_cong_viec || ' đã bị xóa giai đoạn ' || p_stt_giai_doan as thong_bao
         from cong_viec cv
         where cv.ma_cong_viec = p_ma_cong_viec;   
    else
      open v_result for
      select '' as ma_cong_viec,
             '' as ma_tai_khoan,
             'Bạn không có quyền xóa giai đoạn này!' as thong_bao
         from dual; 
    end if;

  return v_result;
end;
/

-- ----------------------------
-- Function structure for XOA_TAI_KHOAN_CONG_VIEC
-- ----------------------------
CREATE OR REPLACE function "XOA_TAI_KHOAN_CONG_VIEC"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan varchar2
)
return sys_refcursor 
as
  v_result_cur sys_refcursor;
  v_da_co_nguoi_xu_ly integer default 0;
  v_da_co_cong_viec_con integer default 0;
begin

  select count(*) into v_da_co_nguoi_xu_ly
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly is not null;
        
  select count(*) into v_da_co_cong_viec_con
  from cong_viec cv
  where cv.ma_cong_viec_cha = p_ma_cong_viec;

  if v_da_co_nguoi_xu_ly = 0 and v_da_co_cong_viec_con = 0 then
    delete from lich_su_cong_viec ls
    where ls.ma_cong_viec = p_ma_cong_viec;
  
    delete from ghi_chu_cong_viec gc
    where gc.ma_cong_viec = p_ma_cong_viec; 
  
    delete from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan = p_ma_tai_khoan;
  end if;

  if v_da_co_nguoi_xu_ly > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                'Công việc đã có người xử lý! Không thể xóa!' as thong_bao
         from dual;
  elsif v_da_co_cong_viec_con > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                'Công việc có ' || v_da_co_cong_viec_con || ' nhánh công việc con! Không thể xóa!' as thong_bao
         from dual;   
  else
    open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                'Đã xóa thành công công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;

















/

-- ----------------------------
-- Function structure for XOA_TAI_KHOAN_CONG_VIEC_W
-- ----------------------------
CREATE OR REPLACE function "XOA_TAI_KHOAN_CONG_VIEC_W"
(
       p_ma_cong_viec varchar2,
       p_ma_tai_khoan varchar2
)
return sys_refcursor 
as
  v_result_cur sys_refcursor;
  v_da_co_nguoi_xu_ly integer default 0;
  v_da_co_cong_viec_con integer default 0;
  v_ma_cong_viec_cha number default -1;
begin

  select count(*) into v_da_co_nguoi_xu_ly
  from cong_viec cv
  where cv.ma_cong_viec = p_ma_cong_viec
        and cv.ma_tai_khoan_xu_ly is not null;
        
  select count(*) into v_da_co_cong_viec_con
  from cong_viec cv
  where cv.ma_cong_viec_cha = p_ma_cong_viec;

  if v_da_co_nguoi_xu_ly = 0 and v_da_co_cong_viec_con = 0 then
    delete from lich_su_cong_viec ls
    where ls.ma_cong_viec = p_ma_cong_viec;
  
    delete from ghi_chu_cong_viec gc
    where gc.ma_cong_viec = p_ma_cong_viec; 
  
    select nvl(cv.ma_cong_viec_cha, -1) into v_ma_cong_viec_cha
    from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan = p_ma_tai_khoan;
  
    delete from cong_viec cv
    where cv.ma_cong_viec = p_ma_cong_viec
          and cv.ma_tai_khoan = p_ma_tai_khoan;
          
    if v_ma_cong_viec_cha != -1 then
       update cong_viec cv
       set cv.so_luong_cong_viec_con = decode(cv.so_luong_cong_viec_con - 1, null, cv.so_luong_cong_viec_con - 1)
       where cv.ma_cong_viec = v_ma_cong_viec_cha;
    end if;
  end if;

  if v_da_co_nguoi_xu_ly > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                'Công việc đã có người xử lý! Không thể xóa!' as thong_bao
         from dual;
  elsif v_da_co_cong_viec_con > 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                'Công việc có ' || v_da_co_cong_viec_con || ' nhánh công việc con! Không thể xóa!' as thong_bao
         from dual;   
  else
    open v_result_cur for
         select p_ma_cong_viec as ma_cong_viec,
                'Đã xóa thành công công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;
/

-- ----------------------------
-- Indexes structure for table CHUC_NANG
-- ----------------------------
CREATE INDEX "NCN_CN_FK"
ON "CHUC_NANG" ("MA_NHOM_CHUC_NANG" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table CHUC_NANG
-- ----------------------------
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CHUC_NANG
-- ----------------------------
ALTER TABLE "CHUC_NANG" ADD PRIMARY KEY ("MA_CHUC_NANG");

-- ----------------------------
-- Indexes structure for table CONG_VIEC
-- ----------------------------
CREATE INDEX "CONG_VIEC_CON_FK"
ON "CONG_VIEC" ("MA_CONG_VIEC_CHA" ASC)
LOGGING
VISIBLE;
CREATE INDEX "CONG_VIEC_TIME_INDEX"
ON "CONG_VIEC" ("THOI_GIAN_BAT_DAU_CONG_VIEC" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DADVYC_CV_FK"
ON "CONG_VIEC" ("MA_DON_VI_YEU_CAU" ASC, "MA_DU_AN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "MDUT_CV_FK"
ON "CONG_VIEC" ("MA_MUC_DO_UU_TIEN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TKLS_CV_FK"
ON "CONG_VIEC" ("MA_TAI_KHOAN_LICH_SU" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TKTD_CV_FK"
ON "CONG_VIEC" ("MA_TAI_KHOAN_THAM_DINH" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TKXL_CV_FK"
ON "CONG_VIEC" ("MA_TAI_KHOAN_XU_LY" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_CV_FK"
ON "CONG_VIEC" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TTCV_CV_FK"
ON "CONG_VIEC" ("MA_TRANG_THAI_CONG_VIEC" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table CONG_VIEC
-- ----------------------------
CREATE OR REPLACE TRIGGER "AFTER_UPDATE_CONG_VIEC" AFTER UPDATE ON "CONG_VIEC" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
declare
  v_mo_ta_lich_su_cong_viec clob;
  v_max_stt_lich_su integer;
begin
  select decode(:old.ten_cong_viec, :new.ten_cong_viec, '', '*nl*+ Tên công việc: ' || :old.ten_cong_viec || ' => ' || :new.ten_cong_viec || '.')
         || decode(:old.ma_trang_thai_cong_viec, :new.ma_trang_thai_cong_viec, '', '*nl*+ Trạng thái: ' || (select tt.ten_trang_thai_cong_viec from trang_thai_cong_viec tt where tt.ma_trang_thai_cong_viec = :old.ma_trang_thai_cong_viec) || ' => ' || (select tt.ten_trang_thai_cong_viec from trang_thai_cong_viec tt where tt.ma_trang_thai_cong_viec = :new.ma_trang_thai_cong_viec) || '.')
         || decode(:old.ma_muc_do_uu_tien, :new.ma_muc_do_uu_tien, '', '*nl*+ Mức độ uu tiên: ' || (select mdut.muc_do_uu_tien from muc_do_uu_tien mdut where mdut.ma_muc_do_uu_tien = :old.ma_muc_do_uu_tien) || ' => ' || (select mdut.muc_do_uu_tien from muc_do_uu_tien mdut where mdut.ma_muc_do_uu_tien = :new.ma_muc_do_uu_tien) || '.')
         || decode(:old.ma_don_vi_yeu_cau, :new.ma_don_vi_yeu_cau, '', '*nl*+ Ðơn vị yêu cầu: ' || (select dvyc.ten_don_vi_yeu_cau from don_vi_yeu_cau dvyc where dvyc.ma_don_vi_yeu_cau = :old.ma_don_vi_yeu_cau) || ' => ' || (select dvyc.ten_don_vi_yeu_cau from don_vi_yeu_cau dvyc where dvyc.ma_don_vi_yeu_cau = :new.ma_don_vi_yeu_cau) || '.')
         || decode(:old.ma_du_an, :new.ma_du_an, '', '*nl*+ Dự án: ' || (select da.ten_du_an from du_an da where da.ma_du_an = :old.ma_du_an) || ' => ' || (select da.ten_du_an from du_an da where da.ma_du_an = :new.ma_du_an) || '.')
         || decode(:old.thoi_gian_bat_dau_cong_viec, :new.thoi_gian_bat_dau_cong_viec, '', '*nl*+ TG bắt đầu CV: ' || to_char(:old.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy hh24:mi:ss') || ' => ' || to_char(:new.thoi_gian_bat_dau_cong_viec, 'dd/mm/yyyy hh24:mi:ss') || '.')
         || decode(:old.thoi_gian_ket_thuc_cong_viec, :new.thoi_gian_ket_thuc_cong_viec, '', '*nl*+ TG kết thúc CV: ' || to_char(:old.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy hh24:mi:ss') || ' => ' || to_char(:new.thoi_gian_ket_thuc_cong_viec, 'dd/mm/yyyy hh24:mi:ss') || '.')
         || decode(:old.ti_le_hoan_thanh_cong_viec, :new.ti_le_hoan_thanh_cong_viec, '', '*nl*+ Tỉ lệ HT CV: ' || :old.ti_le_hoan_thanh_cong_viec || '% => ' || :new.ti_le_hoan_thanh_cong_viec || '%.')
         || decode(dbms_lob.compare(:old.noi_dung_cong_viec, :new.noi_dung_cong_viec), 0, '', '*nl*+ Nội dung CV: ' || :old.noi_dung_cong_viec || '*nl* => *nl*' || :new.noi_dung_cong_viec || '.')
         || decode(:old.tham_dinh_da_hoan_thanh_cv, :new.tham_dinh_da_hoan_thanh_cv, '', '*nl*+ Thẩm định: ' || decode(:old.tham_dinh_da_hoan_thanh_cv, 0, 'Chưa hoàn thành', 'Đã hoàn thành') || ' => ' || decode(:old.tham_dinh_da_hoan_thanh_cv, 0, 'Đã hoàn thành', 'Chưa hoàn thành')|| '.')
         || decode(:old.tham_dinh_thoi_gian_ht_cv, :new.tham_dinh_thoi_gian_ht_cv, '', '*nl*+ TG HT theo thẩm định: ' || to_char(:old.tham_dinh_thoi_gian_ht_cv, 'dd/mm/yyyy hh24:mi:ss') || ' => ' || to_char(:new.tham_dinh_thoi_gian_ht_cv, 'dd/mm/yyyy hh24:mi:ss') || '.')
         into v_mo_ta_lich_su_cong_viec
  from dual;  
  
  if v_mo_ta_lich_su_cong_viec is not null and (:old.ma_tai_khoan_xu_ly is not null or :new.ma_tai_khoan_xu_ly is null) then
    select nvl(max(ls.stt_lich_su_cong_viec), 0) + 1 into v_max_stt_lich_su
    from lich_su_cong_viec ls
    where ls.ma_cong_viec = :old.ma_cong_viec;   
    
    insert into lich_su_cong_viec(ma_cong_viec, 
           stt_lich_su_cong_viec, 
           thoi_gian_them_lscv, 
           mo_ta_lich_su_cong_viec, 
           ma_tai_khoan_lich_su)
    values(:old.ma_cong_viec, 
           v_max_stt_lich_su,
           sysdate,    
           v_mo_ta_lich_su_cong_viec,
           :new.ma_tai_khoan_lich_su);
  end if;
end;

-- ----------------------------
-- Checks structure for table CONG_VIEC
-- ----------------------------
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CONG_VIEC
-- ----------------------------
ALTER TABLE "CONG_VIEC" ADD PRIMARY KEY ("MA_CONG_VIEC");

-- ----------------------------
-- Indexes structure for table DON_VI
-- ----------------------------
CREATE INDEX "LDV_DV_FK"
ON "DON_VI" ("MA_LOAI_DON_VI" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table DON_VI
-- ----------------------------
ALTER TABLE "DON_VI" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "DON_VI" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "DON_VI" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "DON_VI" ADD CHECK ("MA_DON_VI" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DON_VI
-- ----------------------------
ALTER TABLE "DON_VI" ADD PRIMARY KEY ("MA_DON_VI");

-- ----------------------------
-- Indexes structure for table DON_VI_YEU_CAU
-- ----------------------------

-- ----------------------------
-- Checks structure for table DON_VI_YEU_CAU
-- ----------------------------
ALTER TABLE "DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DON_VI_YEU_CAU
-- ----------------------------
ALTER TABLE "DON_VI_YEU_CAU" ADD PRIMARY KEY ("MA_DON_VI_YEU_CAU");

-- ----------------------------
-- Indexes structure for table DU_AN
-- ----------------------------

-- ----------------------------
-- Checks structure for table DU_AN
-- ----------------------------
ALTER TABLE "DU_AN" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN" ADD CHECK ("MA_DU_AN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DU_AN
-- ----------------------------
ALTER TABLE "DU_AN" ADD PRIMARY KEY ("MA_DU_AN");

-- ----------------------------
-- Indexes structure for table DU_AN_DON_VI_YEU_CAU
-- ----------------------------
CREATE INDEX "DA_DADVYC_FK"
ON "DU_AN_DON_VI_YEU_CAU" ("MA_DU_AN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DVYC_DADVYC_FK"
ON "DU_AN_DON_VI_YEU_CAU" ("MA_DON_VI_YEU_CAU" ASC)
LOGGING
VISIBLE;
CREATE INDEX "NTK_DADVYC_FK"
ON "DU_AN_DON_VI_YEU_CAU" ("MA_NHOM_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table DU_AN_DON_VI_YEU_CAU
-- ----------------------------
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DON_VI_YEU_CAU" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_DU_AN" IS NOT NULL);
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DU_AN_DON_VI_YEU_CAU
-- ----------------------------
ALTER TABLE "DU_AN_DON_VI_YEU_CAU" ADD PRIMARY KEY ("MA_DON_VI_YEU_CAU", "MA_DU_AN", "MA_NHOM_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table FILE_CONG_VIEC
-- ----------------------------
CREATE INDEX "CV_FCV_FK"
ON "FILE_CONG_VIEC" ("MA_CONG_VIEC" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_FCV_FK"
ON "FILE_CONG_VIEC" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table FILE_CONG_VIEC
-- ----------------------------
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("STT_FILE_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("STT_FILE_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("STT_FILE_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("STT_FILE_CONG_VIEC" IS NOT NULL);
ALTER TABLE "FILE_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table FILE_CONG_VIEC
-- ----------------------------
ALTER TABLE "FILE_CONG_VIEC" ADD PRIMARY KEY ("MA_CONG_VIEC", "STT_FILE_CONG_VIEC");

-- ----------------------------
-- Indexes structure for table FILE_GIAI_DOAN
-- ----------------------------
CREATE INDEX "GD_FGD_FK"
ON "FILE_GIAI_DOAN" ("STT_GIAI_DOAN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_FGD_FK"
ON "FILE_GIAI_DOAN" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table FILE_GIAI_DOAN
-- ----------------------------
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_FILE_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_FILE_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_FILE_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("STT_FILE_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "FILE_GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table FILE_GIAI_DOAN
-- ----------------------------
ALTER TABLE "FILE_GIAI_DOAN" ADD PRIMARY KEY ("STT_GIAI_DOAN", "STT_FILE_GIAI_DOAN");

-- ----------------------------
-- Indexes structure for table GHI_CHU_CONG_VIEC
-- ----------------------------
CREATE INDEX "CV_GC_FK"
ON "GHI_CHU_CONG_VIEC" ("MA_CONG_VIEC" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_GC_FK"
ON "GHI_CHU_CONG_VIEC" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table GHI_CHU_CONG_VIEC
-- ----------------------------
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("STT_GHI_CHU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("STT_GHI_CHU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("STT_GHI_CHU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("STT_GHI_CHU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table GHI_CHU_CONG_VIEC
-- ----------------------------
ALTER TABLE "GHI_CHU_CONG_VIEC" ADD PRIMARY KEY ("MA_CONG_VIEC", "STT_GHI_CHU_CONG_VIEC");

-- ----------------------------
-- Indexes structure for table GIAI_DOAN
-- ----------------------------
CREATE INDEX "CV_GD_FK"
ON "GIAI_DOAN" ("MA_CONG_VIEC" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TKLS_GD_FK"
ON "GIAI_DOAN" ("MA_TAI_KHOAN_LICH_SU" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table GIAI_DOAN
-- ----------------------------
CREATE OR REPLACE TRIGGER "AFTER_UPDATE_GIAI_DOAN" AFTER UPDATE ON "GIAI_DOAN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
declare
  v_mo_ta_lich_su_cong_viec clob;
  v_max_stt_lich_su integer;
begin
  select decode(:old.ten_giai_doan, :new.ten_giai_doan, '', '*nl*+ Tên giai đoạn ' || :old.stt_giai_doan || ': ' || :old.ten_giai_doan || ' => ' || :new.ten_giai_doan || '.')
         || decode(:old.thoi_gian_bat_dau_giai_doan, :new.thoi_gian_bat_dau_giai_doan, '', '*nl*+ TG bắt đầu GÐ ' || :old.stt_giai_doan || ': ' || to_char(:old.thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy hh24:mi:ss') || ' => ' || to_char(:new.thoi_gian_bat_dau_giai_doan, 'dd/mm/yyyy hh24:mi:ss') || '.')
         || decode(:old.thoi_gian_ket_thuc_giai_doan, :new.thoi_gian_ket_thuc_giai_doan, '', '*nl*+ TG kết thúc GÐ ' || :old.stt_giai_doan || ': ' || to_char(:old.thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy hh24:mi:ss') || ' => ' || to_char(:new.thoi_gian_ket_thuc_giai_doan, 'dd/mm/yyyy hh24:mi:ss') || '.')
         || decode(:old.ti_le_hoan_thanh_giai_doan, :new.ti_le_hoan_thanh_giai_doan, '', '*nl*+ Tỉ lệ HT GÐ ' || :old.stt_giai_doan || ': ' || :old.ti_le_hoan_thanh_giai_doan || ' => ' || :new.ti_le_hoan_thanh_giai_doan || '.')
         || decode(dbms_lob.compare(:old.noi_dung_giai_doan, :new.noi_dung_giai_doan), 0, '', '*nl*+ Nội dung GÐ ' || :old.stt_giai_doan || ': ' || :old.noi_dung_giai_doan || '*nl* => *nl*' || :new.noi_dung_giai_doan || '.')
         into v_mo_ta_lich_su_cong_viec
  from dual;
  
  if v_mo_ta_lich_su_cong_viec is not null then
    select nvl(max(ls.stt_lich_su_cong_viec), 0) + 1 into v_max_stt_lich_su
    from lich_su_cong_viec ls
    where ls.ma_cong_viec = :old.ma_cong_viec;    
  
    insert into lich_su_cong_viec(ma_cong_viec, 
           stt_lich_su_cong_viec, 
           thoi_gian_them_lscv, 
           mo_ta_lich_su_cong_viec, 
           ma_tai_khoan_lich_su)
    values(:old.ma_cong_viec, 
           v_max_stt_lich_su,
           sysdate,    
           v_mo_ta_lich_su_cong_viec,
           :new.ma_tai_khoan_lich_su);
  end if;
end;

-- ----------------------------
-- Checks structure for table GIAI_DOAN
-- ----------------------------
ALTER TABLE "GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("STT_GIAI_DOAN" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "GIAI_DOAN" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table GIAI_DOAN
-- ----------------------------
ALTER TABLE "GIAI_DOAN" ADD PRIMARY KEY ("STT_GIAI_DOAN", "MA_CONG_VIEC");

-- ----------------------------
-- Indexes structure for table LICH_SU_CONG_VIEC
-- ----------------------------
CREATE INDEX "CV_LSCV_FK"
ON "LICH_SU_CONG_VIEC" ("MA_CONG_VIEC" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TKLS_LSCV_FK"
ON "LICH_SU_CONG_VIEC" ("MA_TAI_KHOAN_LICH_SU" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table LICH_SU_CONG_VIEC
-- ----------------------------
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("STT_LICH_SU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("STT_LICH_SU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("STT_LICH_SU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("STT_LICH_SU_CONG_VIEC" IS NOT NULL);
ALTER TABLE "LICH_SU_CONG_VIEC" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table LICH_SU_CONG_VIEC
-- ----------------------------
ALTER TABLE "LICH_SU_CONG_VIEC" ADD PRIMARY KEY ("MA_CONG_VIEC", "STT_LICH_SU_CONG_VIEC");

-- ----------------------------
-- Indexes structure for table LOAI_DON_VI
-- ----------------------------

-- ----------------------------
-- Checks structure for table LOAI_DON_VI
-- ----------------------------
ALTER TABLE "LOAI_DON_VI" ADD CHECK ("MA_LOAI_DON_VI" IS NOT NULL);
ALTER TABLE "LOAI_DON_VI" ADD CHECK ("MA_LOAI_DON_VI" IS NOT NULL);
ALTER TABLE "LOAI_DON_VI" ADD CHECK ("MA_LOAI_DON_VI" IS NOT NULL);
ALTER TABLE "LOAI_DON_VI" ADD CHECK ("MA_LOAI_DON_VI" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table LOAI_DON_VI
-- ----------------------------
ALTER TABLE "LOAI_DON_VI" ADD PRIMARY KEY ("MA_LOAI_DON_VI");

-- ----------------------------
-- Indexes structure for table LOAI_PHONG_TO
-- ----------------------------

-- ----------------------------
-- Checks structure for table LOAI_PHONG_TO
-- ----------------------------
ALTER TABLE "LOAI_PHONG_TO" ADD CHECK ("MA_LOAI_PHONG_TO" IS NOT NULL);
ALTER TABLE "LOAI_PHONG_TO" ADD CHECK ("MA_LOAI_PHONG_TO" IS NOT NULL);
ALTER TABLE "LOAI_PHONG_TO" ADD CHECK ("MA_LOAI_PHONG_TO" IS NOT NULL);
ALTER TABLE "LOAI_PHONG_TO" ADD CHECK ("MA_LOAI_PHONG_TO" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table LOAI_PHONG_TO
-- ----------------------------
ALTER TABLE "LOAI_PHONG_TO" ADD PRIMARY KEY ("MA_LOAI_PHONG_TO");

-- ----------------------------
-- Indexes structure for table MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table MENU
-- ----------------------------
ALTER TABLE "MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "MENU" ADD CHECK ("MA_MENU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MENU
-- ----------------------------
ALTER TABLE "MENU" ADD PRIMARY KEY ("MA_MENU");

-- ----------------------------
-- Indexes structure for table MUC_DO_UU_TIEN
-- ----------------------------

-- ----------------------------
-- Checks structure for table MUC_DO_UU_TIEN
-- ----------------------------
ALTER TABLE "MUC_DO_UU_TIEN" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "MUC_DO_UU_TIEN" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "MUC_DO_UU_TIEN" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);
ALTER TABLE "MUC_DO_UU_TIEN" ADD CHECK ("MA_MUC_DO_UU_TIEN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MUC_DO_UU_TIEN
-- ----------------------------
ALTER TABLE "MUC_DO_UU_TIEN" ADD PRIMARY KEY ("MA_MUC_DO_UU_TIEN");

-- ----------------------------
-- Indexes structure for table NHAN_VIEN
-- ----------------------------
CREATE INDEX "PT_NV_FK"
ON "NHAN_VIEN" ("MA_PHONG_TO" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table NHAN_VIEN
-- ----------------------------
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "NHAN_VIEN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table NHAN_VIEN
-- ----------------------------
ALTER TABLE "NHAN_VIEN" ADD PRIMARY KEY ("MA_NHAN_VIEN", "MA_PHONG_TO");

-- ----------------------------
-- Indexes structure for table NHOM_CHUC_NANG
-- ----------------------------

-- ----------------------------
-- Checks structure for table NHOM_CHUC_NANG
-- ----------------------------
ALTER TABLE "NHOM_CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "NHOM_CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "NHOM_CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);
ALTER TABLE "NHOM_CHUC_NANG" ADD CHECK ("MA_NHOM_CHUC_NANG" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table NHOM_CHUC_NANG
-- ----------------------------
ALTER TABLE "NHOM_CHUC_NANG" ADD PRIMARY KEY ("MA_NHOM_CHUC_NANG");

-- ----------------------------
-- Indexes structure for table NHOM_TAI_KHOAN
-- ----------------------------
CREATE INDEX "PT_NTK_FK"
ON "NHOM_TAI_KHOAN" ("MA_PHONG_TO" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table NHOM_TAI_KHOAN
-- ----------------------------
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "NHOM_TAI_KHOAN" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table NHOM_TAI_KHOAN
-- ----------------------------
ALTER TABLE "NHOM_TAI_KHOAN" ADD PRIMARY KEY ("MA_NHOM_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table PHONG_TO
-- ----------------------------
CREATE INDEX "DV_PT_FK"
ON "PHONG_TO" ("MA_DON_VI" ASC)
LOGGING
VISIBLE;
CREATE INDEX "LPT_PT_FK"
ON "PHONG_TO" ("MA_LOAI_PHONG_TO" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table PHONG_TO
-- ----------------------------
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_DON_VI" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_PHONG_TO" IS NOT NULL);
ALTER TABLE "PHONG_TO" ADD CHECK ("MA_DON_VI" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table PHONG_TO
-- ----------------------------
ALTER TABLE "PHONG_TO" ADD PRIMARY KEY ("MA_PHONG_TO");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN
-- ----------------------------
CREATE INDEX "NV_TK_FK"
ON "TAI_KHOAN" ("MA_NHAN_VIEN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKTD_FK"
ON "TAI_KHOAN" ("MA_TAI_KHOAN_THAM_DINH" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKXL_FK"
ON "TAI_KHOAN" ("MA_TAI_KHOAN_XU_LY" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN
-- ----------------------------
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN" ADD CHECK ("MA_NHAN_VIEN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN
-- ----------------------------
ALTER TABLE "TAI_KHOAN" ADD PRIMARY KEY ("MA_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_CHUC_NANG
-- ----------------------------
CREATE INDEX "CN_TKCN_FK"
ON "TAI_KHOAN_CHUC_NANG" ("MA_CHUC_NANG" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKCN_FK"
ON "TAI_KHOAN_CHUC_NANG" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_CHUC_NANG
-- ----------------------------
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD CHECK ("MA_CHUC_NANG" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_CHUC_NANG
-- ----------------------------
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD PRIMARY KEY ("MA_TAI_KHOAN", "MA_CHUC_NANG");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_DG_CHAT_LUONG_NHOM
-- ----------------------------

-- ----------------------------
-- Checks structure for table TAI_KHOAN_DG_CHAT_LUONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_DG_CHAT_LUONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM" ADD PRIMARY KEY ("MA_NHOM_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_DG_THAI_DO_CUA_NHOM
-- ----------------------------

-- ----------------------------
-- Checks structure for table TAI_KHOAN_DG_THAI_DO_CUA_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_DG_THAI_DO_CUA_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM" ADD PRIMARY KEY ("MA_NHOM_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_LICH_SU
-- ----------------------------
CREATE INDEX "TK_TKLS_FK"
ON "TAI_KHOAN_LICH_SU" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_LICH_SU
-- ----------------------------
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN_LICH_SU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_LICH_SU
-- ----------------------------
ALTER TABLE "TAI_KHOAN_LICH_SU" ADD PRIMARY KEY ("MA_TAI_KHOAN_LICH_SU");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_MENU
-- ----------------------------
CREATE INDEX "MN_TKMN_FK"
ON "TAI_KHOAN_MENU" ("MA_MENU" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKMN_FK"
ON "TAI_KHOAN_MENU" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_MENU
-- ----------------------------
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_MENU" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_MENU" ADD CHECK ("MA_MENU" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_MENU
-- ----------------------------
ALTER TABLE "TAI_KHOAN_MENU" ADD PRIMARY KEY ("MA_TAI_KHOAN", "MA_MENU");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_THAM_DINH
-- ----------------------------
CREATE INDEX "TK_TKTD2_FK"
ON "TAI_KHOAN_THAM_DINH" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_THAM_DINH
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THAM_DINH" ADD CHECK ("MA_TAI_KHOAN_THAM_DINH" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_THAM_DINH" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_THAM_DINH
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THAM_DINH" ADD PRIMARY KEY ("MA_TAI_KHOAN_THAM_DINH");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_THIET_LAP
-- ----------------------------

-- ----------------------------
-- Checks structure for table TAI_KHOAN_THIET_LAP
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THIET_LAP" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_THIET_LAP" ADD CHECK ("MA_THIET_LAP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_THIET_LAP
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THIET_LAP" ADD PRIMARY KEY ("MA_TAI_KHOAN", "MA_THIET_LAP");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_TRONG_NHOM
-- ----------------------------
CREATE INDEX "NTK_TKTN_FK"
ON "TAI_KHOAN_TRONG_NHOM" ("MA_NHOM_TAI_KHOAN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKTN_FK"
ON "TAI_KHOAN_TRONG_NHOM" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_TRONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_TRONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_TRONG_NHOM" ADD PRIMARY KEY ("MA_TAI_KHOAN", "MA_NHOM_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_TRUONG_NHOM
-- ----------------------------
CREATE INDEX "NTK_TKTRN_FK"
ON "TAI_KHOAN_TRUONG_NHOM" ("MA_NHOM_TAI_KHOAN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "TK_TKTRN_FK"
ON "TAI_KHOAN_TRUONG_NHOM" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_TRUONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_NHOM_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_TRUONG_NHOM
-- ----------------------------
ALTER TABLE "TAI_KHOAN_TRUONG_NHOM" ADD PRIMARY KEY ("MA_NHOM_TAI_KHOAN", "MA_TAI_KHOAN");

-- ----------------------------
-- Indexes structure for table TAI_KHOAN_XU_LY
-- ----------------------------
CREATE INDEX "TK_TKXL2_FK"
ON "TAI_KHOAN_XU_LY" ("MA_TAI_KHOAN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TAI_KHOAN_XU_LY
-- ----------------------------
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN_XU_LY" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN_XU_LY" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN_XU_LY" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN_XU_LY" IS NOT NULL);
ALTER TABLE "TAI_KHOAN_XU_LY" ADD CHECK ("MA_TAI_KHOAN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TAI_KHOAN_XU_LY
-- ----------------------------
ALTER TABLE "TAI_KHOAN_XU_LY" ADD PRIMARY KEY ("MA_TAI_KHOAN_XU_LY");

-- ----------------------------
-- Indexes structure for table THIET_LAP
-- ----------------------------

-- ----------------------------
-- Checks structure for table THIET_LAP
-- ----------------------------
ALTER TABLE "THIET_LAP" ADD CHECK ("MA_THIET_LAP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table THIET_LAP
-- ----------------------------
ALTER TABLE "THIET_LAP" ADD PRIMARY KEY ("MA_THIET_LAP");

-- ----------------------------
-- Indexes structure for table TONG_THOI_GIAN_CHUAN
-- ----------------------------

-- ----------------------------
-- Checks structure for table TONG_THOI_GIAN_CHUAN
-- ----------------------------
ALTER TABLE "TONG_THOI_GIAN_CHUAN" ADD CHECK ("THANG" IS NOT NULL);
ALTER TABLE "TONG_THOI_GIAN_CHUAN" ADD CHECK ("NAM" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TONG_THOI_GIAN_CHUAN
-- ----------------------------
ALTER TABLE "TONG_THOI_GIAN_CHUAN" ADD PRIMARY KEY ("THANG", "NAM");

-- ----------------------------
-- Indexes structure for table TRANG_THAI_CONG_VIEC
-- ----------------------------

-- ----------------------------
-- Checks structure for table TRANG_THAI_CONG_VIEC
-- ----------------------------
ALTER TABLE "TRANG_THAI_CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "TRANG_THAI_CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "TRANG_THAI_CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);
ALTER TABLE "TRANG_THAI_CONG_VIEC" ADD CHECK ("MA_TRANG_THAI_CONG_VIEC" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TRANG_THAI_CONG_VIEC
-- ----------------------------
ALTER TABLE "TRANG_THAI_CONG_VIEC" ADD PRIMARY KEY ("MA_TRANG_THAI_CONG_VIEC");

-- ----------------------------
-- Foreign Key structure for table "CHUC_NANG"
-- ----------------------------
ALTER TABLE "CHUC_NANG" ADD FOREIGN KEY ("MA_NHOM_CHUC_NANG") REFERENCES "NHOM_CHUC_NANG" ("MA_NHOM_CHUC_NANG");

-- ----------------------------
-- Foreign Key structure for table "CONG_VIEC"
-- ----------------------------
ALTER TABLE "CONG_VIEC" ADD FOREIGN KEY ("MA_TAI_KHOAN_THAM_DINH") REFERENCES "TAI_KHOAN_THAM_DINH" ("MA_TAI_KHOAN_THAM_DINH");
ALTER TABLE "CONG_VIEC" ADD FOREIGN KEY ("MA_TAI_KHOAN_DG_CHAT_LUONG") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN");
ALTER TABLE "CONG_VIEC" ADD FOREIGN KEY ("MA_TAI_KHOAN_DG_THAI_DO") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN");
ALTER TABLE "CONG_VIEC" ADD FOREIGN KEY ("MA_CONG_VIEC_CHA") REFERENCES "CONG_VIEC" ("MA_CONG_VIEC");

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN"
-- ----------------------------
ALTER TABLE "TAI_KHOAN" ADD FOREIGN KEY ("MA_TAI_KHOAN_THAM_DINH") REFERENCES "TAI_KHOAN_THAM_DINH" ("MA_TAI_KHOAN_THAM_DINH");

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_CHUC_NANG"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN");
ALTER TABLE "TAI_KHOAN_CHUC_NANG" ADD FOREIGN KEY ("MA_CHUC_NANG") REFERENCES "CHUC_NANG" ("MA_CHUC_NANG");

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_DG_CHAT_LUONG_NHOM"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM" ADD FOREIGN KEY ("MA_NHOM_TAI_KHOAN") REFERENCES "NHOM_TAI_KHOAN" ("MA_NHOM_TAI_KHOAN") ON DELETE CASCADE;
ALTER TABLE "TAI_KHOAN_DG_CHAT_LUONG_NHOM" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_DG_THAI_DO_CUA_NHOM"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM" ADD FOREIGN KEY ("MA_NHOM_TAI_KHOAN") REFERENCES "NHOM_TAI_KHOAN" ("MA_NHOM_TAI_KHOAN") ON DELETE CASCADE;
ALTER TABLE "TAI_KHOAN_DG_THAI_DO_CUA_NHOM" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_MENU"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_MENU" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN");
ALTER TABLE "TAI_KHOAN_MENU" ADD FOREIGN KEY ("MA_MENU") REFERENCES "MENU" ("MA_MENU");

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_THAM_DINH"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THAM_DINH" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN");

-- ----------------------------
-- Foreign Key structure for table "TAI_KHOAN_THIET_LAP"
-- ----------------------------
ALTER TABLE "TAI_KHOAN_THIET_LAP" ADD FOREIGN KEY ("MA_TAI_KHOAN") REFERENCES "TAI_KHOAN" ("MA_TAI_KHOAN") ON DELETE CASCADE;
ALTER TABLE "TAI_KHOAN_THIET_LAP" ADD FOREIGN KEY ("MA_THIET_LAP") REFERENCES "THIET_LAP" ("MA_THIET_LAP") ON DELETE CASCADE;



/

-- ----------------------------
-- Function structure for THEM_CONG_VIEC_MAU
-- ----------------------------
CREATE OR REPLACE function "THEM_CONG_VIEC_MAU"  -- Trang thai cong viec: THEM,
(
       p_ten_cong_viec varchar2,
       p_noi_dung_cong_viec varchar2,
       p_ma_tai_khoan varchar2,
       p_ma_du_an varchar2,
       p_ma_giai_doan_da varchar2,
       p_ma_don_vi_yeu_cau varchar2,
       p_ma_muc_do_uu_tien varchar2,
       p_ma_nhom_tai_khoan varchar2,
       p_thoi_gian_bat_dau_cong_viec varchar2,
       p_thoi_gian_ket_thuc_cong_viec varchar2,
       p_ma_cong_viec_cha varchar2,
       p_ma_tai_khoan_xu_ly varchar2,
       p_tong_thoi_gian varchar2,
       p_ma_tai_khoan_tham_dinh varchar2
)
return sys_refcursor  
as
  v_result_cur sys_refcursor;  
  v_ma_cong_viec_moi number default null;
  v_kiem_tra_tk_trong_nhom integer default 0; 
  v_kiem_tra_tk_xu_ly_trong_nhom integer default 1;    -- Mac dinh la tai khoan da o trong nhom
  v_kiem_tra_cv_da_ton_tai integer default 0; 
  v_kiem_tra_cv_cha_chung_nhom integer default 1;  -- Mac dinh la cong viec cha chung nhom
  v_kiem_tra_cap_nhan_vien integer default 1; -- Cap nhan vien phai > cap nhan vien duoc giao viec
  v_thoi_gian_bat_dau_cong_viec date default to_date(p_thoi_gian_bat_dau_cong_viec || ':00', 'dd/mm/yyyy HH24:MI:SS');
  v_thoi_gian_ket_thuc_cong_viec date default to_date(p_thoi_gian_ket_thuc_cong_viec || ':00'  , 'dd/mm/yyyy HH24:MI:SS');
  v_tk_tham_dinh_thuoc_nhom_cv number;
  v_tong_thoi_gian number default to_number(p_tong_thoi_gian) * 60;  -- So phut
  v_kiem_tra_tong_thoi_gian integer default 0; -- Tong thoi gian <= thoi gian ket thuc - thoi gian bat dau
  v_ma_tk_danh_gia_chat_luong integer default 0;
  v_ma_tk_danh_gia_thai_do integer default 0;
  v_kiem_tra_tk_tham_dinh number;
begin   
  if p_ma_cong_viec_cha != 'null' then
     select count(*) into v_kiem_tra_cv_cha_chung_nhom
     from CONG_VIEC_MAU cv
     where cv.ma_cong_viec_da = p_ma_cong_viec_cha 
           and cv.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
  end if;
  
  if v_tong_thoi_gian <= (v_thoi_gian_ket_thuc_cong_viec - v_thoi_gian_bat_dau_cong_viec) * 24 *60 then
    v_kiem_tra_tong_thoi_gian := 1;
  end if;
  
  -- Kiem tra tai khoan co trong nhom hay khong
  v_kiem_tra_tk_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan,  p_ma_nhom_tai_khoan);
  
  if p_ma_tai_khoan_xu_ly != 'null' then
       v_kiem_tra_tk_xu_ly_trong_nhom := kiem_tra_tk_trong_ntk(p_ma_tai_khoan_xu_ly,  p_ma_nhom_tai_khoan);
       v_kiem_tra_cap_nhan_vien := kiem_tra_cap_nv_giao_viec(p_ma_tai_khoan, p_ma_tai_khoan_xu_ly);
  end if;
  
  select count(tk.ma_tai_khoan) into v_tk_tham_dinh_thuoc_nhom_cv
  from tai_khoan tk,
       tai_khoan_trong_nhom tkn,
       CONG_VIEC_MAU cv,
       nhan_vien nv
  where tk.ma_tai_khoan_tham_dinh = p_ma_tai_khoan_tham_dinh
        and tkn.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan
        and tkn.ma_tai_khoan = tk.ma_tai_khoan
        and tk.ma_nhan_vien = nv.ma_nhan_vien
        and (nv.cap_nhan_vien > (select nv2.cap_nhan_vien 
                                    from nhan_vien nv2, tai_khoan tk2
                                    where tk2.ma_tai_khoan_xu_ly = p_ma_tai_khoan_xu_ly
                                          and tk2.ma_nhan_vien = nv2.ma_nhan_vien
                                          and rownum = 1)
             or p_ma_tai_khoan_xu_ly = p_ma_tai_khoan_tham_dinh);

  if v_kiem_tra_tk_trong_nhom = 1 and v_kiem_tra_tk_xu_ly_trong_nhom = 1 and v_kiem_tra_cv_cha_chung_nhom = 1 and v_kiem_tra_cap_nhan_vien = 1 and v_tk_tham_dinh_thuoc_nhom_cv > 0 and v_tong_thoi_gian > 0 and v_kiem_tra_tong_thoi_gian = 1 then 
      v_kiem_tra_cv_da_ton_tai := KIEM_TRA_CV_DA_TON_TAI(p_ten_cong_viec);
      
      if v_kiem_tra_cv_da_ton_tai = 0 and v_thoi_gian_bat_dau_cong_viec < v_thoi_gian_ket_thuc_cong_viec then
           begin
                select tk.ma_tai_khoan into v_ma_tk_danh_gia_chat_luong
                from tai_khoan_dg_chat_luong_nhom tk
                where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;     
           
                select tk.ma_tai_khoan into v_ma_tk_danh_gia_thai_do
                from tai_khoan_dg_thai_do_cua_nhom tk
                where tk.ma_nhom_tai_khoan = p_ma_nhom_tai_khoan;
                
                exception when no_data_found then null;
           end;
           
           if v_ma_tk_danh_gia_chat_luong != 0 and v_ma_tk_danh_gia_thai_do != 0 then
                select nvl(max(ma_cong_viec_da), 0) + 1 into v_ma_cong_viec_moi
                from CONG_VIEC_DU_AN;

                v_kiem_tra_tk_tham_dinh := KIEM_TRA_TK_THAM_DINH_W(p_ma_nhom_tai_khoan, p_ma_tai_khoan_xu_ly, p_ma_tai_khoan_tham_dinh);

                if v_kiem_tra_tk_tham_dinh > 0 then
                     insert into cong_viec(ma_cong_viec, ma_tai_khoan, ma_trang_thai_cong_viec, ma_cong_viec_cha, ma_tai_khoan_xu_ly, ma_muc_do_uu_tien, ma_don_vi_yeu_cau, ma_du_an, ma_nhom_tai_khoan, ten_cong_viec, thoi_gian_them_cong_viec, thoi_gian_bat_dau_cong_viec, thoi_gian_ket_thuc_cong_viec, noi_dung_cong_viec, thoi_gian_xu_ly, thoi_gian_hoan_thanh_cv, ti_le_hoan_thanh_cong_viec, ma_tai_khoan_lich_su, ma_tai_khoan_tham_dinh, tong_thoi_gian_cong_viec, ma_tai_khoan_dg_chat_luong, ma_tai_khoan_dg_thai_do)
                     select v_ma_cong_viec_moi as ma_cong_viec, 
                            p_ma_tai_khoan as ma_tai_khoan, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', 1, 2) as ma_trang_thai_cong_viec, 
                            decode(p_ma_cong_viec_cha, 'null', null, p_ma_cong_viec_cha) as ma_cong_viec_cha, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', null, p_ma_tai_khoan_xu_ly) as ma_tai_khoan_xu_ly, 
                            p_ma_muc_do_uu_tien as ma_muc_do_uu_tien, 
                            p_ma_don_vi_yeu_cau as ma_don_vi_yeu_cau, 
                            p_ma_du_an as ma_du_an,

                            p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                            p_ten_cong_viec as ten_cong_viec, 
                            sysdate as thoi_gian_them_cong_viec, 
                            v_thoi_gian_bat_dau_cong_viec as thoi_gian_bat_dau_cong_viec, 
                            v_thoi_gian_ket_thuc_cong_viec as thoi_gian_ket_thuc_cong_viec, 
                            p_noi_dung_cong_viec as noi_dung_cong_viec, 
                            decode(p_ma_tai_khoan_xu_ly, 'null', null, sysdate) as thoi_gian_xu_ly, 
                            null as thoi_gian_hoan_thanh_cv, 
                            0 as ti_le_hoan_thanh_cong_viec,
                            p_ma_tai_khoan as ma_tai_khoan,
                            p_ma_tai_khoan_tham_dinh as ma_tai_khoan_tham_dinh,
                            v_tong_thoi_gian as tong_thoi_gian_cong_viec,
                            v_ma_tk_danh_gia_chat_luong as ma_tai_khoan_dg_chat_luong,
                            v_ma_tk_danh_gia_thai_do as ma_tai_khoan_dg_thai_do
                     from dual;
                end if;
           end if; -- Kiem tra tai khoan danh gia chat luong va thai do
      end if; -- Kiem tra ten cong viec
  end if; -- Kiem tra tai khoan trong nhom

  -- Tra ve ket qua
  if (v_ma_cong_viec_moi is not null) then  
    open v_result_cur for
         select v_ma_cong_viec_moi as ma_cong_viec,
                p_ten_cong_viec as ten_cong_viec,
                p_ma_tai_khoan as ma_tai_khoan_so_huu,
                nvl(p_ma_tai_khoan_xu_ly, 0) as ma_tai_khoan_xu_ly,
                p_ma_nhom_tai_khoan as ma_nhom_tai_khoan,
                'MOI' as ma_trang_thai_cong_viec,
                'Công việc: ' || p_ten_cong_viec || ' đã được thêm' as thong_bao
         from dual;
  elsif v_kiem_tra_tk_trong_nhom = 0 then
    open v_result_cur for
         select '' as ma_cong_viec, 
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tài khoản hiện tại không thể thêm công việc trong nhóm này!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_da_ton_tai = 1 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Tên công việc đã tồn tại!' as thong_bao
         from dual;
  elsif v_thoi_gian_bat_dau_cong_viec >= v_thoi_gian_ket_thuc_cong_viec then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                 'Thời gian bắt đầu phải nhỏ hơn thời gian kết thúc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_tk_xu_ly_trong_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản xử lý không thuộc nhóm đã chọn!' as thong_bao
         from dual;
  elsif v_kiem_tra_cv_cha_chung_nhom = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhánh công việc mới phải chung nhóm với công việc gốc!' as thong_bao
         from dual;  
  elsif v_kiem_tra_cap_nhan_vien = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Không thể giao việc cho người cấp trên hoặc cùng cấp với bạn!' as thong_bao
         from dual;
  elsif v_tk_tham_dinh_thuoc_nhom_cv = 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản thẩm định phải nằm trong nhóm đã được chọn!' as thong_bao
         from dual; 
  elsif v_tong_thoi_gian <= 0 then
     open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tổng thời gian phải lớn hơn 0!' as thong_bao
         from dual; 
  elsif v_kiem_tra_tong_thoi_gian = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tổng thời gian công việc phải nhỏ hơn hoặc bằng thời gian từ lúc bắt đầu đến lúc kết thúc công việc!' as thong_bao
         from dual; 
  elsif v_ma_tk_danh_gia_chat_luong = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhóm đã chọn không có tài khoản kiểm tra chất lượng công việc!' as thong_bao
         from dual; 
  elsif v_ma_tk_danh_gia_thai_do = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Nhóm đã chọn không có tài khoản kiểm tra thái độ đối với công việc!' as thong_bao
         from dual;
   elsif v_kiem_tra_tk_tham_dinh = 0 then
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
                'Tài khoản thẩm định không hợp lệ (phải là Tổ Trưởng, Tổ Phó, Phó Giám Đốc hoặc Giám đốc trung tâm)!' as thong_bao
         from dual;
   else
    open v_result_cur for
         select '' as ma_cong_viec,
                '' as ten_cong_viec,
                '' as ma_tai_khoan_so_huu,
                '' as ma_tai_khoan_xu_ly,
                '' as ma_nhom_tai_khoan,
                '' as ma_trang_thai_cong_viec,
               'Không thêm được công việc!' as thong_bao
         from dual;
  end if;

  return v_result_cur;

end;
/