<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_FUNCTION = "CAP_NHAT_TI_LE_HT_CV_W";    
    
    $ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");
    $ti_le_hoan_thanh_cong_viec = filter_input(INPUT_POST, "ti_le_hoan_thanh_cong_viec");
    
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION, 
            $ma_cong_viec,
            $ma_tai_khoan,
            $ti_le_hoan_thanh_cong_viec
            );    
    
    echo json_encode($array);