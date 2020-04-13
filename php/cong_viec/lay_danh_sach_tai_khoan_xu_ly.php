<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_FUNCTION = "LAY_DS_TAI_KHOAN_XU_LY_W";    
    
    $ma_nhom_tai_khoan = filter_input(INPUT_GET, "ma_nhom_tai_khoan");
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
    
    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION, 
            $ma_nhom_tai_khoan,
            $ma_tai_khoan);    
    
    echo json_encode($array);