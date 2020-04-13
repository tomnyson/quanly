<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_FUNCTION = "THAM_DINH_CONG_VIEC_DUNG_HAN_W";    
    
    $chuoi_ma_cong_viec = filter_input(INPUT_POST, "chuoi_ma_cong_viec");
    
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION, 
            $chuoi_ma_cong_viec,
            $ma_tai_khoan            
            );    
    
    echo json_encode($array);