<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/session/dang_nhap_session.php";
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/version.php";
session_start();
?>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Quản lý công việc</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="css/fonts/google-font.css" rel="stylesheet" type="text/css">
    <link href="css/fonts/google-icon.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />
    <!--<link href="plugins/sweetalert/sweetalert.css" rel="stylesheet" />-->
    <link href="plugins/sweetalert/sweetalert2.min.css" rel="stylesheet" />


    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="plugins/jquery-datatable/buttons.dataTables.css" rel="stylesheet">

    <!-- Morris Chart Css-->
    <link href="plugins/morrisjs/morris.css" rel="stylesheet" />

    <link href="plugins/select2/select2.min.css" rel="stylesheet" />
    <link href="plugins/context-menu/jquery.contextMenu.css" rel="stylesheet" />
    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />
    <link href="plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <link href="plugins/bootstrap-material-datetimepicker/css/ripples.min.css" rel="stylesheet">
</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Đang vào hệ thống</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="Gõ nội dung cần tìm vào đây...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="index.php">Quản lý công việc</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_lien_quan() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc tôi đã tạo">create</i>
                            <span id="so_luong_cong_viec_lien_quan_den_toi" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc tôi đã tạo</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_lien_quan" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_cua_toi() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc tôi đang xử lý">settings</i>
                            <span id="so_luong_cong_viec_dang_xu_ly" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc tôi đang xử lý</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_cua_toi" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_can_tham_dinh() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc cần tôi thẩm định">done</i>
                            <span id="so_luong_cong_viec_can_tham_dinh" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc cần tôi thẩm định</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_can_tham_dinh" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_can_danh_gia_chat_luong() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc cần tôi đánh giá chất lượng">thumb_up</i>
                            <span id="so_luong_cong_viec_can_danh_gia_chat_luong" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc cần tôi đánh giá chất lượng</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_can_danh_gia_chat_luong" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_can_danh_gia_thai_do() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc cần tôi đánh giá thái độ">tag_faces</i>
                            <span id="so_luong_cong_viec_can_danh_gia_thai_do" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc cần tôi đánh giá thái độ</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_can_danh_gia_thai_do" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_toi_hoan_thanh_tre() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc tôi hoàn thành trễ tiến độ">error</i>
                            <span id="so_luong_cong_viec_toi_hoan_thanh_tre" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc tôi hoàn thành trễ trong tháng</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_toi_hoan_thanh_tre" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a onclick=lay_danh_sach_cong_viec_hoan_thanh_tre() class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons" data-toggle="tooltip" data-placement="bottom" title="Công việc hoàn thành trễ tiến độ">timer_off</i>
                            <span id="so_luong_cong_viec_hoan_thanh_tre" class="label-count bg-deep-orange"></span>
                        </a>
                        <ul class="dropdown-menu menu-fixed">
                            <li class="header">Công việc hoàn thành trễ trong tháng</li>
                            <li class="body">
                                <ul id="danh_sach_cong_viec_hoan_thanh_tre" class="menu tasks">
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION[TEN_HIEN_THI_SK]; ?></div>
                    <div class="email"><?php echo "(" . $_SESSION[TEN_TRUY_CAP_SK] . ")"; ?></div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a onclick=doi_mat_khau()><i class="material-icons">cached</i>Đổi mật khẩu</a></li>
                            <li><a onclick=dang_xuat()><i class="material-icons">input</i>Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <!--<ul id="main_menu_list" class="list">
                </ul>-->
                <div id="treeview12" class=""></div>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="version">
                    <b>Version: </b> <?php echo VERSION; ?>
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
    </section>

    <section id="content" class="content">
        <div class="row clearfix">
            <div class="modal fade" id="doi_mat_khau_dialog" tabindex="-1" role="dialog" style="visible:false;">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title">Đổi mật khẩu</h2>
                        </div>
                        <div class="modal-body" id="doi_mat_khau_modal_body">
                            <form>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input id="mat_khau_cu" name="mat_khau_cu" type="password" class="form-control" required>
                                        <label class="form-label">Mật khẩu cũ</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input id="mat_khau_moi" name="mat_khau_moi" type="password" class="form-control" required>
                                        <label class="form-label">Mật khẩu mới<label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input id="nhap_lai_mat_khau_moi" name="nhap_lai_mat_khau_moi" type="password" class="form-control" required>
                                        <label class="form-label">Nhập lại mật khẩu cũ</label>
                                    </div>
                                </div>
                                <button id="luu_mat_khau_btn" type="button" class="btn bg-green waves-effect">
                                    <i class="material-icons">save</i>
                                    <span>Lưu</span>
                                </button>
                                <button type="button" class="btn bg-grey right waves-effect" onclick="$('#doi_mat_khau_dialog').modal('hide')">
                                    <i class="material-icons">close</i>
                                    <span>Đóng<span>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="plugins/raphael/raphael.min.js"></script>
    <script src="plugins/morrisjs/morris.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/buttons.colVis.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <script src="plugins/select2/select2.full.min.js"></script>
    <script src="plugins/select2/i18n/vi.js"></script>
    <!--<script src="plugins/sweetalert/sweetalert.min.js"></script> -->
    <script src="plugins/sweetalert/sweetalert2.min.js"></script>
    <script src="plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="plugins/treeview/bootstrap-treeview.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/index.js"></script>
    <script src="js/extension/json_handler.js"></script>
    <script src="plugins/context-menu/jquery.contextMenu.js"></script>
    <script src="plugins/bootstrap-notify/bootstrap-notify.js"></script>
    <script src="plugins/jquery/jquery.md5.js"></script>
    <script src="plugins/bootstrap-material-datetimepicker/js/moment-with-locales.js"></script>
    <script src="plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

    <script type="text/javascript">
        $(function() {

        });
    </script>

    <script>
        var ma_tai_khoan_session = <?php echo $_SESSION[MA_TAI_KHOAN_SK];  ?> + "";
    </script>
</body>

</html>