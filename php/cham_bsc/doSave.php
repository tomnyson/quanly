<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/nhanvien.php";
$action = $_POST["txtAction"];
if ($action == "tao_ky_cham_bsc") {
    $thang = filter_input(INPUT_POST, "thang");
    $nam = filter_input(INPUT_POST, "nam");


    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

    $nhanvien = $_SESSION["NHANVIEN"];

    $array = get_array_from_function(
        "THEM_KY_CHAM_BSC",
        $thang,
        $nam,
        $nhanvien->getMa_tai_khoan(),
        $nhanvien->getMa_don_vi(),
        $nhanvien->getMa_phong_to(),
        $nhanvien->getCap_nhan_vien()
    );

    echo json_encode($array);
}
