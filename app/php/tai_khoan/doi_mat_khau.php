<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";


const LAY_DANH_SACH_FUNCTION = "DOI_MAT_KHAU_W";
$ten_truy_cap = $_SESSION[TEN_TRUY_CAP_SK];

$mat_khau_cu =  filter_input(INPUT_POST, "mat_khau_cu");
$mat_khau_moi =  filter_input(INPUT_POST, "mat_khau_moi");

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $ten_truy_cap,
        $mat_khau_cu,
        $mat_khau_moi
);

echo json_encode($array);
