<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    
    const LAY_DANH_SACH_CONG_VIEC_FUNCTION = "LAY_DANH_SACH_CONG_VIEC_W";    
    $trang_thai_cong_viec = filter_input(INPUT_GET, "trang_thai_cong_viec");
    $ma_nhom_tai_khoan = filter_input(INPUT_GET, "ma_nhom_tai_khoan");
    $ngay_them_1 = filter_input(INPUT_GET, "ngay_them_1");
    $ngay_them_2 = filter_input(INPUT_GET, "ngay_them_2");    
    $muc_do_uu_tien = filter_input(INPUT_GET, "muc_do_uu_tien");
    $ma_du_an = filter_input(INPUT_GET, "ma_du_an");
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
    $ma_tai_khoan_so_huu = filter_input(INPUT_GET, "ma_tai_khoan_so_huu");
    $ma_tai_khoan_xu_ly = filter_input(INPUT_GET, "ma_tai_khoan_xu_ly");
    $ma_tai_khoan_tham_dinh = filter_input(INPUT_GET, "ma_tai_khoan_tham_dinh");
    $ma_cong_viec_cha = filter_input(INPUT_GET, "ma_cong_viec_cha");
    $ma_don_vi_yeu_cau = filter_input(INPUT_GET, "ma_don_vi_yeu_cau");
    $cong_viec_dang_xu_ly = filter_input(INPUT_GET, "cong_viec_dang_xu_ly");
    $ma_cong_viec = filter_input(INPUT_GET, "ma_cong_viec");
    
    $array = get_array_from_function(LAY_DANH_SACH_CONG_VIEC_FUNCTION, 
            $trang_thai_cong_viec, 
            $ma_nhom_tai_khoan, 
            $ngay_them_1, 
            $ngay_them_2,
            $muc_do_uu_tien,
            $ma_du_an,
            $ma_tai_khoan,
            $ma_tai_khoan_so_huu,
            $ma_tai_khoan_xu_ly,
            $ma_tai_khoan_tham_dinh,
            $ma_cong_viec_cha,
            $ma_don_vi_yeu_cau,
            $cong_viec_dang_xu_ly,
            $ma_cong_viec);
    
    $json_data = array (
        "data" => $array
    );
    
    echo json_encode($json_data);