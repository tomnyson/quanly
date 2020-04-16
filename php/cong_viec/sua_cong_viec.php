<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "SUA_TAI_KHOAN_CONG_VIEC_W";

$ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");
$ten_cong_viec = filter_input(INPUT_POST, "ten_cong_viec");
$noi_dung_cong_viec = filter_input(INPUT_POST, "noi_dung_cong_viec");
$du_an = filter_input(INPUT_POST, "du_an");
$don_vi_yeu_cau = filter_input(INPUT_POST, "don_vi_yeu_cau");
$do_uu_tien = filter_input(INPUT_POST, "do_uu_tien");
$thoi_gian_bat_dau = filter_input(INPUT_POST, "thoi_gian_bat_dau");
$thoi_gian_ket_thuc = filter_input(INPUT_POST, "thoi_gian_ket_thuc");
//$tong_thoi_gian_cong_viec = filter_input(INPUT_POST, "tong_thoi_gian_cong_viec");
$loai_cv = filter_input(INPUT_POST, "loai_cv");
$trong_so = filter_input(INPUT_POST, "trong_so");
/*if($tong_thoi_gian_cong_viec === "")
    {
        $tong_thoi_gian_cong_viec = "0";
    }*/
//$tong_thoi_gian_cong_viec_f = floatval($tong_thoi_gian_cong_viec);

//print_r($_POST);exit();

$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
$nhanvien = $_SESSION["NHANVIEN"];

$array = get_array_from_function(
    LAY_DANH_SACH_FUNCTION,
    $ma_cong_viec,
    $ten_cong_viec,
    $noi_dung_cong_viec,
    $don_vi_yeu_cau,
    $du_an,
    $do_uu_tien,
    $thoi_gian_bat_dau,
    $thoi_gian_ket_thuc,
    $nhanvien->getMa_tai_khoan(),
    $loai_cv,
    $trong_so
);

echo json_encode($array);
