var loaded_menu_list = [];
var selected_menu = "";
var menu_list = [];
var data1 = "";
var tree;

$(function () {




    tree = $('#treeview12').treeview({ data: "" });

    $('.js-basic-example').DataTable({
        responsive: true
    });

    $.get("php/menu/lay_danh_sach_menu.php").done(

        function (data) {
            //alert(data);
            console.log('data', data);
            handle_data_json(data, null, cai_dat_menu, "Tài khoản này không được cấp menu. Vui lòng liên hệ Admin!");
            $('#treeview12').treeview({
                data: data,
                onNodeSelected: function (event, data) {
                    get_page(data['link']);
                }


            }

            );
            tree.treeview('collapseAll', { silent: true });
            //get_page("cong_viec");
        }
    );

    lay_so_luong_cong_viec_lien_quan();
    lay_so_luong_cong_viec_cua_toi();
    lay_so_luong_cong_viec_can_tham_dinh();
    lay_so_luong_cong_viec_hoan_thanh_tre();
    lay_so_luong_cong_viec_toi_hoan_thanh_tre();
    lay_so_luong_cong_viec_can_danh_gia_chat_luong();
    lay_so_luong_cong_viec_can_danh_gia_thai_do();

    doi_mat_khau_button();
});


function cai_dat_menu(obj, other_obj) {
    $.each(obj, function (i, item) {
        var active_class = ' class="active"';

        if (i > 0) {
            active_class = '';
        }

        var menu_string = '<li id="' + item.LINK + '_menu" ' + active_class + '>\n\
                                <a class="toggled waves-effect waves-block" onclick=get_page("' + item.LINK + '")>\n\
                                    <i class="material-icons">view_list</i>\n\
                                    <span>' + item.TEN_MENU + '</span>\n\
                                </a>\n\
                            </li>';

        $('#main_menu_list').append(menu_string);
        menu_list[i] = item.LINK + "_menu";
    });

    get_page("cong_viec");
}

function get_page(link) {
    $("#" + link).show();
    $("#content").html("")
    $.get("./pages/" + link + ".php").done(function (data) {
        $("#content").append(data);
        loaded_menu_list[loaded_menu_list.length] = link;
        $.getScript("js/pages/" + link + ".js").done(function (script) {
            $("head").append(script);
        });
    });
}

function lay_so_luong_cong_viec_cua_toi() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_cua_toi.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_cua_toi2, null);
    });
}

function lay_so_luong_cong_viec_cua_toi2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_dang_xu_ly").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_dang_xu_ly").hide();
        }
        else {
            $("#so_luong_cong_viec_dang_xu_ly").show();
        }
    });
}

function lay_danh_sach_cong_viec_cua_toi() {
    lay_so_luong_cong_viec_cua_toi();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_cua_toi.php").done(function (data) {
        $("#danh_sach_cong_viec_cua_toi").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_cua_toi2, null);
    });
}

function lay_danh_sach_cong_viec_cua_toi2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_cua_toi_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);">\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-'  + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_cua_toi").append(li_string);
        $("#cv_cua_toi_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_lien_quan() {
    $.get("/php/cong_viec/lay_so_luong_cong_viec_lien_quan.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_lien_quan2, null);
    });
}

function lay_so_luong_cong_viec_lien_quan2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_lien_quan_den_toi").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_lien_quan_den_toi").hide();
        }
        else {
            $("#so_luong_cong_viec_lien_quan_den_toi").show();
        }
    });
}

function lay_danh_sach_cong_viec_lien_quan() {
    lay_so_luong_cong_viec_lien_quan();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_lien_quan.php").done(function (data) {
        $("#danh_sach_cong_viec_lien_quan").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_lien_quan2, null);
    });
}

function lay_danh_sach_cong_viec_lien_quan2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_lien_quan_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-'  + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_lien_quan").append(li_string);
        $("#cv_lien_quan_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_can_tham_dinh() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_can_tham_dinh.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_can_tham_dinh2, null);
    });
}

function lay_so_luong_cong_viec_can_tham_dinh2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_can_tham_dinh").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_can_tham_dinh").hide();
        }
        else {
            $("#so_luong_cong_viec_can_tham_dinh").show();
        }
    });
}

