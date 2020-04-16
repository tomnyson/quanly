<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "LAY_DS_TK_THAM_DINH_W";

$ma_nhom_tai_khoan = filter_input(INPUT_GET, "ma_nhom_tai_khoan");
$ma_tai_khoan_xu_ly = filter_input(INPUT_GET, "ma_tai_khoan_xu_ly");

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $ma_nhom_tai_khoan,
        $ma_tai_khoan_xu_ly
);

echo json_encode($array);
