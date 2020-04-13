<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_FUNCTION = "LAY_DS_DO_UU_TIEN_W";    
    
    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION);    
    
    echo json_encode($array);