function lay_danh_sach_cong_viec_can_tham_dinh() {
    lay_so_luong_cong_viec_can_tham_dinh();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_can_tham_dinh.php").done(function (data) {
        $("#danh_sach_cong_viec_can_tham_dinh").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_can_tham_dinh2, null);
    });
}

function lay_danh_sach_cong_viec_can_tham_dinh2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_can_tham_dinh_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-' + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_can_tham_dinh").append(li_string);
        $("#cv_can_tham_dinh_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_hoan_thanh_tre() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_hoan_thanh_tre.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_hoan_thanh_tre2, null);
    });
}

function lay_so_luong_cong_viec_hoan_thanh_tre2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_hoan_thanh_tre").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_hoan_thanh_tre").hide();
        }
        else {
            $("#so_luong_cong_viec_hoan_thanh_tre").show();
        }
    });
}

function lay_danh_sach_cong_viec_hoan_thanh_tre() {
    lay_so_luong_cong_viec_hoan_thanh_tre();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_hoan_thanh_tre.php").done(function (data) {
        $("#danh_sach_cong_viec_hoan_thanh_tre").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_hoan_thanh_tre2, null);
    });
}

function lay_danh_sach_cong_viec_hoan_thanh_tre2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_hoan_thanh_tre_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-' + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_hoan_thanh_tre").append(li_string);
        $("#cv_hoan_thanh_tre_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_toi_hoan_thanh_tre() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_toi_hoan_thanh_tre.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_toi_hoan_thanh_tre2, null);
    });
}

function lay_so_luong_cong_viec_toi_hoan_thanh_tre2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_toi_hoan_thanh_tre").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_toi_hoan_thanh_tre").hide();
        }
        else {
            $("#so_luong_cong_viec_toi_hoan_thanh_tre").show();
        }
    });
}

function lay_danh_sach_cong_viec_toi_hoan_thanh_tre() {
    lay_so_luong_cong_viec_toi_hoan_thanh_tre();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_toi_hoan_thanh_tre.php").done(function (data) {
        $("#danh_sach_cong_viec_toi_hoan_thanh_tre").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_toi_hoan_thanh_tre2, null);
    });
}

function lay_danh_sach_cong_viec_toi_hoan_thanh_tre2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_toi_hoan_thanh_tre_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-' + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_toi_hoan_thanh_tre").append(li_string);
        $("#cv_toi_hoan_thanh_tre_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");

            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_can_danh_gia_chat_luong() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_can_danh_gia_chat_luong.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_can_danh_gia_chat_luong2, null);
    });
}

function lay_so_luong_cong_viec_can_danh_gia_chat_luong2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_can_danh_gia_chat_luong").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_can_danh_gia_chat_luong").hide();
        }
        else {
            $("#so_luong_cong_viec_can_danh_gia_chat_luong").show();
        }
    });
}

function lay_danh_sach_cong_viec_can_danh_gia_chat_luong() {
    lay_so_luong_cong_viec_can_danh_gia_chat_luong();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_can_danh_gia_chat_luong.php").done(function (data) {
        $("#danh_sach_cong_viec_can_danh_gia_chat_luong").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_can_danh_gia_chat_luong2, null);
    });
}

function lay_danh_sach_cong_viec_can_danh_gia_chat_luong2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_can_danh_gia_chat_luong_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-' + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_can_danh_gia_chat_luong").append(li_string);
        $("#cv_can_danh_gia_chat_luong_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function lay_so_luong_cong_viec_can_danh_gia_thai_do() {
    $.get("php/cong_viec/lay_so_luong_cong_viec_can_danh_gia_thai_do.php").done(function (data) {
        handle_data_json(data, null, lay_so_luong_cong_viec_can_danh_gia_thai_do2, null);
    });
}

function lay_so_luong_cong_viec_can_danh_gia_thai_do2(obj, other_obj) {
    $.each(obj, function (i, item) {
        $("#so_luong_cong_viec_can_danh_gia_thai_do").text(item.SO_LUONG_CONG_VIEC);
        if (item.SO_LUONG_CONG_VIEC === "0") {
            $("#so_luong_cong_viec_can_danh_gia_thai_do").hide();
        }
        else {
            $("#so_luong_cong_viec_can_danh_gia_thai_do").show();
        }
    });
}

