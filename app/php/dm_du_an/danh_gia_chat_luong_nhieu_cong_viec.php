<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "DANH_GIA_CHAT_LUONG_NHIEU_CV_W";

$chuoi_ma_cong_viec = filter_input(INPUT_POST, "chuoi_ma_cong_viec");
$diem_chat_luong = filter_input(INPUT_POST, "diem_chat_luong");

$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

$array = get_array_from_function(
        LAY_DANH_SACH_FUNCTION,
        $chuoi_ma_cong_viec,
        $ma_tai_khoan,
        $diem_chat_luong
);

echo json_encode($array);
