<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";

const LAY_DANH_SACH_FUNCTION = "LAY_DS_LOAI_CONG_VIEC";


// $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

$array = get_array_from_function(LAY_DANH_SACH_FUNCTION);

echo json_encode($array);
