<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";


const LAY_DANH_SACH_FUNCTION = "LAY_DANH_SACH_TAI_KHOAN_W";
$ma_tai_khoan_sess = $_SESSION[MA_TAI_KHOAN_SK];
$ma_tai_khoan =  filter_input(INPUT_GET, "ma_tai_khoan");

$array = get_array_from_function(
    LAY_DANH_SACH_FUNCTION,
    $ma_tai_khoan,
    $ma_tai_khoan_sess
);

$json_data = array(
    "data" => $array
);

echo json_encode($json_data);
