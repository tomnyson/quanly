<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/nhanvien.php";
    
    const LAY_DANH_SACH_FUNCTION = "THEM_CONG_VIEC_W";    
    
    $ma_cong_viec_cha = filter_input(INPUT_POST, "ma_cong_viec_cha");
    $ten_cong_viec = filter_input(INPUT_POST, "ten_cong_viec");
    $noi_dung_cong_viec = filter_input(INPUT_POST, "noi_dung_cong_viec");
    $du_an = filter_input(INPUT_POST, "du_an");
    $don_vi_yeu_cau = filter_input(INPUT_POST, "don_vi_yeu_cau");
    $do_uu_tien = filter_input(INPUT_POST, "do_uu_tien");
    $nhom_tai_khoan = filter_input(INPUT_POST, "nhom_tai_khoan");
    $tai_khoan_xu_ly = filter_input(INPUT_POST, "tai_khoan_xu_ly");
    $thoi_gian_bat_dau = filter_input(INPUT_POST, "thoi_gian_bat_dau");
    $thoi_gian_ket_thuc = filter_input(INPUT_POST, "thoi_gian_ket_thuc");    
    $tai_khoan_tham_dinh = filter_input(INPUT_POST, "tai_khoan_tham_dinh");
    $loai_cv = filter_input(INPUT_POST, "loai_cv");
    $trong_so = filter_input(INPUT_POST, "trong_so");
    
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];

    $nhanvien = $_SESSION["NHANVIEN"];
    
    $array = get_array_from_function(LAY_DANH_SACH_FUNCTION, 
            $ten_cong_viec,
            $noi_dung_cong_viec,
            $nhanvien->getMa_tai_khoan(),
            $du_an,
            $don_vi_yeu_cau,
            $do_uu_tien,
            $nhom_tai_khoan,
            $thoi_gian_bat_dau,
            $thoi_gian_ket_thuc,
            $ma_cong_viec_cha,
            $tai_khoan_xu_ly,            
            $tai_khoan_tham_dinh,
            $loai_cv,
            $trong_so
            );    
    
    echo json_encode($array);