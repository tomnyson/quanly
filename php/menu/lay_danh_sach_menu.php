<?php
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/database/connection.php";
    include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/quanlycongviec/php/tai_khoan/kiem_tra_dang_nhap.php";
    
    const LAY_DANH_SACH_MENU_FUNCTION = "LAY_DANH_SACH_MENU_W";
    $ma_tai_khoan = $_SESSION[MA_TAI_KHOAN_SK];
    
    $array = get_array_from_function(LAY_DANH_SACH_MENU_FUNCTION, $ma_tai_khoan,0,0);
    $response="[";

    $rowCount = count($array);
    for ($i = 0; $i < $rowCount; $i++) {
    	
    	if ($i==0)
    	{
    		$response = $response."{";
    		$response =$response.'"text": "'.$array[$i]["TEN_MENU"].'","link": "'.$array[$i]["LINK"].'"';
    		// call de quy
    		$response=$response.''.getSubcategory($ma_tai_khoan,$array[$i]["MA_MENU"]);
    		$response = $response.'}';
    	}
    	else
    	{
    		$response = $response.",{";
    		$response =$response.'"text": "'.$array[$i]["TEN_MENU"].'","link": "'.$array[$i]["LINK"].'"';
    		// call de quy
    		$response=$response.''.getSubcategory($ma_tai_khoan,$array[$i]["MA_MENU"]);

    		$response = $response."}";
    	}
    	

    	
    	
	}
	$response=$response."]";
    //$response = json_encode($response);
    echo $response;
    /*$array[$i]["MA_MENU"];
    	$array[$i]["TEN_MENU"];
    	$array[$i]["LINK"];
    	$array[$i]["MA_MENU_CHA"];*/
 
//Ham in cac con cua 1 nut
function getSubcategory($p_matk,$ma_menu_cha){
	$array1 = get_array_from_function(LAY_DANH_SACH_MENU_FUNCTION, $p_matk,1,$ma_menu_cha);
	$response1="";
	$rowCount1 = count($array1);
	if ($rowCount1>0)
	{
		$response1=$response1.',"nodes":[';
	}

    for ($j = 0; $j < $rowCount1; $j++) {
    	if ($j==0)
    	{
	    	$response1 = $response1."{";
			$response1 =$response1.'"text": "'.$array1[$j]["TEN_MENU"].'","link": "'.$array1[$j]["LINK"].'"';
			// call de quy
			$response1=$response1.''.getSubcategory($p_matk,$array1[$j]["MA_MENU"]);
			$response1 = $response1.'}';
		}
		else
		{
			$response1 = $response1.",{";
			$response1 =$response1.'"text": "'.$array1[$j]["TEN_MENU"].'","link": "'.$array1[$j]["LINK"].'"';
			// call de quy
			$response1=$response1.''.getSubcategory($p_matk,$array1[$j]["MA_MENU"]);
			$response1 = $response1.'}';
		}

    }
    if ($rowCount1>0)
	{
		$response1=$response1."]";
	}
    return $response1;
}
