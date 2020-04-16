<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "THAM_DINH_CONG_VIEC_W";

$ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");

$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $ma_cong_viec,
        "0",
        "01/01/2000 00:00",
        $ma_tai_khoan
);

echo json_encode($array);
