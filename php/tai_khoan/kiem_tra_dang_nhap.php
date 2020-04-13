<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/session/dang_nhap_session.php";
    
    if (session_status() == PHP_SESSION_NONE) 
    {
        session_start();
    }
    
    if(!isset($_SESSION[MA_TAI_KHOAN_SK]) || !is_integer($_SESSION[MA_TAI_KHOAN_SK]))
    {
        echo "CHUA_DANG_NHAP";
        exit();
    }
    