function lay_danh_sach_cong_viec_can_danh_gia_thai_do() {
    lay_so_luong_cong_viec_can_danh_gia_thai_do();

    $.get("php/cong_viec/lay_danh_sach_cong_viec_can_danh_gia_thai_do.php").done(function (data) {
        $("#danh_sach_cong_viec_can_danh_gia_thai_do").empty();
        handle_data_json(data, null, lay_danh_sach_cong_viec_can_danh_gia_thai_do2, null);
    });
}

function lay_danh_sach_cong_viec_can_danh_gia_thai_do2(obj, other_obj) {
    $.each(obj, function (i, item) {
        var li_string = '<li id="cv_can_danh_gia_thai_do_' + item.MA_CONG_VIEC + '" >\n\
                            <a href="javascript:void(0);" >\n\
                                <h4>\n\
                                    ' + item.TEN_CONG_VIEC + '\n\
                                    <small>' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%</small>\n\
                                </h4>\n\
                                <div class="progress">\n\
                                    <div class="progress-bar progress-bar-' + (item.TI_LE_HOAN_THANH_CONG_VIEC !== "100" ? 'warning' : 'success') + ' progress-bar-striped active" role="progressbar" aria-valuenow="' + item.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + item.TI_LE_HOAN_THANH_CONG_VIEC + '%">\n\
                                    </div>\n\
                                </div>\n\
                            </a>\n\
                        </li>';
        $("#danh_sach_cong_viec_can_danh_gia_thai_do").append(li_string);
        $("#cv_can_danh_gia_thai_do_" + item.MA_CONG_VIEC).click(function () {
            get_page("cong_viec");
            $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + item.MA_CONG_VIEC).load();
            //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", item.MA_CONG_VIEC);
            //search_cell_by_column_name("#cong_viec_dt", "TEN_CONG_VIEC", item.TEN_CONG_VIEC);
        });
    });
}

function search_cell_by_column_name(table_id, column_name, value) {
    var table = $(table_id).DataTable();
    if (table === null) return;

    clear_search_all(table_id);
    table.column(column_name + ":name").search(value).draw();
    if (table.page.info().recordsDisplay < 1 && column_name === "TEN_CONG_VIEC") {
        show_tim_kiem_nang_cao_dialog();
        showNotification("bg-red", "Công việc chỉ được tìm thấy khi<br><b>DANH SÁCH CÔNG VIỆC có công việc đó!</b><br> (Vui lòng Tìm kiếm nâng cao)", "top", "center", "", "");
    }
}

function clear_search_all(table_id) {

    var table = $(table_id).DataTable();
    if (table === null) return;
    /*
    var count = table.columns().count();
    for(var i=0; i<count; i++)
    {
        table.column(i).search("");
    }
    */
    table.search('').columns().search('').draw();
}

function doi_mat_khau() {
    $("#doi_mat_khau_dialog").modal("show");
}

function doi_mat_khau_button() {
    $("#luu_mat_khau_btn").click(function () {
        var mat_khau_cu = $.md5($("#mat_khau_cu").val());
        var mat_khau_moi = $.md5($("#mat_khau_moi").val());
        var nhap_lai_mat_khau_moi = $.md5($("#nhap_lai_mat_khau_moi").val());

        if (mat_khau_moi !== nhap_lai_mat_khau_moi) {
            showNotification("bg-red", "Nhập lại mật khẩu mới không khớp!", "bottom", "right", "", "");
            return;
        }

        $.post("php/tai_khoan/doi_mat_khau.php",
            {
                mat_khau_cu: mat_khau_cu,
                mat_khau_moi: mat_khau_moi
            }).done(function (data) {
                handle_data_json(data, null,
                    function (obj, other_obj) {
                        if (obj[0].THONG_BAO === "1") {
                            showNotification("alert-success", "Đổi mật khẩu thành công!", "bottom", "right", "", "");
                        }
                        else {
                            showNotification("bg-red", obj[0].THONG_BAO, "bottom", "right", "", "");
                        }
                    }
                    , "Có lỗi trong quá trình xử lý!");
            });
    });
}

function dang_xuat() {
    $.post("php/tai_khoan/dang_xuat.php").done(function (data) {
        if (data === "1") {
            window.location.replace("dang_nhap.php");
        }
    });
}