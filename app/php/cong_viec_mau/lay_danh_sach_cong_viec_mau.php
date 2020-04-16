<?php
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";


const LAY_DANH_SACH_CONG_VIEC_FUNCTION = "LAY_DANH_SACH_CONG_VIEC_MAU";

//  $ma_cong_viec_mau = filter_input(INPUT_GET, "ma_cong_viec_mau");
// $du_an = filter_input(INPUT_GET, "du_an");
// $loai_cv = filter_input(INPUT_GET, "loai_cv");
/* $ten_cong_viec = filter_input(INPUT_GET, "ten_cong_viec");
    $noi_dung_cong_viec = filter_input(INPUT_GET, "noi_dung_cong_viec");*/


$array = get_array_from_function(
  LAY_DANH_SACH_CONG_VIEC_FUNCTION
  // , 
  // $ma_cong_viec_mau, 
  // $du_an, 
  // $loai_cv,
  /*$ten_cong_viec,
            $noi_dung_cong_viec*/
);

$json_data = array(
  "data" => $array
);

echo json_encode($json_data);
