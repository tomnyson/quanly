<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/nhanvien.php";
const TEN_TRUY_CAP_SK = "TEN_TRUY_CAP";
const MA_TAI_KHOAN_SK = "MA_TAI_KHOAN";             // Số từ 1 đến 999: đã đăng nhập                    (dang_nhap.php)
const TEN_HIEN_THI_SK = "TEN_HIEN_THI";             // Tên hiển thị                                     (dang_nhap.php)
const QUYEN_GIAO_VIEC_SK = "QUYEN_GIAO_VIEC";       // Quyền giao việc: 1: có quyền, 0: không có quyền  (dang_nhap_tai_khoan.php)
