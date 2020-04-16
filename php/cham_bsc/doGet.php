<?php
	include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/tai_khoan/kiem_tra_dang_nhap.php";	
	$action=$_GET["txtAction"];	
	//$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
	$nhanvien=$_SESSION["NHANVIEN"];
	if ($action=="lay_diem_bsc_thang")
	{

		$thang = filter_input(INPUT_GET, "thang");
		$nam = filter_input(INPUT_GET, "nam");
		$ma_tai_khoan=$nhanvien->getMa_tai_khoan();
	    //$ma_tai_khoan_xu_ly = filter_input(INPUT_GET, "ma_tai_khoan_xu_ly");    
	    
	    $array = get_array_from_function("LAY_BAO_CAO_BSC",
	            $thang,
	            $nam,
	            $nhanvien->getMa_nhan_vien(),
	            $nhanvien->getMa_don_vi(),
                $nhanvien->getMa_phong_to(),
                $nhanvien->getCap_nhan_vien() 
	            );
	    $json_data = array (
        "data" => $array
    	);
	    
	    echo json_encode($json_data);

	}
