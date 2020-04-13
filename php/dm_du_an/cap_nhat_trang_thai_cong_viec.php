<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_FUNCTION = "CAP_NHAT_TRANG_THAI_CV_W";    
    
    $ma_cong_viec = filter_input(INPUT_POST, "ma_cong_viec");
    $ma_trang_thai_cong_viec = filter_input(INPUT_POST, "ma_trang_thai_cong_viec");
    $ngay_hoan_thanh = filter_input(INPUT_POST, "ngay_hoan_thanh");
    
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION, 
            $ma_cong_viec,
            $ma_tai_khoan,
            $ma_trang_thai_cong_viec,
            $ngay_hoan_thanh
            );    
    
    echo json_encode($array);