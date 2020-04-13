$(function () {
    lay_tai_khoan_da_ghi_nho();

    $('#sign_in').validate({
        highlight: function (input) {
            console.log(input);
            $(input).parents('.form-line').addClass('error');
        },
        unhighlight: function (input) {
            $(input).parents('.form-line').removeClass('error');
        },
        errorPlacement: function (error, element) {
            $(element).parents('.input-group').append(error);
        }
    });

    $('#dang_nhap_btn').click(function (evt) {
        var ten_truy_cap = $("#ten_truy_cap").val();
        var mat_khau = $("#mat_khau").val();
        if (ten_truy_cap === "" || mat_khau === "") {
            return;
        }
        evt.preventDefault();



        hien_thi_thong_bao_dang_nhap('#sign_in_message', false, '');

        var mat_khau_md5 = $.md5(mat_khau);
        console.log('call herer');
        $.post("/php/tai_khoan/dang_nhap_tai_khoan.php",
            {
                ten_truy_cap: ten_truy_cap,
                mat_khau: mat_khau_md5
            }).done(function (data) {
                try {
                    var obj = $.parseJSON(data);
                    if (obj.length > 0) {
                        if ($("#ghi_nho_tai_khoan").is(':checked')) {
                            $.cookie('ten_truy_cap', ten_truy_cap);
                            $.cookie('mat_khau', mat_khau);
                        }
                        else {
                            $.removeCookie('ten_truy_cap');
                            $.removeCookie('mat_khau');
                        }

                        window.location.href = "index.php";
                    }
                    else {
                        hien_thi_thong_bao_dang_nhap('#sign_in_message', true, 'Tài khoản hoặc mật khẩu không đúng');
                    }
                }
                catch (err) {
                    alert(err.message + data);
                }
            });
    });
});

function hien_thi_thong_bao_dang_nhap(label_jquery_str, visible, message) {
    if (visible) {
        $(label_jquery_str).text(message);
        $(label_jquery_str).css("display", "block");
    }
    else {
        $(label_jquery_str).css("display", "none");
    }
}

function lay_tai_khoan_da_ghi_nho() {
    var ten_truy_cap = $.cookie('ten_truy_cap');
    var mat_khau = $.cookie('mat_khau');

    if (ten_truy_cap) {
        $("#ten_truy_cap").val(ten_truy_cap);
        $("#mat_khau").val(mat_khau);
        $("#ghi_nho_tai_khoan").prop('checked', true);
    }
}