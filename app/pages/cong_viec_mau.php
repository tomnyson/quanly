<?php
    date_default_timezone_set("Asia/Bangkok");
    $ngay_hien_tai = date("d/m/Y");
    $ngay_dau_cua_thang_hien_tai = date('01/m/Y'); 
    $ngay_cuoi_cua_thang_hien_tai  = date('t/m/Y');
?>
<div id="cong_viec" class="container-fluid">            
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card fixed-content" >
                <div class="header" id="congviec_header">                    
                    <div>
                        <h2>
                            Danh sách công việc mẫu<br><br>
                            <button type="button" title="Thêm công việc" class="btn bg-teal-button waves-effect" onclick=show_them_cong_viec_dialog()>
                            <i class="material-icons" style="color:white;">add</i><span>Thêm công việc mẫu</span></button>
                        </h2>
                    </div>  
                    <!-- <div style="margin-top:5" >
                        <select id="trang_thai" style="width: 200px" ></select>
                       <button type="button" title="Tải lại danh sách công việc" 
                       class="btn bg-teal-button waves-effect" onclick=tai_lai_danh_sach_cong_viec()>
                       <i class="material-icons" style="color:white;">refresh</i><span>Tải lại</span></button>
                    </div> -->
                </div>
                    <div class="body">
                        <div>
                            <table id="cong_viec_mau_dt" class="table table-bordered table-striped table-hover dataTable js-exportable">
                                <tfoot>
                                </tfoot>
                            </table>
                        </div>
                    </div>                   
            </div>
        </div>
    </div>    
   

    <div class="row clearfix">
        <div class="modal fade" id="them_cong_viec_dialog" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 id="them_cong_viec_dialog_title" class="modal-title">Thông tin công việc mẫu</h2>
                    </div>     
                    <div class="modal-body" id="them_cong_viec_modal_body">
                        <form>
                            <div class="form-group form-float form-line">
                                <div class="form-line">
                                    <input id="ten_cong_viec" name="ten_cong_viec" type="text" class="form-control" required>
                                    <label class="form-label">Tên công việc mẫu</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <textarea id="noi_dung_cong_viec" name="noi_dung_cong_viec" cols="30" rows="5" class="form-control no-resize" required></textarea>
                                    <label class="form-label">Nội dung công việc mẫu</label>
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
                                            <select id="du_an" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>>
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
                                
                                
                            </div>
                                                
                            <button id="luu_cong_viec_btn" type="button" class="btn bg-green waves-effect">
                                <i class="material-icons">save</i>
                                <span>Lưu</span>
                            </button>
                            <button type="button" class="btn bg-grey right waves-effect" onclick="$('#them_cong_viec_dialog').modal('hide')">
                                <i class="material-icons">close</i>
                                <span>Đóng<span>
                            </button>
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>  
</div>