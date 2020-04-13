<?php
    date_default_timezone_set("Asia/Bangkok");
    $ngay_hien_tai = date("d/m/Y");
    $ngay_dau_cua_thang_hien_tai = date('01/m/Y'); 
    $ngay_cuoi_cua_thang_hien_tai  = date('t/m/Y');
?>
<div id="cong_viec" class="container-fluid">
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card fixed-content">
                <div class="header" id="congviec_header">
                    <div>
                        <h2>
                            Danh sách công việc dự án<br><br>
                            <button type="button" title="Thêm công việc" class="btn bg-teal-button waves-effect"
                                onclick=show_them_cong_viec_dialog()><i class="material-icons"
                                    style="color:white;">add</i><span>Thêm công việc dự án</span></button>
                            <button type="button" title="Tìm công việc vừa thao tác"
                                class="btn bg-teal-button waves-effect" onclick=tim_cong_viec_vua_thao_tac()><i
                                    class="material-icons" style="color:white;">arrow_right_alt</i><span>CV vừa thao
                                    tác</span></button>
                            <button type="button" title="Tìm công việc nhiều lựa chọn"
                                class="btn bg-teal-button waves-effect" onclick=show_tim_kiem_nang_cao_dialog()><i
                                    class="material-icons" style="color:white;">search</i><span>Tìm công
                                    việc</span></button>
                            <button type="button" title="Thẩm định những công việc đã chọn hoàn thành đúng hạn"
                                class="btn bg-teal-button waves-effect" onclick=tham_dinh_nhieu_cong_viec()><i
                                    class="material-icons" style="color:white;">check</i><span>Thẩm định</span></button>
                            <button type="button" title="Đánh giá chất lượng nhiều công việc"
                                class="btn bg-teal-button waves-effect" onclick=danh_gia_chat_luong_nhieu_cong_viec()><i
                                    class="material-icons" style="color:white;">thumb_up</i><span>ĐG chất
                                    lượng</span></button>
                            <button type="button" title="Đánh giá thái độ nhiều công việc"
                                class="btn bg-teal-button waves-effect" onclick=danh_gia_thai_do_nhieu_cong_viec()><i
                                    class="material-icons" style="color:white;">tag_faces</i><span>ĐG thái
                                    độ</span></button>
                            <button type="button" title="Thẩm định tổng thời gian nhiều công việc"
                                class="btn bg-teal-button waves-effect"
                                onclick=tham_dinh_tong_thoi_gian_nhieu_cong_viec()><i class="material-icons"
                                    style="color:white;">timer</i><span>Thẩm định TTG</span></button>

                        </h2>
                    </div>

                    <div style="margin-top:5">
                        <select id="trang_thai" style="width: 200px"></select>
                        <button type="button" title="Tải lại danh sách công việc"
                            class="btn bg-teal-button waves-effect" onclick=tai_lai_danh_sach_cong_viec()><i
                                class="material-icons" style="color:white;">refresh</i><span>Tải lại</span></button>
                    </div>

                </div>
                <div class="body">
                    <div>
                        <table id="cong_viec_du_an_dt"
                            class="table table-bordered table-striped table-hover dataTable js-exportable">
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
                        <h2 id="them_cong_viec_dialog_title" class="modal-title">Thông tin công việc</h2>
                    </div>
                    <div class="modal-body" id="them_cong_viec_modal_body">
                        <form>
                            <div class="form-group form-float form-line">
                                <div class="form-line">
                                    <input id="ten_cong_viec_du_an" name="ten_cong_viec_du_an" type="text"
                                        class="form-control" required>
                                    <label class="form-label">Tên công việc</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <textarea id="noi_dung_cong_viec_du_an" name="noi_dung_cong_viec_du_an" cols="30"
                                        rows="5" class="form-control no-resize" required></textarea>
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
                                            <select id="du_an" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <label class="form-label">Đơn vị yêu cầu</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
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
                                            <select id="do_uu_tien" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12  form-float form-line"
                                style="padding-right: 0px; padding-left: 0px; margin-top:5">
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <label class="form-label">Nhóm</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="nhom_tai_khoan" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="padding-right: 0px; padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <label class="form-label">Người xử lý</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="col-lg-12" style="padding-left: 0px;">
                                            <select id="tai_khoan_xu_ly" style="width: 100%"></select>
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
                                            <select id="tai_khoan_tham_dinh" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12 form-group-sm form-line" style="padding-left: 0px; margin-top:5px">
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">
                                            <label class="form-label">Thời gian bắt đầu</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input id="thoi_gian_bat_dau" type="text" class="form-control date"
                                                value="<?php echo $ngay_hien_tai . " 07:00";  ?>">
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
                                            <input id="thoi_gian_ket_thuc" type="text" class="form-control date"
                                                value="<?php echo $ngay_hien_tai . " 17:30"; ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-12 form-group-sm form-line" style="padding-left: 0px; margin-top:5px">
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <div class="form-group-sm">
                                        <div class="form-line">
                                            <label class="form-label">Loại công việc</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <select id="loai_cv" style="width: 100%"></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6" style="padding-left: 0px;">
                                    <form action="upload.php" method="post" enctype="multipart/form-data">
                                        Chọn file cần upload:
                                        <input type="file" name="fileToUpload" id="fileToUpload">
                                        <input type="submit" value="Upload" name="submit">
                                    </form>

                                </div>
                            </div>
                            <button id="luu_cong_viec_btn" type="button" class="btn bg-green waves-effect">
                                <i class="material-icons">save</i>
                                <span>Lưu</span>
                            </button>
                            <button type="button" class="btn bg-grey right waves-effect"
                                onclick="$('#them_cong_viec_dialog').modal('hide')">
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
                                        <select id="du_an_tim_nang_cao" style="width: 100%">
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
                                        <select id="don_vi_yeu_cau_tim_nang_cao" style="width: 100%">
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
                                        <select id="do_uu_tien_tim_nang_cao" style="width: 100%">
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
                                        <select id="nhom_tai_khoan_tim_nang_cao" style="width: 100%">
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
                                        <select id="tai_khoan_tao_tim_nang_cao" style="width: 100%">
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
                                        <select id="tai_khoan_xu_ly_tim_nang_cao" style="width: 100%">
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
                                        <select id="tai_khoan_tham_dinh_tim_nang_cao" style="width: 100%">
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
                                        <select id="trang_thai_tim_nang_cao" style="width: 100%">
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group form-float">
                            <div class="form-line">
                                <input id="thoi_gian_them_1_tim_nang_cao" type="text" class="form-control date"
                                    value="<?php echo $ngay_dau_cua_thang_hien_tai;  ?>">
                                <label class="form-label">Khoảng thời gian từ ngày</label>
                            </div>
                        </div>
                        <div class="form-group form-float">
                            <div class="form-line">
                                <input id="thoi_gian_them_2_tim_nang_cao" type="text" class="form-control date"
                                    value="<?php echo $ngay_cuoi_cua_thang_hien_tai;  ?>">
                                <label class="form-label">Khoảng thời gian đến ngày</label>
                            </div>
                        </div>
                        <button id="tim_cong_viec_nang_cao_button" type="button" class="btn bg-blue waves-effect">
                            <i class="material-icons">search</i>
                            <span>Tìm kiếm</span>
                        </button>
                        <button type="button" class="btn bg-grey right waves-effect"
                            onclick="$('#tim_cong_viec_nang_cao_dialog').modal('hide')">
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
                    <h2 id="loc_danh_sach_cong_viec_dialog_title" class="modal-title">Lọc danh sách công việc hiện tại
                    </h2>
                </div>
                <div class="modal-body" id="loc_danh_sach_cong_viec_modal_body">
                    <form>
                        <button id="them_cot_loc_cong_viec" type="button" class="btn bg-green waves-effect">
                            <i class="material-icons">add</i>
                            <span>Thêm điều kiện</span>
                        </button>
                        <br /><br />
                        <button id="loc_danh_sach_cong_viec_button" type="button" class="btn bg-blue waves-effect">
                            <i class="material-icons">search</i>
                            <span>Lọc công việc</span>
                        </button>
                        <button type="button" class="btn bg-grey right waves-effect"
                            onclick="$('#loc_danh_sach_cong_viec_dialog').modal('hide')">
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