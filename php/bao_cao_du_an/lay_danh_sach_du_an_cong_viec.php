<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    
    const LAY_DANH_SACH_FUNCTION = "LAY_DANH_SACH_CONG_VIEC_DU_AN";  
    // $ma_cong_viec_du_an_sess = $_SESSION[MA_CONG_VIEC_DU_AN_SK];
    // $ma_cong_viec_du_an =  filter_input(INPUT_GET, "ma_cong_viec_du_an");
    
    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION );
            // $ma_cong_viec_du_an,
            // $ma_cong_viec_du_an_sess );
    
    $json_data = array (
        "data" => $array
    );
    
    echo json_encode($json_data);