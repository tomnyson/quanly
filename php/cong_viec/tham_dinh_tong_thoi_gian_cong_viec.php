<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "THAM_DINH_TONG_THOI_GIAN_W";

$ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");
$tong_thoi_gian = filter_input(INPUT_POST, "tong_thoi_gian");

$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $ma_cong_viec,
        $ma_tai_khoan,
        $tong_thoi_gian
);

echo json_encode($array);
