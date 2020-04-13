<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
        
    const LAY_DANH_SACH_CONG_VIEC_FUNCTION = "LAY_DS_CONG_VIEC_CUA_TOI_W";    
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];    
    
    $array = get_array_from_function(LAY_DANH_SACH_CONG_VIEC_FUNCTION, 
            $ma_tai_khoan);
    
    echo json_encode($array);