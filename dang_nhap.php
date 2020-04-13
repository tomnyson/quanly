<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Quản lý công việc</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="css/fonts/Roboto.css" rel="stylesheet" type="text/css">
    <link href="css/fonts/Material_Icons.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);"><b>QUẢN LÝ CÔNG VIỆC</b></a>
            <small>Hệ thống quản lý công việc</br>VNPT Hậu Giang</small>
        </div>
        <div class="card login-panel">
            <div class="body">
                <form id="sign_in">
                    <div class="msg">Đăng nhập để bắt đầu sử dụng</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input id="ten_truy_cap" type="text" class="form-control" placeholder="Tên truy cập" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input id="mat_khau" type="password" class="form-control" placeholder="Mật khẩu" required autofocus>
                        </div>
                    </div>
                    <div class="row">
                        <label id="sign_in_message" class="label-error"></label>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 p-t-5">
                            <input type="checkbox" name="ghi_nho_tai_khoan" id="ghi_nho_tai_khoan" class="filled-in chk-col-pink">
                            <label for="ghi_nho_tai_khoan">Ghi nhớ tài khoản</label>
                        </div>
                        <div class="col-xs-5">
                            <button id="dang_nhap_btn" class="btn btn-block bg-deep-orange waves-effect">ĐĂNG NHẬP</button>
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-5 align-left">
                            <!-- <a href="forgot-password.html">Quên mật khẩu?</a> -->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/jquery/jquery.md5.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/tai_khoan/dang_nhap.js"></script>
    <script src="plugins/jquery-cookie/jquery.cookie.js"></script>
</body>

</html>