<?php
	include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";	
	$action=$_GET["txtAction"];	
	//$ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
	$nhanvien=$_SESSION["NHANVIEN"];
	if ($action=="lay_danh_sach_don_vi_yeu_cau")
	{

		$du_an = filter_input(INPUT_GET, "du_an");
		$ma_tai_khoan=$nhanvien->getMa_tai_khoan();
	    //$ma_tai_khoan_xu_ly = filter_input(INPUT_GET, "ma_tai_khoan_xu_ly");    
	    
	    $array = get_array_from_function("LAY_DS_DVYC_THEO_DU_AN_W",
	            $ma_tai_khoan,
	            $du_an
	            );
	    
	    echo json_encode($array);

	} 
	elseif ($action=="getLoaiCongViec") {
			$thoi_gian_bat_dau = filter_input(INPUT_GET, "thoi_gian_bat_dau");
		    //$ma_tai_khoan_xu_ly = filter_input(INPUT_GET, "ma_tai_khoan_xu_ly");    		    
		    $array = get_array_from_function("LAY_DANH_MUC_LOAI_CV",	
		    	    $nhanvien->getMa_nhan_vien(),
		            $nhanvien->getMa_phong_to(),
		            $thoi_gian_bat_dau
		            );
		    
		    echo json_encode($array);
		}	
?>