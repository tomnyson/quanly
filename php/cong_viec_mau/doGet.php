<?php
	include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";	
	
	$action=$_GET["txtAction"];	
	// $nhanvien=$_SESSION["NHANVIEN"];
	
	if ($action=="lay_danh_sach_don_vi_yeu_cau")
	{

		$du_an = filter_input(INPUT_GET, "du_an");
		// $ma_tai_khoan=$nhanvien->getMa_tai_khoan();
	   
	    $array = get_array_from_function("LAY_DANH_SACH_DUAN",
	            // $ma_tai_khoan,
	            $du_an
	            );
	    echo json_encode($array);

	} 
	
?>