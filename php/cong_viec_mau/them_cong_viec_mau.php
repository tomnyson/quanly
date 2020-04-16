<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/nhanvien.php";

const LAY_DANH_SACH_FUNCTION = "THEM_CONG_VIEC_MAU";

$ten_cong_viec = filter_input(INPUT_POST, "ten_cong_viec");
$noi_dung_cong_viec = filter_input(INPUT_POST, "noi_dung_cong_viec");
$ma_du_an = filter_input(INPUT_POST, "du_an");
$loai_cv = filter_input(INPUT_POST, "loai_cv");

// $nhanvien = $_SESSION["NHANVIEN"];

$array = get_array_from_function(
    LAY_DANH_SACH_FUNCTION,
    $ten_cong_viec,
    $noi_dung_cong_viec,
    // $nhanvien->getMa_tai_khoan(),
    $ma_du_an,
    $loai_cv
);

echo json_encode($array);
