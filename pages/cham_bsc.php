<?php
    date_default_timezone_set("Asia/Bangkok");
    $ngay_hien_tai = date("d/m/Y");
    $ngay_dau_cua_thang_hien_tai = date('01/m/Y'); 
    $ngay_cuoi_cua_thang_hien_tai  = date('t/m/Y');
?>
<div id="cham_bsc" class="container-fluid">            
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card fixed-content" >
                <div class="header" id="congviec_header">                    
                    <div>
                    <h2>
                        Danh sách công việc<br><br>
                        <select id="thang" style="width: 100px" value="11">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select> 
                        <select id="nam" style="width: 100px" >
                            <option>2018</option>
                            <option>2019</option>
                            <option>2020</option>
                        </select> 
                        <button type="button" title="Tạo kỳ BSC" class="btn bg-teal-button waves-effect" id="them_ky_bsc"><i class="material-icons" style="color:white;">add</i><span>Tạo kỳ BSC</span></button>
                        <button type="button" title="Xem điểm BSC" class="btn bg-teal-button waves-effect" id="xem_ky_bsc"><i class="material-icons" style="color:white;">arrow_right_alt</i><span>Xem điểm BSC</span></button> 
                        
                        
                    </h2>
                    </div>
                </div>
                <div class="body">
                    <div>
                        <table id="dsnhanvien"  class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <tfoot>
                        </tfoot>
                        </table>
                    </div>
                </div>                   
            </div>
        </div>
    </div>    
    <!--<div class="row clearfix">
        <div class="modal fade" id="them_cong_viec_dialog" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 id="them_cong_viec_dialog_title" class="modal-title">Thông tin công việc</h2>
                    </div>     
                    <div class="modal-body" id="them_cong_viec_modal_body">
                        <form>
                            <div class="form-group form-float form-line">
                                <div class="form-line">
                                    <input id="ten_cong_viec" name="ten_cong_viec" type="text" class="form-control" required>
                                    <label class="form-label">Tên công việc</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <textarea id="noi_dung_cong_viec" name="noi_dung_cong_viec" cols="30" rows="5" class="form-control no-resize" required></textarea>
                                    <label class="form-label">Nội dung công việc</label>
                                </div>
                            </div>
                            <div class="col-lg-12  form-float form-line" style="padding-right: 0px; padding-left: 0px;">
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Dự án</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="du_an" style="width: 100%" ></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Đơn vị yêu cầu</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float" >
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="don_vi_yeu_cau" style="width: 100%" multiple></select> 
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Độ ưu tiên</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="do_uu_tien" style="width: 100%" ></select>   
                                        </div>
                                    </div>
                                </div>                                
                            </div>   

                            <div class="col-lg-12  form-float form-line" style="padding-right: 0px; padding-left: 0px; margin-top:5">
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Nhóm</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="nhom_tai_khoan" style="width: 100%" ></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Người xử lý</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float" >
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="tai_khoan_xu_ly" style="width: 100%" ></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                        <label class="form-label">Người đánh giá</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="tai_khoan_tham_dinh" style="width: 100%" ></select>
                                        </div>
                                    </div>
                                </div>                                
                            </div> 

                            <div class="col-lg-12 form-group-sm form-line" style="padding-left: 0px; margin-top:5px" >
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">                                            
                                            <label class="form-label">Thời gian bắt đầu</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input id="thoi_gian_bat_dau" type="text" class="form-control date" value="<?php echo $ngay_hien_tai . " 07:00";  ?>">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">                                            
                                            <label class="form-label">Thời gian kết thúc</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input id="thoi_gian_ket_thuc" type="text" class="form-control date"  value="<?php echo $ngay_hien_tai . " 17:30"; ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            

                            <div class="col-lg-12 form-group-sm form-line" style="padding-left: 0px; margin-top:5px" >
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">                                            
                                            <label class="form-label">Loại công việc</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <select id="loai_cv" style="width: 100%" ></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">                                            
                                            <label class="form-label">Trọng số công việc</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input id="trong_so" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>                          
                            
                            
                            <button id="luu_cong_viec_btn" type="button" class="btn bg-green waves-effect">
                                <i class="material-icons">save</i>
                                <span>Lưu</span>
                            </button>
                            <button type="button" class="btn bg-grey right waves-effect" onclick="$('#them_cong_viec_dialog').modal('hide')">
                                <i class="material-icons">close</i>
                                <span>Đóng<span>
                            </button>
                            <input type="hidden" id="ma_cong_viec_cha" value="">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="modal fade" id="tim_cong_viec_nang_cao_dialog" tabindex="-1" role="dialog" style="visible:false;">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 id="tim_cong_viec_nang_cao_dialog_title" class="modal-title">Tìm kiếm nâng cao</h2>
                    </div>     
                    <div class="modal-body" id="tim_cong_viec_nang_cao_modal_body">
                        <form>
                            <div class="form-group-sm">
                                <label class="form-label">Dự án</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="du_an_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Đơn vị yêu cầu</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="don_vi_yeu_cau_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Độ ưu tiên</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="do_uu_tien_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Nhóm</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="nhom_tai_khoan_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Người tạo</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="tai_khoan_tao_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Người xử lý</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="tai_khoan_xu_ly_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Người thẩm định</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="tai_khoan_tham_dinh_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group-sm">
                                <label class="form-label">Trạng thái</label>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <select id="trang_thai_tim_nang_cao" style="width: 100%" > 
                                            </select> 
                                        </div>
                                    </div>                                             
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input id="thoi_gian_them_1_tim_nang_cao" type="text" class="form-control date" value="<?php echo $ngay_dau_cua_thang_hien_tai;  ?>">
                                    <label class="form-label">Khoảng thời gian từ ngày</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input id="thoi_gian_them_2_tim_nang_cao" type="text" class="form-control date" value="<?php echo $ngay_cuoi_cua_thang_hien_tai;  ?>">
                                    <label class="form-label">Khoảng thời gian đến ngày</label>
                                </div>
                            </div>
                            <button id="tim_cong_viec_nang_cao_button" type="button" class="btn bg-blue waves-effect">
                                <i class="material-icons">search</i>
                                <span>Tìm kiếm</span>
                            </button>
                            <button type="button" class="btn bg-grey right waves-effect" onclick="$('#tim_cong_viec_nang_cao_dialog').modal('hide')">
                                <i class="material-icons">close</i>
                                <span>Đóng<span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row clearfix">
        <div class="modal fade" id="loc_danh_sach_cong_viec_dialog" tabindex="-1" role="dialog" style="visible:false;">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 id="loc_danh_sach_cong_viec_dialog_title" class="modal-title">Lọc danh sách công việc hiện tại</h2>
                    </div>     
                    <div class="modal-body" id="loc_danh_sach_cong_viec_modal_body">
                        <form>
                            <button id="them_cot_loc_cong_viec" type="button" class="btn bg-green waves-effect">
                                <i class="material-icons">add</i>
                                <span>Thêm điều kiện</span>
                            </button>
                            <br/><br/>
                            <button id="loc_danh_sach_cong_viec_button" type="button" class="btn bg-blue waves-effect">
                                <i class="material-icons">search</i>
                                <span>Lọc công việc</span>
                            </button>
                            <button type="button" class="btn bg-grey right waves-effect" onclick="$('#loc_danh_sach_cong_viec_dialog').modal('hide')">
                                <i class="material-icons">close</i>
                                <span>Đóng<span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>-->
</div>