<?php
    date_default_timezone_set("Asia/Bangkok");
?>
<div id="tai_khoan" class="container-fluid">            
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card fixed-content" >
                <div class="header">
                    <h2>
                        Danh sách tài khoản<br><br>
                         <button type="button" title="Tải lại danh sách tài khoản" class="btn bg-teal-button waves-effect" onclick=tai_lai_danh_sach_tai_khoan()><i class="material-icons" style="color:white;">refresh</i><span>Tải lại</span></button>
                    </h2>
                </div>
                <div class="body">
                    <div>
                        <table id="tai_khoan_dt" class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <tfoot>
                        </tfoot>
                        </table>
                    </div>
                </div>                   
            </div>
        </div>
    </div>
</div>