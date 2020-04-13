<?php    
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/session/dang_nhap_session.php";
    
    session_start();
    
    const DANG_NHAP_FUNCTION = "DANG_NHAP_W";
    const POST_KEY_1 = "ten_truy_cap";
    const POST_KEY_2 = "mat_khau";     
    
    $ten_truy_cap =  filter_input(INPUT_POST, POST_KEY_1);
    $mat_khau =  filter_input(INPUT_POST, POST_KEY_2);
    $array = get_array_from_function(DANG_NHAP_FUNCTION, $ten_truy_cap, $mat_khau);
    
    $rowCount = count($array);
    if($rowCount > 0)
    {
        $_SESSION[TEN_TRUY_CAP_SK] = $array[0]["TEN_TRUY_CAP"];
        $_SESSION[MA_TAI_KHOAN_SK] = intval($array[0]["MA_TAI_KHOAN"]);
        $_SESSION[TEN_HIEN_THI_SK] = $array[0]["TEN_HIEN_THI"];
        //$_SESSION[QUYEN_GIAO_VIEC_SK] = $array[0]["QUYEN_GIAO_VIEC"];
        $nhanvien = new NhanVien( intval($array[0]["MA_NHAN_VIEN"]),$array[0]["TEN_NHAN_VIEN"],intval($array[0]["MA_TAI_KHOAN"]),
                                  intval($array[0]["CAP_NHAN_VIEN"]),$array[0]["TEN_TRUY_CAP"],
                                  intval($array[0]["MA_PHONG_TO"]),$array[0]["TEN_PHONG_TO"],
                                  intval($array[0]["MA_DON_VI"]),$array[0]["TEN_DON_VI"]);
        $_SESSION["NHANVIEN"]=$nhanvien;

    }
    
    $response = json_encode($array);
    echo $response;
