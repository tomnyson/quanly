<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "DANH_GIA_THAI_DO_CV_W";

$ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");
$diem_thai_do = filter_input(INPUT_POST, "diem_thai_do");

$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $ma_cong_viec,
        $ma_tai_khoan,
        $diem_thai_do
);

echo json_encode($array);
