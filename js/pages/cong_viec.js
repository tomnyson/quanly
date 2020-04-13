var ma_cong_viec_cha = "null";
var ma_cong_viec_dang_sua = "null";
var dang_them_moi_cong_viec = true;
var ma_tai_khoan_xu_ly_dang_sua = "null";
var ma_tai_khoan_tham_dinh_dang_sua = "null";
var ma_donvi_yc_sua = "null";
var ma_cong_viec_vua_thao_tac = "null";
var dang_load_danh_sach_cong_viec = false;

$(function()
{   
    init_cong_viec();
    tim_nang_cao();
    $(".datetime").bootstrapMaterialDatePicker(
    { 
        format : 'DD/MM/YYYY HH:mm', 
        lang : 'vi', 
        cancelText : 'Hủy',
        okText: 'OK',
        nowText: 'Thời gian hiện tại',
        nowButton : true,
        switchOnClick : true,
        shortTime: true
    });
    
    $(".date").bootstrapMaterialDatePicker(
    { 
        format : 'DD/MM/YYYY', 
        lang : 'vi', 
        cancelText : 'Hủy',
        okText: 'Xong',
        nowText: 'Thời gian hiện tại',
        nowButton : true,
        switchOnClick : true,
        time: false
    });
}); 

function show_them_cong_viec_dialog()
{
    ma_cong_viec_cha = "null";    
    dang_them_moi_cong_viec = true;
    ma_tai_khoan_xu_ly_dang_sua = "null";
    ma_tai_khoan_tham_dinh_dang_sua = "null";
    ma_donvi_yc_sua="null";
    $("#ma_cong_viec_cha").val("null");  
    $("#them_cong_viec_dialog_title").text("Thêm mới công việc");
    $('#tai_khoan_xu_ly').prop("disabled", false);
    $('#nhom_tai_khoan').prop("disabled", false);
    $('#tai_khoan_tham_dinh').prop("disabled", false);
    $("#them_cong_viec_dialog").modal("show");
    $("#luu_cong_viec_btn").prop("disabled", false);
}

function apply_select2(select, modal_dialog, placeholder_text)
{
    $(select).select2(
    { 
        dropdownParent: $(modal_dialog),
        placeholder: placeholder_text
    });
}

function cai_dat_select_cho_them_cong_viec_dialog()
{
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_du_an_cong_viec.php", "#du_an", "MA_DU_AN", "TEN_DU_AN", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_don_vi_yeu_cau.php", "#don_vi_yeu_cau", "MA_DON_VI_YEU_CAU", "TEN_DON_VI_YEU_CAU", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_do_uu_tien.php", "#do_uu_tien", "MA_MUC_DO_UU_TIEN", "MUC_DO_UU_TIEN", "Không lấy được danh sách độ ưu tiên. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_nhom_tai_khoan.php", "#nhom_tai_khoan", "MA_NHOM_TAI_KHOAN", "TEN_NHOM_TAI_KHOAN", "Không lấy được danh sách nhóm. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_trang_thai.php", "#trang_thai", "MA_TRANG_THAI_CONG_VIEC", "TEN_TRANG_THAI_CONG_VIEC", "Không lấy được danh sách trạng thái. Vui lòng liên hệ Admin!");

    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_du_an_cong_viec.php", "#du_an_tim_nang_cao", "MA_DU_AN", "TEN_DU_AN", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_don_vi_yeu_cau.php", "#don_vi_yeu_cau_tim_nang_cao", "MA_DON_VI_YEU_CAU", "TEN_DON_VI_YEU_CAU", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_do_uu_tien.php", "#do_uu_tien_tim_nang_cao", "MA_MUC_DO_UU_TIEN", "MUC_DO_UU_TIEN", "Không lấy được danh sách độ ưu tiên. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_nhom_tai_khoan.php", "#nhom_tai_khoan_tim_nang_cao", "MA_NHOM_TAI_KHOAN", "TEN_NHOM_TAI_KHOAN", "Không lấy được danh sách nhóm. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_trang_thai.php", "#trang_thai_tim_nang_cao", "MA_TRANG_THAI_CONG_VIEC", "TEN_TRANG_THAI_CONG_VIEC", "Không lấy được danh sách trạng thái. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_xu_ly.php?ma_nhom_tai_khoan=TAT_CA" , "#tai_khoan_tao_tim_nang_cao", "MA_TAI_KHOAN", "TEN_HIEN_THI", null);
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_xu_ly.php?ma_nhom_tai_khoan=TAT_CA" , "#tai_khoan_xu_ly_tim_nang_cao", "MA_TAI_KHOAN", "TEN_HIEN_THI", null);
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_tham_dinh_theo_tai_khoan_xu_ly.php?ma_tai_khoan_xu_ly=TAT_CA&ma_nhom_tai_khoan=TAT_CA", "#tai_khoan_tham_dinh_tim_nang_cao", "MA_TAI_KHOAN_THAM_DINH", "TEN_HIEN_THI", null);

    var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/doGet.php?txtAction=getLoaiCongViec&thoi_gian_bat_dau=" + thoi_gian_bat_dau , "#loai_cv", "MA_LOAI_CV", "TEN_LOAI_CV", null);
}

function cai_dat_select_cho_them_cong_viec_dialog1(url, select_id, value, text, empty_message)
{ 
    $.get(url).done(
        function(data)
        {
            var select_obj = {id: select_id, value: value, text: text};
            handle_data_json(data, select_obj, cai_dat_select_cho_them_cong_viec_dialog2, empty_message);
        }
    );   
}

function cai_dat_select_cho_them_cong_viec_dialog2(obj, select_obj)
{
    $(select_obj.id).empty();
    
    var tim_nang_cao_select_id = ["#trang_thai","#du_an_tim_nang_cao", "#don_vi_yeu_cau_tim_nang_cao", "#do_uu_tien_tim_nang_cao", "#nhom_tai_khoan_tim_nang_cao", "#trang_thai_tim_nang_cao", "#tai_khoan_tao_tim_nang_cao", "#tai_khoan_xu_ly_tim_nang_cao", "#tai_khoan_tham_dinh_tim_nang_cao"];
    
    if(tim_nang_cao_select_id.indexOf(select_obj.id) !== -1)
    {
        $(select_obj.id).append($('<option>', { 
            value: 'TAT_CA',
            text : 'TẤT CẢ'
        }));
    }
    
    $.each(obj, function (i, item) {
    $(select_obj.id).append($('<option>', { 
        value: item[select_obj.value],
        text : item[select_obj.text] 
    }));
    
    if(tim_nang_cao_select_id.indexOf(select_obj.id) !== -1)
    {
        $(select_obj.id).val('TAT_CA').trigger('change');
    }
    else
    {
        $(select_obj.id).val(null).trigger('change');
    }
    
    var ma_tai_khoan_xu_ly = $("#tai_khoan_xu_ly").val();
    var ma_tai_khoan_tham_dinh = $("#tai_khoan_tham_dinh").val();
    var don_vi_yeu_cau = $("#don_vi_yeu_cau").val();

    if(ma_tai_khoan_xu_ly_dang_sua !== "null" && ma_tai_khoan_xu_ly !== ma_tai_khoan_xu_ly_dang_sua)
    {
        $("#tai_khoan_xu_ly").val(ma_tai_khoan_xu_ly_dang_sua).trigger('change');
    }

    if(ma_tai_khoan_tham_dinh_dang_sua !== "null" && ma_tai_khoan_tham_dinh !== ma_tai_khoan_tham_dinh_dang_sua)
    {
        $("#tai_khoan_tham_dinh").val(ma_tai_khoan_tham_dinh_dang_sua).trigger('change');
    }

    if(ma_donvi_yc_sua !== "null" && don_vi_yeu_cau !== ma_donvi_yc_sua)
    {
        
        var dataarray=ma_donvi_yc_sua.split(",");  
        //alert(dataarray);      
        $("#don_vi_yeu_cau").val(dataarray).trigger('change');
        //$("#don_vi_yeu_cau").multiselect("refresh");
    }

    
});
}

function init_cong_viec()
{
    $('head').append('<link rel="stylesheet" href="css/pages/cong_viec.css" type="text/css" />');
    
    $.AdminBSB.dropdownMenu.activate();
    $.AdminBSB.input.activate();
    $.AdminBSB.select.activate();    
    
    $('#cong_viec_dt').DataTable( {
        language: {url: "plugins/jquery-datatable/language/Vietnamese.json"},
        //responsive: true,
        processing: true,
        //dom: 'Bfrtip',
        lengthMenu: [
            [ 10, 25, 50, 100, 500, -1 ],
            [ '10', '25', '50', '100', '500', 'Tất cả' ]
        ],
        fixedHeader: {
            header: true,
            footer: true
        },
        displayLength: 25,
        buttons: [
            {
                extend: 'pageLength'  
            },
            {
                extend: 'colvis',
                collectionLayout: 'fixed two-column'
            },
            {
                text: 'Tìm CV vừa thao tác',
                action: function ( e, dt, node, config ) {
                    if(dang_load_danh_sach_cong_viec)
                    {
                        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
                        return;
                    }
                    if(ma_cong_viec_vua_thao_tac !== "null")
                    {

                        $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + ma_cong_viec_vua_thao_tac).load();
                        //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", ma_cong_viec_vua_thao_tac);
                    }
                    else
                    {
                        showNotification("bg-red", "Không có công việc nào vừa thao tác trong bộ nhớ", "bottom", "right", "", "");
                    }
                }
            },
            {
                text: 'Tìm kiếm nâng cao',
                action: function ( e, dt, node, config ) {
                    show_tim_kiem_nang_cao_dialog();
                }
            },
            {
                text: 'Tải lại',
                action: function ( e, dt, node, config ) {
                    if(dang_load_danh_sach_cong_viec)
                    {
                        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
                        return;
                    }
                    var table = $("#cong_viec_dt").DataTable();
                    clear_search_all("#cong_viec_dt");
                    $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA').load();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                }
            }
        ],
        //processing: true,
        //serverSide: true,
        ajax: {   
            url: "php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA",
            type: "get",
            error: function()
            {
                $("#cong_viec_dt").css('display', 'none');
            }
        },
        scrollX:        true,
        scrollCollapse: true,
        columnDefs: [ 
            {targets: 1, width: 150}, // TEN_CONG_VIEC
            {targets: 2, width: 100},  // TEN_LOAI_CV
            {targets: 3, width: 105},  // TEN_TAI_KHOAN_XU_LY
            {targets: 4, width: 70},  // TEN_TRANG_THAI_CONG_VIEC
            {targets: 5, width: 40},  // TRONGSO_CV
            {targets: 6, width: 100},  // TI_LE_HOAN_THANH_CONG_VIEC
            {targets: 7, width: 70},  // MUC_DO_UU_TIEN 
            {targets: 8, width: 40},  // THANG_CUA_CONG_VIEC                   
            
            {targets: 11, width: 85},  // THOI_GIAN_KET_THUC_CONG_VIEC
            {targets: 12, width: 100},  // THAM_DINH_THOI_GIAN_HT_CV
            {targets: 14, width: 100},  // THOI_GIAN_CON_LAI
            {targets: 16, width: 120},  // THAM_DINH_DA_HOAN_THANH_CV
            {targets: 18, width: 110},  // DIEM_CHAT_LUONG
            {targets: 19, width: 110},  // DIEM_THAI_DO
            {targets: 20, width: 130},  // THAM_DINH_TONG_THOI_GIAN
            {targets: 21, width: 80},  // SO_LUONG_CONG_VIEC_CON
            {targets: 22, width: 110},  // TEN_TAI_KHOAN
            {targets: 23, width: 100},  // TEN_TAI_KHOAN_THAM_DINH
            {targets: 24, width: 100},  // TEN_TAI_KHOAN_DG_CHAT_LUONG
            {targets: 25, width: 100}  // TEN_TAI_KHOAN_DG_THAI_DO

        ],
        fixedColumns: true,
        columns: [    
            {title: "Mã",  data: "MA_CONG_VIEC", name: "MA_CONG_VIEC", visible: false},
            {title: "Tên công việc", data: "TEN_CONG_VIEC", name: "TEN_CONG_VIEC", class: "TEN_CONG_VIEC"},
            {title: "Loại công việc", data: "TEN_LOAI_CV", name: "TEN_LOAI_CV"},
            {title: "Người xử lý", data: "TEN_TAI_KHOAN_XU_LY", name: "TEN_TAI_KHOAN_XU_LY"},
            {title: "Trạng thái", data: "TEN_TRANG_THAI_CONG_VIEC", name: "TEN_TRANG_THAI_CONG_VIEC"},
            {title: "Trọng số", data: "TRONGSO_CV", name: "TRONGSO_CV"},
            {title: "Tỉ lệ H.Thành", data: "TI_LE_HOAN_THANH_CONG_VIEC", name: "TI_LE_HOAN_THANH_CONG_VIEC"},
            {title: "Độ ưu tiên", data: "MUC_DO_UU_TIEN", name: "MUC_DO_UU_TIEN"},
            {title: "Tháng", data: "THANG_CUA_CONG_VIEC", name: "THANG_CUA_CONG_VIEC"},
            {title: "Dự án", data: "TEN_DU_AN", name: "TEN_DU_AN", visible: false},
            {title: "Đơn vị", data: "TEN_DON_VI_YEU_CAU", name: "TEN_DON_VI_YEU_CAU", visible: false},
            
            
            {title: "TG thêm", data: "THOI_GIAN_THEM_CONG_VIEC", name: "THOI_GIAN_THEM_CONG_VIEC", visible: false },
            {title: "TG bắt đầu", data: "THOI_GIAN_BAT_DAU_CONG_VIEC", name: "THOI_GIAN_BAT_DAU_CONG_VIEC", visible: false },
            {title: "TG kết thúc", data: "THOI_GIAN_KET_THUC_CONG_VIEC", name: "THOI_GIAN_KET_THUC_CONG_VIEC" },
            {title: "TG hoàn thành", data: "THAM_DINH_THOI_GIAN_HT_CV", name: "THAM_DINH_THOI_GIAN_HT_CV"},
            {title: "TG hoàn thành", data: "THOI_GIAN_HOAN_THANH_CV", name: "THOI_GIAN_HOAN_THANH_CV", visible: false },
            {title: "Còn lại (ngày)", data: "THOI_GIAN_CON_LAI", name: "THOI_GIAN_CON_LAI"},            
            {title: "Nội dung", data: "NOI_DUNG_CONG_VIEC", name: "NOI_DUNG_CONG_VIEC", visible: false },     
            {title: "Thẩm định", data: "THAM_DINH_DA_HOAN_THANH_CV", name: "THAM_DINH_DA_HOAN_THANH_CV"},
            {title: "Tổng TG (giờ)", data: "TONG_THOI_GIAN_CONG_VIEC", name: "TONG_THOI_GIAN_CONG_VIEC", visible: false },
            {title: "Chất lượng", data: "DIEM_CHAT_LUONG", name: "DIEM_CHAT_LUONG"},
            {title: "Thái độ", data: "DIEM_THAI_DO", name: "DIEM_THAI_DO" },
            {title: "Tổng TG (giờ)", data: "THAM_DINH_TONG_THOI_GIAN", name: "THAM_DINH_TONG_THOI_GIAN" },
            {title: "#CV con", data: "SO_LUONG_CONG_VIEC_CON", name: "SO_LUONG_CONG_VIEC_CON" },
            
            {title: "Người tạo", data: "TEN_TAI_KHOAN", name: "TEN_TAI_KHOAN"},
            {title: "Thẩm định", data: "TEN_TAI_KHOAN_THAM_DINH", name: "TEN_TAI_KHOAN_THAM_DINH" },
            {title: "ĐG chất lượng", data: "TEN_TAI_KHOAN_DG_CHAT_LUONG", name: "TEN_TAI_KHOAN_DG_CHAT_LUONG" },
            {title: "ĐG thái độ", data: "TEN_TAI_KHOAN_DG_THAI_DO", name: "TEN_TAI_KHOAN_DG_THAI_DO" },
            
            {title: "Mã TK tạo", data: "MA_TAI_KHOAN", name: "MA_TAI_KHOAN", visible: false },
            {title: "Mã trạng thái", data: "MA_TRANG_THAI_CONG_VIEC", name: "MA_TRANG_THAI_CONG_VIEC", visible: false },
            {title: "Mã CV cha", data: "MA_CONG_VIEC_CHA", name: "MA_CONG_VIEC_CHA", visible: false },
            {title: "Mã TK xử lý", data: "MA_TAI_KHOAN_XU_LY", name: "MA_TAI_KHOAN_XU_LY", visible: false },
            {title: "Mã độ ưu tiên", data: "MA_MUC_DO_UU_TIEN", name: "MA_MUC_DO_UU_TIEN", visible: false },
            {title: "Mã ĐV yêu cầu", data: "MA_DON_VI_YEU_CAU", name: "MA_DON_VI_YEU_CAU", visible: false },
            {title: "Mã dự án", data: "MA_DU_AN", name: "MA_DU_AN",visible: false },
            {title: "Mã nhóm", data: "MA_NHOM_TAI_KHOAN", name: "MA_NHOM_TAI_KHOAN", visible: false },
            {title: "Mã TK thẩm định", data: "MA_TAI_KHOAN_THAM_DINH", name: "MA_TAI_KHOAN_THAM_DINH", visible: false },
            {title: "Mã TK đánh giá chất lượng", data: "MA_TAI_KHOAN_DG_CHAT_LUONG", name: "MA_TAI_KHOAN_DG_CHAT_LUONG", visible: false },
            {title: "Mã TK đánh giá thái độ", data: "MA_TAI_KHOAN_DG_THAI_DO", name: "MA_TAI_KHOAN_DG_THAI_DO", visible: false },
            
            {title: "Mã loại công việc", data: "MA_LOAI_CV", name: "MA_LOAI_CV", visible: false },
            {title: "Loại công việc hỗ trợ", data: "LOAI_CV_HT", name: "LOAI_CV_HT", visible: false }
        ],
        scrollY: '300px',
        rowCallback: function( row, data, index ) {
            var table = $("#cong_viec_dt").DataTable();
            
            var trang_thai_label_class_array =
            [
                "label-primary",  // Moi 
                "label-warning", // Dang xu ly
                "label-success", // Hoan thanh
                "bg-brown", // Tam hoan
                "bg-indigo", // Hoan
                "label-danger", // Huy
                "bg-deep-purple" // Khong the thuc hien
            ];
                
            var do_uu_tien_label_class_array = 
            [
                "bg-blue",
                "bg-deep-purple",
                "bg-orange",
                "bg-deep-orange",
                "bg-red"
            ];
            var label_class = trang_thai_label_class_array[parseInt(data.MA_TRANG_THAI_CONG_VIEC) - 1];
           
            if(ma_tai_khoan_session === data.MA_TAI_KHOAN)
            {
                $('td:eq(' + fixed_td_index(table, "TEN_CONG_VIEC") +  ')', row).html('<div><i class="material-icons pointer orange">edit</i><span>' + data.TEN_CONG_VIEC + '</span></div>').find("i").click(function()
                {
                    //alert(data.MA_DON_VI_YEU_CAU);
                    chinh_sua_cong_viec(data.TONG_THOI_GIAN_CONG_VIEC, data.TEN_CONG_VIEC, data.NOI_DUNG_CONG_VIEC, data.MA_DU_AN, data.MA_DON_VI_YEU_CAU, data.MA_MUC_DO_UU_TIEN, data.MA_NHOM_TAI_KHOAN, data.THOI_GIAN_BAT_DAU_CONG_VIEC, data.THOI_GIAN_KET_THUC_CONG_VIEC, data.MA_CONG_VIEC, data.MA_TAI_KHOAN_XU_LY, data.MA_TAI_KHOAN_THAM_DINH,data.MA_LOAI_CV,data.TRONGSO_CV);
                }); 
            }
            else
            {
                $('td:eq(' + fixed_td_index(table, "TEN_CONG_VIEC") +  ')', row).html('<div><i class="material-icons pointer lightskyblue">info</i><span>' + data.TEN_CONG_VIEC + '</span></div>').find("i").click(function()
                {
                    xem_thong_tin_cong_viec(data.TONG_THOI_GIAN_CONG_VIEC, data.TEN_CONG_VIEC, data.NOI_DUNG_CONG_VIEC, data.MA_DU_AN, data.MA_DON_VI_YEU_CAU, data.MA_MUC_DO_UU_TIEN, data.MA_NHOM_TAI_KHOAN, data.THOI_GIAN_BAT_DAU_CONG_VIEC, data.THOI_GIAN_KET_THUC_CONG_VIEC, data.MA_CONG_VIEC, data.MA_TAI_KHOAN_XU_LY, data.MA_TAI_KHOAN_THAM_DINH,data.MA_LOAI_CV,data.TRONGSO_CV);
                }); 
            }
           
            if(data.THOI_GIAN_CON_LAI === "0" && data.MA_TRANG_THAI_CONG_VIEC !== "3")
            {
                label_class = "bg-red";
            }
            
            if(ma_tai_khoan_session === data.MA_TAI_KHOAN_XU_LY && data.MA_TRANG_THAI_CONG_VIEC !== "3")
            {
                $('td:eq(' + fixed_td_index(table, "TEN_TRANG_THAI_CONG_VIEC") +  ')', row).html('<span class="label ' + label_class + ' pointer">' + data.TEN_TRANG_THAI_CONG_VIEC +  ' </span>').find("span").click(function()
                {
                    hoan_thanh_cong_viec(data.MA_CONG_VIEC, data.TEN_CONG_VIEC);
                });                
            }
            else
            {
                $('td:eq(' + fixed_td_index(table, "TEN_TRANG_THAI_CONG_VIEC") +  ')', row).html('<span class="label ' + label_class + '">' + data.TEN_TRANG_THAI_CONG_VIEC +  ' </span>');
            }
            
            label_class = do_uu_tien_label_class_array[parseInt(data.MA_MUC_DO_UU_TIEN) - 1];
            $('td:eq(' + fixed_td_index(table, "THANG_CUA_CONG_VIEC")  +  ')', row).css('font-size', '13px');
            $('td:eq(' + fixed_td_index(table, "THOI_GIAN_CON_LAI")   +  ')', row).css('font-size', '13px');
            $('td:eq(' + fixed_td_index(table, "MUC_DO_UU_TIEN")  +  ')', row).html('<span class="label ' + label_class + '">' + data.MUC_DO_UU_TIEN +  ' </span>');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN")  +  ')', row).css('font-size', '12px');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_XU_LY")  +  ')', row).css('font-size', '12px');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_THAM_DINH") +  ')', row).css('font-size', '12px');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_DG_CHAT_LUONG") +  ')', row).css('font-size', '12px');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_DG_THAI_DO") +  ')', row).css('font-size', '12px');
            $('td:eq(' + fixed_td_index(table, "THOI_GIAN_KET_THUC_CONG_VIEC") +  ')', row).css('font-size', '13px');
            
            
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN")  +  ')', row).html('<a onclick=truy_cap_tai_khoan_trong_danh_sach("' + data.MA_TAI_KHOAN + '") class="pointer">' + (data.TEN_TAI_KHOAN===null?"":data.TEN_TAI_KHOAN) + '</a>');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_XU_LY")  +  ')', row).html('<a onclick=truy_cap_tai_khoan_trong_danh_sach("' + data.MA_TAI_KHOAN_XU_LY + '") class="pointer">' + (data.TEN_TAI_KHOAN_XU_LY===null?"":data.TEN_TAI_KHOAN_XU_LY) + '</a>');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_THAM_DINH")  +  ')', row).html('<a onclick=truy_cap_tai_khoan_trong_danh_sach("' + data.MA_TAI_KHOAN_THAM_DINH + '") class="pointer">' + (data.TEN_TAI_KHOAN_THAM_DINH===null?"":data.TEN_TAI_KHOAN_THAM_DINH) + '</a>');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_DG_CHAT_LUONG")  +  ')', row).html('<a onclick=truy_cap_tai_khoan_trong_danh_sach("' + data.MA_TAI_KHOAN_DG_CHAT_LUONG + '") class="pointer">' + (data.TEN_TAI_KHOAN_DG_CHAT_LUONG===null?"":data.TEN_TAI_KHOAN_DG_CHAT_LUONG)+ '</a>');
            $('td:eq(' + fixed_td_index(table, "TEN_TAI_KHOAN_DG_THAI_DO")  +  ')', row).html('<a onclick=truy_cap_tai_khoan_trong_danh_sach("' + data.MA_TAI_KHOAN_DG_THAI_DO + '") class="pointer">' + (data.TEN_TAI_KHOAN_DG_THAI_DO===null?"":data.TEN_TAI_KHOAN_DG_THAI_DO) + '</a>');
            
            if(data.SO_LUONG_CONG_VIEC_CON !== null)
            {
                $('td:eq(' + fixed_td_index(table, "SO_LUONG_CONG_VIEC_CON")  +  ')', row).html('<span class="blue"><i class="material-icons pointer">zoom_out_map</i>' + data.SO_LUONG_CONG_VIEC_CON  + '</span>').find("i").click(function()
                {
                    xem_cay_cong_viec(data.MA_CONG_VIEC, data.MA_CONG_VIEC_CHA, data.SO_LUONG_CONG_VIEC_CON);
                });
            }
            
            var ti_le_hoan_thanh_f = parseFloat(data.TI_LE_HOAN_THANH_CONG_VIEC);
            
            if(ma_tai_khoan_session === data.MA_TAI_KHOAN_XU_LY && data.TI_LE_HOAN_THANH_CONG_VIEC !== "100")
            {            
                $('td:eq(' + fixed_td_index(table, "TI_LE_HOAN_THANH_CONG_VIEC")  +  ')', row).html('<div class="progress pointer">' +
                                            '<div class="progress-bar" role="progressbar" aria-valuenow="' + data.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + data.TI_LE_HOAN_THANH_CONG_VIEC + '%;">' +
                                                data.TI_LE_HOAN_THANH_CONG_VIEC +  '%' +
                                            '</div>' +
                                        '</div>').find("div").click(function()
                {
                    cap_nhat_ti_le(data.MA_CONG_VIEC, data.TEN_CONG_VIEC, data.TI_LE_HOAN_THANH_CONG_VIEC);
                });
            }
            else
            {
                $('td:eq(' + fixed_td_index(table, "TI_LE_HOAN_THANH_CONG_VIEC")  +  ')', row).html('<div class="progress">' +
                                            '<div class="progress-bar" role="progressbar" aria-valuenow="' + data.TI_LE_HOAN_THANH_CONG_VIEC + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + data.TI_LE_HOAN_THANH_CONG_VIEC + '%;">' +
                                                data.TI_LE_HOAN_THANH_CONG_VIEC +  '%' +
                                            '</div>' +
                                        '</div>');
            }
            
            if(data.THAM_DINH_DA_HOAN_THANH_CV === "Chưa HT")
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_THAM_DINH)
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<span class="label bg-red">' + data.THAM_DINH_DA_HOAN_THANH_CV +  ' </span>');
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<span class="label bg-red pointer">' + data.THAM_DINH_DA_HOAN_THANH_CV +  ' </span>').find("span").click(function()
                    {
                       tham_dinh_cong_viec(data.MA_CONG_VIEC, data.TEN_CONG_VIEC, data.THOI_GIAN_KET_THUC_CONG_VIEC); 
                    });
                }
            }
            else if (data.THAM_DINH_DA_HOAN_THANH_CV === "Hoàn thành")
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_THAM_DINH)
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<span class="label label-success">' + data.THAM_DINH_DA_HOAN_THANH_CV +  ' </span>');
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<span class="label label-success pointer">' + data.THAM_DINH_DA_HOAN_THANH_CV +  ' </span>').find("span").click(function()
                    {
                       tham_dinh_cong_viec(data.MA_CONG_VIEC, data.TEN_CONG_VIEC, data.THOI_GIAN_KET_THUC_CONG_VIEC); 
                    });
                }
            }
            else
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_THAM_DINH)
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<span class="red">Chưa được thẩm định</apan>');            
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_DA_HOAN_THANH_CV")  +  ')', row).html('<button type="button" title="Thẩm định công việc" class="btn bg-red waves-effect"><i class="material-icons">done</i></button>').find("button").click(function()
                    {
                       tham_dinh_cong_viec(data.MA_CONG_VIEC, data.TEN_CONG_VIEC, data.THOI_GIAN_KET_THUC_CONG_VIEC); 
                    });
                }
            }
            
            if(data.DIEM_CHAT_LUONG === null)
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_DG_CHAT_LUONG)
                {
                    $('td:eq(' + fixed_td_index(table, "DIEM_CHAT_LUONG")  +  ')', row).html('<span class="red">Chưa được đánh giá</apan>');            
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "DIEM_CHAT_LUONG")  +  ')', row).html('<button type="button" title="Đánh giá chất lượng công việc" class="btn bg-red waves-effect"><i class="material-icons">thumb_up</i></button>').find("button").click(function()
                    {
                        danh_gia_chat_luong(data.MA_CONG_VIEC, data.TEN_CONG_VIEC); 
                    });
                }
            }
            
            if(data.DIEM_THAI_DO === null)
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_DG_THAI_DO)
                {
                    $('td:eq(' + fixed_td_index(table, "DIEM_THAI_DO")  +  ')', row).html('<span class="red">Chưa được đánh giá</apan>');            
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "DIEM_THAI_DO")  +  ')', row).html('<button type="button" title="Đánh giá thái độ công việc" class="btn bg-red waves-effect"><i class="material-icons">tag_faces</i></button>').find("button").click(function()
                    {
                        danh_gia_thai_do(data.MA_CONG_VIEC, data.TEN_CONG_VIEC); 
                    });
                }
            }
            
            if(data.THAM_DINH_TONG_THOI_GIAN === null)
            {
                if(ma_tai_khoan_session !== data.MA_TAI_KHOAN_THAM_DINH)
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_TONG_THOI_GIAN")  +  ')', row).html('<span class="red">Chưa được thẩm định</apan>');            
                }
                else
                {
                    $('td:eq(' + fixed_td_index(table, "THAM_DINH_TONG_THOI_GIAN")  +  ')', row).html('<button type="button" title="Thẩm định tổng thời gian công việc" class="btn bg-red waves-effect"><i class="material-icons">timer</i></button>').find("button").click(function()
                    {
                        tham_dinh_tong_thoi_gian(data.MA_CONG_VIEC, data.TEN_CONG_VIEC, data.TONG_THOI_GIAN_CONG_VIEC); 
                    });
                }
            }
        },
        drawCallback : function() { 
            var table = $("#cong_viec_dt").DataTable();
            
            $.contextMenu({
                selector: '#cong_viec_dt tbody tr td', 
                items: {
                    xem_cong_viec: {name: "Xem thông tin công việc", icon: "info"},
                    them: {name: "Thêm công việc", icon: "add"},
                    them_nhanh: {name: "Thêm nhánh công việc", icon: "them-nhanh", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan = table.cell(row_index, table.column( 'MA_TAI_KHOAN:name' ).index()).data(); 
                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan &&  ma_tai_khoan_session !== ma_tai_khoan_xu_ly)
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    xem_cay_cong_viec: {name: "Xem cây công việc", icon: "cay-cong-viec", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var so_luong_cong_viec_con = table.cell(row_index, table.column( 'SO_LUONG_CONG_VIEC_CON:name' ).index()).data(); 
                            if(so_luong_cong_viec_con === null || so_luong_cong_viec_con === "0")
                            {
                                return true;
                            }
                            return false; 
                        }
                    },
                    chinh_sua: {name: "Sửa công việc", icon: "edit", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    

                            var ma_tai_khoan_tao = table.cell(row_index, table.column( 'MA_TAI_KHOAN:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_tao)
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    xoa: {name: "Xóa công việc", icon: "delete", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    

                            var ma_tai_khoan_tao = table.cell(row_index, table.column( 'MA_TAI_KHOAN:name' ).index()).data(); 
                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_tao || ma_tai_khoan_xu_ly !== null)
                            {
                                return true;
                            }
                            return false; 
                        }
                    },
                    cap_nhat_ti_le: {name: "Cập nhật tỉ lệ hoàn thành", icon: "ti-le", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    

                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_xu_ly || ma_trang_thai_cong_viec !== "2")
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    hoan_thanh: {name: "Hoàn thành công việc", icon: "trang-thai", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    

                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_xu_ly || ma_trang_thai_cong_viec !== "2")
                            {
                                return true;
                            }
                            return false;
                        }
                    }, 
                    /*
                    nhan_xu_ly: {name: "Nhận xử lý công việc", icon: "accept", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    

                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_trang_thai_cong_viec !== "1")
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    tu_choi: {name: "Từ chối công việc", icon: "cancel", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_xu_ly ||  ma_trang_thai_cong_viec !== "2")
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    */
                    huy_cong_viec: {name: "Hủy công việc", icon: "huy", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_xu_ly ||  ma_trang_thai_cong_viec !== "2")
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    tham_dinh: {name: "Thẩm định hoàn thành công việc", icon: "tham-dinh", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_tham_dinh = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_tham_dinh ||  (ma_trang_thai_cong_viec !== "2" && ma_trang_thai_cong_viec !== "3"))
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    tham_dinh_tong_thoi_gian: {name: "Thẩm định tổng thời gian", icon: "tham-dinh", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_tham_dinh = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_tham_dinh ||  (ma_trang_thai_cong_viec !== "2" && ma_trang_thai_cong_viec !== "3"))
                            {
                                return true;
                            }
                            return false;
                        }
                    },
                    tham_dinh_chua_hoan_thanh: {name: "Thẩm định chưa hoàn thành công việc", icon: "tham-dinh", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_tham_dinh = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data(); 
                            var ma_trang_thai_cong_viec = table.cell(row_index, table.column( 'MA_TRANG_THAI_CONG_VIEC:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_tham_dinh ||  ma_trang_thai_cong_viec !== "3")
                            {
                                return true;
                            }
                            return false; 
                        }
                    },
                    danh_gia_chat_luong: {name: "Đánh giá chất lượng", icon: "chat-luong", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_danh_gia_chat_luong = table.cell(row_index, table.column( 'MA_TAI_KHOAN_DG_CHAT_LUONG:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_danh_gia_chat_luong)
                            {
                                return true;
                            }
                            return false; 
                        }
                    },
                    danh_gia_thai_do: {name: "Đánh giá thái độ", icon: "thai-do", 
                        disabled: function(key, options) { 
                            var row_index = options.$trigger[0]._DT_CellIndex["row"];
                            var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                            
                            var ma_tai_khoan_danh_gia_thai_do = table.cell(row_index, table.column( 'MA_TAI_KHOAN_DG_THAI_DO:name' ).index()).data(); 
                            if(ma_tai_khoan_session !== ma_tai_khoan_danh_gia_thai_do)
                            {
                                return true;
                            }
                            return false; 
                        }
                    }                    
                },
                callback: function(key, options) {
                    var row_index = options.$trigger[0]._DT_CellIndex["row"];
                    var column_index = options.$trigger[0]._DT_CellIndex["column"];                    
                    
                    ma_cong_viec_vua_thao_tac = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                    
                    switch (key)
                    {
                        case "xem_cong_viec":
                        {                              
                            ma_cong_viec_dang_sua = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            dang_them_moi_cong_viec = false;
                            ma_tai_khoan_xu_ly_dang_sua = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data();
                            ma_tai_khoan_tham_dinh_dang_sua = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data();
                            var tong_thoi_gian_cong_viec = table.cell(row_index, table.column( 'TONG_THOI_GIAN_CONG_VIEC:name' ).index()).data();
                            var tong_thoi_gian_cong_viec_f = 0;
                            if(tong_thoi_gian_cong_viec === null || parseFloat(tong_thoi_gian_cong_viec) < 0)
                            {
                                tong_thoi_gian_cong_viec = 0;
                            }
                            else
                            {
                                tong_thoi_gian_cong_viec_f = parseFloat(tong_thoi_gian_cong_viec);
                            }
                            
                            $("#them_cong_viec_dialog_title").text("Thông tin công việc: " + table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data());
                            $("#ten_cong_viec").val(table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data());
                            var noi_dung_cong_viec = table.cell(row_index, table.column( 'NOI_DUNG_CONG_VIEC:name' ).index()).data();
                            $("#noi_dung_cong_viec").val(noi_dung_cong_viec);
                            $("#du_an").val(table.cell(row_index, table.column( 'MA_DU_AN:name' ).index()).data()).trigger('change');
                            $("#don_vi_yeu_cau").val(table.cell(row_index, table.column( 'MA_DON_VI_YEU_CAU:name' ).index()).data()).trigger('change');
                            $("#do_uu_tien").val(table.cell(row_index, table.column( 'MA_MUC_DO_UU_TIEN:name' ).index()).data()).trigger('change');
                            $("#nhom_tai_khoan").val(table.cell(row_index, table.column( 'MA_NHOM_TAI_KHOAN:name' ).index()).data()).trigger('change');
                            $("#thoi_gian_bat_dau").val(table.cell(row_index, table.column( 'THOI_GIAN_BAT_DAU_CONG_VIEC:name' ).index()).data());
                            $("#thoi_gian_ket_thuc").val(table.cell(row_index, table.column( 'THOI_GIAN_KET_THUC_CONG_VIEC:name' ).index()).data());
                            $("#tong_thoi_gian_cong_viec").val(tong_thoi_gian_cong_viec_f);
                            $("#ten_cong_viec").parent().addClass('focused');
                            $("#noi_dung_cong_viec").parent().addClass('focused');
                            $("#tong_thoi_gian_cong_viec").parent().addClass('focused');
                            $("#them_cong_viec_dialog").modal("show");
                            $("#luu_cong_viec_btn").prop("disabled", true);
                            break;
                        }
                        case "them":
                        {
                            show_them_cong_viec_dialog();
                            break;
                        }
                        case "chinh_sua":
                        {                            
                            ma_cong_viec_dang_sua = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            dang_them_moi_cong_viec = false;
                            ma_tai_khoan_xu_ly_dang_sua = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data();
                            ma_tai_khoan_tham_dinh_dang_sua = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data();
                            var tong_thoi_gian_cong_viec = table.cell(row_index, table.column( 'TONG_THOI_GIAN_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            var noi_dung_cong_viec = table.cell(row_index, table.column( 'NOI_DUNG_CONG_VIEC:name' ).index()).data();
                            var du_an = table.cell(row_index, table.column( 'MA_DU_AN:name' ).index()).data();
                            var don_vi_yeu_cau = table.cell(row_index, table.column( 'MA_DON_VI_YEU_CAU:name' ).index()).data();
                            var do_uu_tien = table.cell(row_index, table.column( 'MA_MUC_DO_UU_TIEN:name' ).index()).data();
                            var nhom_tai_khoan = table.cell(row_index, table.column( 'MA_NHOM_TAI_KHOAN:name' ).index()).data();
                            var thoi_gian_bat_dau = table.cell(row_index, table.column( 'THOI_GIAN_BAT_DAU_CONG_VIEC:name' ).index()).data();
                            var thoi_gian_ket_thuc = table.cell(row_index, table.column( 'THOI_GIAN_KET_THUC_CONG_VIEC:name' ).index()).data();
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var tai_khoan_xu_ly = table.cell(row_index, table.column( 'MA_TAI_KHOAN_XU_LY:name' ).index()).data();
                            var tai_khoan_tham_dinh = table.cell(row_index, table.column( 'MA_TAI_KHOAN_THAM_DINH:name' ).index()).data();                            
                            var ma_loai_cv = table.cell(row_index, table.column( 'MA_LOAI_CV:name' ).index()).data();
                            var trong_so_cv = table.cell(row_index, table.column( 'TRONGSO_CV:name' ).index()).data();                            
                            
                            chinh_sua_cong_viec(tong_thoi_gian_cong_viec, ten_cong_viec, noi_dung_cong_viec, du_an, don_vi_yeu_cau, do_uu_tien, nhom_tai_khoan, thoi_gian_bat_dau, thoi_gian_ket_thuc, ma_cong_viec, tai_khoan_xu_ly, tai_khoan_tham_dinh,ma_loai_cv,trong_so_cv);
                            break;
                        }
                        case "them_nhanh" :
                        {
                            ma_cong_viec_cha = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();

                            dang_them_moi_cong_viec = true;
                            ma_tai_khoan_xu_ly_dang_sua = "null";
                            ma_tai_khoan_tham_dinh_dang_sua = "null";
                            $('#tai_khoan_xu_ly').prop("disabled", false);
                            $('#nhom_tai_khoan').prop("disabled", false);
                            $('#tai_khoan_tham_dinh').prop("disabled", false);
                            $("#them_cong_viec_dialog_title").text("Thêm nhánh cho công việc: " + table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data());
                            $("#them_cong_viec_dialog").modal("show");                            
                            $("#ma_cong_viec_cha").val(ma_cong_viec_cha);

                            break;
                        }
                        case "xoa":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            swal({
                                title: "Xóa công việc: " + ten_cong_viec,
                                text: "",
                                type: "warning",
                                showCancelButton: true,
                                confirmButtonColor: "#DD6B55",
                                confirmButtonText: "Xóa!",
                                cancelButtonText: "Không!",
                                closeOnConfirm: false,
                                closeOnCancel: true
                            }, function (isConfirm) {
                                if (isConfirm) {
                                    $.post("php/cong_viec/xoa_cong_viec.php",
                                    {
                                        ma_cong_viec: ma_cong_viec
                                    }).done(function(data)
                                    {
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                    
                                } 
                            });
                            break;
                        }
                        case "cap_nhat_ti_le":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            var ti_le_hoan_thanh = table.cell(row_index, table.column( 'TI_LE_HOAN_THANH_CONG_VIEC:name' ).index()).data();
                            
                            cap_nhat_ti_le(ma_cong_viec, ten_cong_viec, ti_le_hoan_thanh);
                            break;
                        }
                        case "hoan_thanh":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            hoan_thanh_cong_viec(ma_cong_viec, ten_cong_viec);
                            break;
                        }
                        /*
                        case "tu_choi":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            swal({
                                title: "Từ chối công việc: " + ten_cong_viec,
                                showCancelButton: true,
                                confirmButtonColor: "#DD6B55",
                                confirmButtonText: "Từ chối!",
                                cancelButtonText: "Không!",
                                closeOnConfirm: false,
                                closeOnCancel: true
                            }, function (isConfirm) {
                                if (isConfirm) {
                                    $.post("php/cong_viec/cap_nhat_trang_thai_cong_viec.php",
                                    {
                                        ma_cong_viec: ma_cong_viec,
                                        ma_trang_thai_cong_viec: "1"
                                    }).done(function(data)
                                    {
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                    
                                } 
                            });
                            break;
                        }
                        case "nhan_xu_ly":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            swal({
                                title: "Nhận xử lý công việc: " + ten_cong_viec,
                                showCancelButton: true,
                                confirmButtonColor: "#FF9800",
                                confirmButtonText: "Nhận xử lý!",
                                cancelButtonText: "Không!",
                                closeOnConfirm: false,
                                closeOnCancel: true
                            }, function (isConfirm) {
                                if (isConfirm) {
                                    $.post("php/cong_viec/nhan_xu_ly_cong_viec.php",
                                    {
                                        ma_cong_viec: ma_cong_viec
                                    }).done(function(data)
                                    {
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                    
                                } 
                            });
                            break;
                        }
                        */
                        case "huy_cong_viec":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            swal({     
                                title: "Nhận xử lý công việc: " + ten_cong_viec,
                                html:'<label class="form-label">Ngày hủy: </label> &nbsp; <input id="thoi_gian_hoan_thanh" type="text" class="date">',
                                showCancelButton: true,
                                confirmButtonColor: "##fb483a",
                                confirmButtonText: "Hủy công việc!",
                                cancelButtonText: "Không!",
                                showCancelButton: true,
                                showLoaderOnConfirm: true,
                                showCancelButton: true,
                                onOpen: () => {
                                    $(".date").bootstrapMaterialDatePicker(
                                    { 
                                        format : 'DD/MM/YYYY', 
                                        lang : 'vi', 
                                        cancelText : 'Hủy',
                                        okText: 'Xong',
                                        nowText: 'Thời gian hiện tại',
                                        nowButton : true,
                                        switchOnClick : true,
                                        time: false
                                    });
                                    var today = new Date();
                                    var dd = today.getDate();
                                    var mm = today.getMonth()+1; //January is 0!

                                    var yyyy = today.getFullYear();
                                    if(dd<10){
                                        dd='0'+dd;
                                    } 
                                    if(mm<10){
                                        mm='0'+mm;
                                    } 
                                    var today = dd+'/'+mm+'/'+yyyy;
                                    $("#thoi_gian_hoan_thanh").val(today);
                                },        
                                preConfirm: () => {

                                    $.post("php/cong_viec/cap_nhat_trang_thai_cong_viec.php",
                                    {                
                                        ma_cong_viec: ma_cong_viec,
                                        ma_trang_thai_cong_viec: "6",
                                        ngay_hoan_thanh:$("#thoi_gian_hoan_thanh").val()
                                    }).done(function(data)
                                    {
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                }
                            });
                            /*swal({
                                title: "Nhận xử lý công việc: " + ten_cong_viec,
                                showCancelButton: true,
                                confirmButtonColor: "##fb483a",
                                confirmButtonText: "Hủy công việc!",
                                cancelButtonText: "Không!",
                                closeOnConfirm: false,
                                closeOnCancel: true
                            }, function (isConfirm) {
                                if (isConfirm) {
                                    $.post("php/cong_viec/cap_nhat_trang_thai_cong_viec.php",
                                    {
                                        ma_cong_viec: ma_cong_viec,
                                        ma_trang_thai_cong_viec: "6"
                                    }).done(function(data)
                                    {
                                        alert(ma_cong_viec);
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                    
                                } 
                            });*/
                            break;
                        }
                        case "tham_dinh":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            var thoi_gian_ket_thuc = table.cell(row_index, table.column( 'THOI_GIAN_KET_THUC_CONG_VIEC:name' ).index()).data();
                            
                            tham_dinh_cong_viec(ma_cong_viec, ten_cong_viec, thoi_gian_ket_thuc);
                            break;
                        }
                        case "tham_dinh_tong_thoi_gian":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            var tong_thoi_gian = table.cell(row_index, table.column( 'TONG_THOI_GIAN_CONG_VIEC:name' ).index()).data();
                            
                            tham_dinh_tong_thoi_gian(ma_cong_viec, ten_cong_viec, tong_thoi_gian);
                            break;
                        }
                        case "tham_dinh_chua_hoan_thanh":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            swal({
                                title: "Thẩm định công việc: " + ten_cong_viec,
                                showCancelButton: true,
                                confirmButtonColor: "##fb483a",
                                confirmButtonText: "Chưa hoàn thành!",
                                cancelButtonText: "Không!",
                                closeOnConfirm: false,
                                closeOnCancel: true
                            }, function (isConfirm) {
                                if (isConfirm) {
                                    $.post("php/cong_viec/tham_dinh_chua_hoan_thanh_cong_viec.php",
                                    {
                                        ma_cong_viec: ma_cong_viec
                                    }).done(function(data)
                                    {
                                        handle_data_json(data, null, 
                                        function(obj, other_obj)
                                        {
                                            if(obj[0].MA_CONG_VIEC !== null)
                                            {
                                                $("#cong_viec_dt").DataTable().ajax.reload();
                                                lay_so_luong_cong_viec_cua_toi();
                                                lay_so_luong_cong_viec_lien_quan();
                                                lay_so_luong_cong_viec_can_tham_dinh();
                                                lay_so_luong_cong_viec_hoan_thanh_tre();
                                                lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                                                swal(obj[0].THONG_BAO, "", "success");
                                            }
                                            else
                                            {
                                                swal(obj[0].THONG_BAO, "", "error");
                                            }
                                        }
                                        , "Có lỗi trong quá trình xử lý!");                
                                   });
                                    
                                } 
                            });
                            break;
                        }
                        case "danh_gia_chat_luong":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            danh_gia_chat_luong(ma_cong_viec, ten_cong_viec);
                            break;
                        }
                        case "danh_gia_thai_do":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ten_cong_viec = table.cell(row_index, table.column( 'TEN_CONG_VIEC:name' ).index()).data();
                            
                            danh_gia_thai_do(ma_cong_viec, ten_cong_viec);
                            break;
                        }
                        case "xem_cay_cong_viec":
                        {
                            var ma_cong_viec = table.cell(row_index, table.column( 'MA_CONG_VIEC:name' ).index()).data();
                            var ma_cong_viec_cha = table.cell(row_index, table.column( 'MA_CONG_VIEC_CHA:name' ).index()).data();
                            var so_luong_cong_viec_con = table.cell(row_index, table.column( 'SO_LUONG_CONG_VIEC_CON:name' ).index()).data();
                            
                            xem_cau_cong_viec(ma_cong_viec, ma_cong_viec_cha, so_luong_cong_viec_con);
                            break;
                        }
                    }
                }                
            });
          }
    } );

    $('#cong_viec_dt tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
    
    $('#cong_viec_dt').on( 'processing.dt', function ( e, settings, processing ) {
        dang_load_danh_sach_cong_viec = processing;
    }).dataTable();
    
    /*
    $('#cong_viec_dt tbody').on( 'click', 'tr', function () {
        var table = $('#cong_viec_dt').DataTable();
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
    */
    
    apply_select2("#du_an", "#them_cong_viec_modal_body", "Dự án công việc");
    apply_select2("#don_vi_yeu_cau", "#them_cong_viec_modal_body", "Đơn vị yêu cầu");
    apply_select2("#do_uu_tien", "#them_cong_viec_modal_body", "Độ ưu tiên của công việc");
    apply_select2("#nhom_tai_khoan", "#them_cong_viec_modal_body", "Nhóm của công việc");
    apply_select2("#tai_khoan_xu_ly", "#them_cong_viec_modal_body", "Người được giao việc");
    apply_select2("#tai_khoan_tham_dinh", "#them_cong_viec_modal_body", "Người thẩm định");
    apply_select2("#trang_thai", "#congviec_header", "Trạng thái công việc");
    apply_select2("#loai_cv", "#congviec_header", "Loại công việc");
    
    apply_select2("#du_an_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Dự án công việc");
    apply_select2("#don_vi_yeu_cau_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Đơn vị yêu cầu");
    apply_select2("#do_uu_tien_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Độ ưu tiên của công việc");
    apply_select2("#nhom_tai_khoan_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Nhóm của công việc");
    apply_select2("#tai_khoan_tao_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Người tạo");
    apply_select2("#tai_khoan_xu_ly_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Người xử lý");
    apply_select2("#tai_khoan_tham_dinh_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Người thẩm định");
    apply_select2("#trang_thai_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Trạng thái của công việc");
    
    //Date
    $('.datetime').inputmask('d/m/y h:s', { placeholder: '__/__/____ __:__', alias: "datetime", hourFormat: '24' });
    $('.date').inputmask('d/m/y', { placeholder: '__/__/____', alias: "date"});

    cai_dat_select_cho_them_cong_viec_dialog();
    
    $("#thoi_gian_bat_dau").keyup(function(evt)
    {
        tinh_tong_thoi_gian(evt);
    });
    
    $("#thoi_gian_ket_thuc").keyup(function(evt)
    {
        if(evt.keyCode !== 13) return;
        
        var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();
        if(thoi_gian_bat_dau.indexOf("_") > -1)
        {
            showNotification("bg-red", "Không thể tính được thời gian kết thúc từ thời gian bắt đầu đã nhập!", "bottom", "right", "", "");
            return;
        }
        var thoi_gian_ket_thuc = $("#thoi_gian_ket_thuc").val();
        if(thoi_gian_ket_thuc.indexOf("_") > -1)
        {
            showNotification("bg-red", "Không thể tính được thời gian kết thúc từ thời gian kết thúc đã nhập!", "bottom", "right", "", "");
            return;
        }
        
        var nam = parseInt(thoi_gian_bat_dau.substring(6, 10));
        var thang = parseInt(thoi_gian_bat_dau.substring(3, 5))-1;
        var ngay = parseInt(thoi_gian_bat_dau.substring(0, 2));
        var gio = parseInt(thoi_gian_bat_dau.substring(11, 13));
        var phut = parseInt(thoi_gian_bat_dau.substring(14));
        var thoi_gian_bat_dai_date = new Date(nam, thang, ngay, gio, phut);
        
        nam = parseInt(thoi_gian_ket_thuc.substring(6, 10));
        thang = parseInt(thoi_gian_ket_thuc.substring(3, 5))-1;
        ngay = parseInt(thoi_gian_ket_thuc.substring(0, 2));
        gio = parseInt(thoi_gian_ket_thuc.substring(11, 13));
        phut = parseInt(thoi_gian_ket_thuc.substring(14));
        var thoi_gian_ket_thuc_date = new Date(nam, thang, ngay, gio, phut);
        
        var tong_thoi_gian = (thoi_gian_ket_thuc_date.getTime() - thoi_gian_bat_dai_date.getTime()) / (1000 * 3600);
        $("#tong_thoi_gian_cong_viec").val(tong_thoi_gian);
    });
    
    $("#tong_thoi_gian_cong_viec").keyup(function(evt)
    {
        tinh_tong_thoi_gian(evt);
    });

    $("#du_an").change(function()
    {
        var du_an = $("#du_an").val();        
        
        if(du_an === null) return;        
        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/doGet.php?txtAction=lay_danh_sach_don_vi_yeu_cau&du_an=" + du_an , "#don_vi_yeu_cau", "MA_DON_VI_YEU_CAU", "TEN_DON_VI_YEU_CAU", "Không lấy được danh sách đơn vị yêu cầu. Vui lòng liên hệ Admin!");                
        //cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_don_vi_yeu_cau.php", "#don_vi_yeu_cau", "MA_DON_VI_YEU_CAU", "TEN_DON_VI_YEU_CAU", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    });
    
    $("#nhom_tai_khoan").change(function()
    {
        var ma_nhom_tai_khoan = $("#nhom_tai_khoan").val();
        var ma_tai_khoan_xu_ly = $("#tai_khoan_xu_ly").val();
        
        if(ma_nhom_tai_khoan === null) return;        
        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_xu_ly.php?ma_nhom_tai_khoan=" + ma_nhom_tai_khoan , "#tai_khoan_xu_ly", "MA_TAI_KHOAN", "TEN_HIEN_THI", null);
        
        if(ma_tai_khoan_xu_ly === null) return;
        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_tham_dinh_theo_tai_khoan_xu_ly.php?ma_tai_khoan_xu_ly=" + ma_tai_khoan_xu_ly  + "&ma_nhom_tai_khoan=" + ma_nhom_tai_khoan, "#tai_khoan_tham_dinh", "MA_TAI_KHOAN", "TEN_HIEN_THI", null);
    });
    
    $("#tai_khoan_xu_ly").change(function()
    {
        var ma_nhom_tai_khoan = $("#nhom_tai_khoan").val();
        var ma_tai_khoan_xu_ly = $("#tai_khoan_xu_ly").val();
        
        if(ma_nhom_tai_khoan === null) return;
        if(ma_tai_khoan_xu_ly === null) return;
        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/lay_danh_sach_tai_khoan_tham_dinh_theo_tai_khoan_xu_ly.php?ma_tai_khoan_xu_ly=" + ma_tai_khoan_xu_ly  + "&ma_nhom_tai_khoan=" + ma_nhom_tai_khoan, "#tai_khoan_tham_dinh", "MA_TAI_KHOAN_THAM_DINH", "TEN_HIEN_THI", null);
    });

    $("#thoi_gian_bat_dau").change(function()
    {
        var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();
        //var ma_tai_khoan_xu_ly = $("#tai_khoan_xu_ly").val();        

        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/doGet.php?txtAction=getLoaiCongViec&thoi_gian_bat_dau=" + thoi_gian_bat_dau , "#loai_cv", "MA_LOAI_CV", "TEN_LOAI_CV", null);
    });
    
    $("#luu_cong_viec_btn").click(function()
    {       
       var ten_cong_viec = $("#ten_cong_viec").val();
       var noi_dung_cong_viec = $("#noi_dung_cong_viec").val();
       var du_an = $("#du_an").val();
       var don_vi_yeu_cau = $("#don_vi_yeu_cau").val();
       var do_uu_tien = $("#do_uu_tien").val();
       var nhom_tai_khoan = $("#nhom_tai_khoan").val();
       var tai_khoan_xu_ly = $("#tai_khoan_xu_ly").val();
       var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();
       var thoi_gian_ket_thuc = $("#thoi_gian_ket_thuc").val();
       //r tong_thoi_gian_cong_viec = $("#tong_thoi_gian_cong_viec").val();
       var tai_khoan_tham_dinh = $("#tai_khoan_tham_dinh").val();   
       var loai_cv = $("#loai_cv").val();   
       var trong_so = $("#trong_so").val(); 
       var ma_cong_viec_cha=$("#ma_cong_viec_cha").val();  
       
       if(ten_cong_viec === null || noi_dung_cong_viec === null || du_an === null || don_vi_yeu_cau === null || do_uu_tien === null 
          || (nhom_tai_khoan === null && dang_them_moi_cong_viec) || (tai_khoan_xu_ly === null && dang_them_moi_cong_viec) 
          || (tai_khoan_tham_dinh === null && dang_them_moi_cong_viec) /*|| tong_thoi_gian_cong_viec === null*/)
       {
           showNotification("bg-red", "Vui lòng nhập đầy đủ thông tin!", "bottom", "right", "", "");
           return;
       }
       
       if(ten_cong_viec.trim() === "" || noi_dung_cong_viec.trim() === "" || du_an.trim() === "" /*|| don_vi_yeu_cau.trim() === "" */
          || do_uu_tien.trim() === "" || (nhom_tai_khoan.trim() === "" && dang_them_moi_cong_viec) 
          || (tai_khoan_xu_ly.trim() === "" && dang_them_moi_cong_viec) || (tai_khoan_tham_dinh.trim() === "" && dang_them_moi_cong_viec) 
          /*|| tong_thoi_gian_cong_viec.trim() === ""*/)
       {
           showNotification("bg-red", "Vui lòng nhập đầy đủ thông tin!", "bottom", "right", "", "");
           return;
       }
       
       /*if(parseFloat(tong_thoi_gian_cong_viec) <= 0)
       {
           showNotification("bg-red", "Tổng thời gian công việc phải lớn hơn 0!", "bottom", "right", "", "");
           return;
       }*/
       
       if(thoi_gian_bat_dau.includes("_"))
       {
           $("#thoi_gian_bat_dau").focus();
           showNotification("bg-red", "Vui lòng nhập thời gian bắt đầu!", "bottom", "right", "", "");
           return;
       }
       
       if(thoi_gian_ket_thuc.includes("_"))
       {
           $("#thoi_gian_ket_thuc").focus();
           showNotification("bg-red", "Vui lòng nhập thời gian kết thúc!", "bottom", "right", "", "");
           return;
       }
       
       if(dang_them_moi_cong_viec)
       {
            $.post("php/cong_viec/them_cong_viec.php",
             {
                 ma_cong_viec_cha: ma_cong_viec_cha,
                 ten_cong_viec: ten_cong_viec,
                 noi_dung_cong_viec: noi_dung_cong_viec,
                 du_an: du_an,
                 don_vi_yeu_cau: don_vi_yeu_cau.join(','),
                 do_uu_tien: do_uu_tien,
                 nhom_tai_khoan: nhom_tai_khoan,
                 tai_khoan_xu_ly: tai_khoan_xu_ly,
                 thoi_gian_bat_dau: thoi_gian_bat_dau,
                 thoi_gian_ket_thuc: thoi_gian_ket_thuc,                 
                 tai_khoan_tham_dinh: tai_khoan_tham_dinh,
                 loai_cv: loai_cv,
                 trong_so: trong_so
             }).done(function(data)
             {
                 handle_data_json(data, null, 
                 function(obj, other_obj)
                 {
                     if(obj[0].MA_CONG_VIEC !== null)
                     {
                         $("#cong_viec_dt").DataTable().ajax.reload();
                         lay_so_luong_cong_viec_cua_toi();
                         lay_so_luong_cong_viec_lien_quan();
                         lay_so_luong_cong_viec_can_tham_dinh();
                         lay_so_luong_cong_viec_hoan_thanh_tre();
                         lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                         $("#ten_cong_viec").val("");
                         $("#noi_dung_cong_viec").val("");
                         $("#ten_cong_viec").focusout();
                         $("#noi_dung_cong_viec").focusout();
                         $("#du_an").val("").change();
                         $("#don_vi_yeu_cau").val("").change();
                         $("#do_uu_tien").val("").change();
                         $("#tai_khoan_tham_dinh").val("").change();
                         $("#tai_khoan_xu_ly").val("").change();                    
                         $("#nhom_tai_khoan").val("").change();
                         ma_cong_viec_vua_thao_tac = obj[0].MA_CONG_VIEC;
                         showNotification("alert-success", obj[0].THONG_BAO, "bottom", "right", "", "");
                     }
                     else
                     {
                         showNotification("bg-red", obj[0].THONG_BAO, "bottom", "right", "", "");
                     }
                 }
                 , "Có lỗi trong quá trình xử lý!");                
            });
        }
        else  // sua cong viec
        {
            

            $.post("php/cong_viec/sua_cong_viec.php",
             {
                 ma_cong_viec: ma_cong_viec_dang_sua,
                 ten_cong_viec: ten_cong_viec,
                 noi_dung_cong_viec: noi_dung_cong_viec,
                 du_an: du_an,
                 don_vi_yeu_cau: don_vi_yeu_cau.join(','),
                 do_uu_tien: do_uu_tien,
                 nhom_tai_khoan: nhom_tai_khoan,
                 tai_khoan_xu_ly: tai_khoan_xu_ly,
                 thoi_gian_bat_dau: thoi_gian_bat_dau,
                 thoi_gian_ket_thuc: thoi_gian_ket_thuc,                 
                 tai_khoan_tham_dinh: tai_khoan_tham_dinh,
                 loai_cv: loai_cv,
                 trong_so: trong_so
             }).done(function(data)
             {
                 handle_data_json(data, null, 
                 function(obj, other_obj)
                 {
                     if(obj[0].MA_CONG_VIEC !== null)
                     {
                         $("#cong_viec_dt").DataTable().ajax.reload();
                         lay_so_luong_cong_viec_cua_toi();
                         lay_so_luong_cong_viec_lien_quan();
                         lay_so_luong_cong_viec_can_tham_dinh();
                         lay_so_luong_cong_viec_hoan_thanh_tre();
                         lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                         ma_cong_viec_vua_thao_tac = obj[0].MA_CONG_VIEC;
                         showNotification("alert-success", obj[0].THONG_BAO, "bottom", "right", "", "");
                     }
                     else
                     {
                         showNotification("bg-red", obj[0].THONG_BAO, "bottom", "right", "", "");
                     }
                 }
                 , "Có lỗi trong quá trình xử lý!");                
            });
        }
    });
}

function tinh_tong_thoi_gian(evt)
{
    if(evt.keyCode !== 13) return;
        
    var tong_thoi_gian = $("#tong_thoi_gian_cong_viec").val();
    if(tong_thoi_gian === "")
    {
        showNotification("bg-red", "Không thể tính được thời gian kết thúc từ tổng thời gian đã nhập!", "bottom", "right", "", "");
        return;
    }   

    var tong_thoi_gian_float = parseFloat(tong_thoi_gian);

    if(tong_thoi_gian_float > 99999)
    {
        showNotification("bg-red", "Tổng thời gian đã nhập không thể lớn hơn 99999 giờ!", "bottom", "right", "", "");
        return;
    }

    var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();

    if(thoi_gian_bat_dau.indexOf("_") > -1)
    {
        showNotification("bg-red", "Không thể tính được thời gian kết thúc từ thời gian bắt đầu đã nhập!", "bottom", "right", "", "");
        return;
    }

    var nam = parseInt(thoi_gian_bat_dau.substring(6, 10));
    var thang = parseInt(thoi_gian_bat_dau.substring(3, 5))-1;
    var ngay = parseInt(thoi_gian_bat_dau.substring(0, 2));
    var gio = parseInt(thoi_gian_bat_dau.substring(11, 13));
    var phut = parseInt(thoi_gian_bat_dau.substring(14));
    var thoi_gian_bat_dai_date = new Date(nam, thang, ngay, gio, phut);

    var thoi_gian_ket_thuc_date = new Date(thoi_gian_bat_dai_date.getTime() + tong_thoi_gian_float * 60 * 60 * 1000);
    $("#thoi_gian_ket_thuc").val(date_to_string(thoi_gian_ket_thuc_date, "dd/MM/yyyy hh:mm"));
}

function date_to_string(x, y) {
    var z = {
        M: x.getMonth() + 1,
        d: x.getDate(),
        h: x.getHours(),
        m: x.getMinutes(),
        s: x.getSeconds()
    };
    y = y.replace(/(M+|d+|h+|m+|s+)/g, function(v) {
        return ((v.length > 1 ? "0" : "") + eval('z.' + v.slice(-1))).slice(-2);
    });

    return y.replace(/(y+)/g, function(v) {
        return x.getFullYear().toString().slice(-v.length);
    });
}

function isNormalInteger(str) {
    var n = Math.floor(Number(str));
    return n !== Infinity && String(n) === str && n >= 0;
}

function fixed_td_index(table, column_name)
{
    var index = table.column( column_name + ':name' ).index();
    var count = 0;
    for(var i=0; i<index; i++)
    {
        if(!table.column(i).visible())
        {
            count++;
        }
    }
    return index - count;
}

function show_tim_kiem_nang_cao_dialog()
{
    $("#tim_cong_viec_nang_cao_dialog").modal("show");
}

function tim_nang_cao()
{
    $("#tim_cong_viec_nang_cao_button").click(function()
    {
        if(dang_load_danh_sach_cong_viec)
        {
            showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
            return;
        }
        
        var du_an = $("#du_an_tim_nang_cao").val();
        var don_vi_yeu_cau = $("#don_vi_yeu_cau_tim_nang_cao").val();
        var do_uu_tien = $("#do_uu_tien_tim_nang_cao").val();
        var nhom_tai_khoan = $("#nhom_tai_khoan_tim_nang_cao").val();
        var trang_thai = $("#trang_thai_tim_nang_cao").val();
        var ngay_them_1 = $("#thoi_gian_them_1_tim_nang_cao").val();
        var ngay_them_2 = $("#thoi_gian_them_2_tim_nang_cao").val();
        var tai_khoan_tao = $("#tai_khoan_tao_tim_nang_cao").val();
        var tai_khoan_xu_ly = $("#tai_khoan_xu_ly_tim_nang_cao").val();
        var tai_khoan_tham_dinh = $("#tai_khoan_tham_dinh_tim_nang_cao").val();

        if(ngay_them_1.includes("_"))
        {
            $("#thoi_gian_them_1_tim_nang_cao").focus();
            showNotification("bg-red", "Vui lòng nhập thời gian thêm từ!", "bottom", "right", "", "");
            return;
        }

        if(ngay_them_2.includes("_"))
        {
            $("#thoi_gian_them_2_tim_nang_cao").focus();
            showNotification("bg-red", "Vui lòng nhập thời gian thêm đến!", "bottom", "right", "", "");
            return;
        }
        clear_search_all("#cong_viec_dt");
        $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=' + trang_thai + '&ma_nhom_tai_khoan=' + nhom_tai_khoan + '&ngay_them_1=' + ngay_them_1 + '&ngay_them_2=' + ngay_them_2 + '&muc_do_uu_tien=' + do_uu_tien + '&ma_du_an=' + du_an + '&ma_tai_khoan_so_huu=' + tai_khoan_tao + '&ma_tai_khoan_xu_ly=' + tai_khoan_xu_ly + '&ma_tai_khoan_tham_dinh=' + tai_khoan_tham_dinh + '&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=' + don_vi_yeu_cau + '&cong_viec_dang_xu_ly=0&ma_cong_viec=TAT_CA').load();
        $("#tim_cong_viec_nang_cao_dialog").modal("hide");
    });
}

function truy_cap_tai_khoan_trong_danh_sach(ma_tai_khoan)
{    
    loop_truy_cap_tai_khoan_trong_danh_sach(ma_tai_khoan);   
    get_page("tai_khoan");
}

function loop_truy_cap_tai_khoan_trong_danh_sach(ma_tai_khoan)
{
    if(loaded_menu_list.includes("tai_khoan"))
    {       
        $("#tai_khoan_dt").DataTable().ajax.url('php/tai_khoan/lay_danh_sach_tai_khoan.php?ma_tai_khoan=' + ma_tai_khoan).load();
    }
    else
    {
        setTimeout(function()
        {
            loop_truy_cap_tai_khoan_trong_danh_sach(ma_tai_khoan);
        }, 1000);
    }
}

function get_all_table_column_name()
{
    if(dang_load_danh_sach_cong_viec)
    {
        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
        return;
    }
    var table = $("#cong_viec_dt").DataTable();
    var columns = table.settings().init().columns;
    table.columns().every( function (index) {   
        console.log(columns[index].name);
        console.log(columns[index].title);

        $("#loc_danh_sach_cong_viec_dialog").modal("show");
    });
}

function tham_dinh_cong_viec(ma_cong_viec, ten_cong_viec, thoi_gian_ket_thuc)
{
    swal({
        title: "Thẩm định công việc: " + ten_cong_viec + "\n\nThẩm định thời gian hoàn thành",
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Thẩm định đã hoàn thành!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: thoi_gian_ket_thuc,
        inputPlaceholder: "Nhập thời gian hoàn thành (ex: 31/01/2018 17:00)"
    }, function (inputValue) {
        if (inputValue === false) return false;
        var year = parseInt(inputValue.substr(6, 4));
        var month = parseInt(inputValue.substr(3, 2));
        var day = parseInt(inputValue.substr(0, 2));
        var hours = parseInt(inputValue.substr(11, 2));
        var minutes = parseInt(inputValue.substr(14, 2));

        var date = new Date(year, month, day, hours, minutes, 0, 0);

        if (date.toString() === "Invalid Date") 
        {
            swal.showInputError("Vui lòng nhập thời gian hoàn thành theo định dạng dd/mm/yyyy HH:mi<br>(Ví dụ: 31/01/2018 17:00)"); 
            return false;
        }
        $.post("php/cong_viec/tham_dinh_hoan_thanh_cong_viec.php",
        {
            ma_cong_viec: ma_cong_viec,
            thoi_gian_hoan_thanh: inputValue
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
}

function danh_gia_chat_luong(ma_cong_viec, ten_cong_viec)
{
    swal({
        title: "Đánh giá chất lượng công việc: " + ten_cong_viec,
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Đánh giá!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: "100",
        inputPlaceholder: "Nhập điểm chất lượng"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) < 0 || parseInt(inputValue) > 120) 
        {
            swal.showInputError("Vui lòng nhập điểm chất lượng là số nguyên!<br>0 <= Điểm chất lượng <= 120!"); 
            return false;
        }
        $.post("php/cong_viec/danh_gia_chat_luong_cong_viec.php",
        {
            ma_cong_viec: ma_cong_viec,
            diem_chat_luong: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
}

function danh_gia_thai_do(ma_cong_viec, ten_cong_viec)
{
    swal({
        title: "Đánh giá thái độ công việc: " + ten_cong_viec,
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Đánh giá!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: "100",
        inputPlaceholder: "Nhập điểm thái độ"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) < 0 || parseInt(inputValue) > 120) 
        {
            swal.showInputError("Vui lòng nhập điểm thái độ là số nguyên!<br>0 <= Điểm chất lượng <= 120!"); 
            return false;
        }
        $.post("php/cong_viec/danh_gia_thai_do_cong_viec.php",
        {
            ma_cong_viec: ma_cong_viec,
            diem_thai_do: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
}

function tham_dinh_tong_thoi_gian(ma_cong_viec, ten_cong_viec, tong_thoi_gian)
{
    swal({
        title: "Thẩm định công việc: " + ten_cong_viec + "\n\nThẩm định tổng thời gian",
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Thẩm định tổng thời gian!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: tong_thoi_gian,
        inputPlaceholder: "Nhập tổng thời gian công việc (số giờ)"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) <= 0) 
        {
            swal.showInputError("Vui lòng nhập tổng thời gian lớn hơn 0!"); 
            return false;
        }
        $.post("php/cong_viec/tham_dinh_tong_thoi_gian_cong_viec.php",
        {
            ma_cong_viec: ma_cong_viec,
            tong_thoi_gian: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
}

function hoan_thanh_cong_viec1(ma_cong_viec, ten_cong_viec)
{
    swal({
        title: "Hoàn thành công việc: " + ten_cong_viec,        
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Hoàn thành!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
            $.post("php/cong_viec/cap_nhat_trang_thai_cong_viec.php",
            {
                ma_cong_viec: ma_cong_viec,
                ma_trang_thai_cong_viec: "3"
            }).done(function(data)
            {
                handle_data_json(data, null, 
                function(obj, other_obj)
                {
                    if(obj[0].MA_CONG_VIEC !== null)
                    {
                        $("#cong_viec_dt").DataTable().ajax.reload();
                        lay_so_luong_cong_viec_cua_toi();
                        lay_so_luong_cong_viec_lien_quan();
                        lay_so_luong_cong_viec_can_tham_dinh();
                        lay_so_luong_cong_viec_hoan_thanh_tre();
                        lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                        swal(obj[0].THONG_BAO, "", "success");
                    }
                    else
                    {
                        swal(obj[0].THONG_BAO, "", "error");
                    }
                }
                , "Có lỗi trong quá trình xử lý!");                
           });

        } 
    });
}

function hoan_thanh_cong_viec(ma_cong_viec, ten_cong_viec)
{
    swal({
        title: "Hoàn thành công việc: " + ten_cong_viec,        
        showCancelButton: true,

        html:'<label class="form-label">Ngày hoàn thành: </label> &nbsp; <input id="thoi_gian_hoan_thanh" type="text" class="date">',
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Hoàn thành!",
        cancelButtonText: "Không!",
        showLoaderOnConfirm: true,
        showCancelButton: true,
        onOpen: () => {
            $(".date").bootstrapMaterialDatePicker(
            { 
                format : 'DD/MM/YYYY', 
                lang : 'vi', 
                cancelText : 'Hủy',
                okText: 'Xong',
                nowText: 'Thời gian hiện tại',
                nowButton : true,
                switchOnClick : true,
                time: false
            });
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth()+1; //January is 0!

            var yyyy = today.getFullYear();
            if(dd<10){
                dd='0'+dd;
            } 
            if(mm<10){
                mm='0'+mm;
            } 
            var today = dd+'/'+mm+'/'+yyyy;
            $("#thoi_gian_hoan_thanh").val(today);
        },        
        preConfirm: () => {

            $.post("php/cong_viec/cap_nhat_trang_thai_cong_viec.php",
            {                
                ma_cong_viec: ma_cong_viec,
                ma_trang_thai_cong_viec: "3",
                ngay_hoan_thanh:$("#thoi_gian_hoan_thanh").val()
            }).done(function(data)
            {
                handle_data_json(data, null, 
                function(obj, other_obj)
                {
                    if(obj[0].MA_CONG_VIEC !== null)
                    {
                        $("#cong_viec_dt").DataTable().ajax.reload();
                        lay_so_luong_cong_viec_cua_toi();
                        lay_so_luong_cong_viec_lien_quan();
                        lay_so_luong_cong_viec_can_tham_dinh();
                        lay_so_luong_cong_viec_hoan_thanh_tre();
                        lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                        swal(obj[0].THONG_BAO, "", "success");
                    }
                    else
                    {
                        swal(obj[0].THONG_BAO, "", "error");
                    }
                }
                , "Có lỗi trong quá trình xử lý!");                
           });
        }
    });
}

function cap_nhat_ti_le1(ma_cong_viec, ten_cong_viec, ti_le_hoan_thanh)
{
    swal({
        title: "Tiến độ công việc: " + ten_cong_viec,
        input: 'text',
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Cập nhật!",
        cancelButtonText: "Không!",
        inputValue: ti_le_hoan_thanh,
        closeOnConfirm: false,
        closeOnCancel: true,
        inputPlaceholder: "Nhập tỉ lệ hoàn thành (số nguyên)"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) <= 0 || parseInt(inputValue) > 100) 
        {
            swal.showInputError("Vui lòng nhập tỉ lệ hoàn thành là số nguyên!<br>0 < Tỉ lệ hoàn thành <= 100!"); 
            return false;
        }
        $.post("php/cong_viec/cap_nhat_ti_le_hoan_thanh_cong_viec.php",
        {
            ma_cong_viec: ma_cong_viec,
            ti_le_hoan_thanh_cong_viec: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
}

function cap_nhat_ti_le(ma_cong_viec, ten_cong_viec, ti_le_hoan_thanh)
{
    swal({
        title: "Tiến độ công việc: " + ten_cong_viec,
        input: 'text',
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Cập nhật!",
        cancelButtonText: "Không!",
        inputValue: ti_le_hoan_thanh,
        showLoaderOnConfirm: true,
        showCancelButton: true,
        inputPlaceholder: "Nhập tỉ lệ hoàn thành (số nguyên)",
        preConfirm: (inputValue) => {
            if (inputValue === false) return false;

            if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) <= 0 || parseInt(inputValue) > 100) 
            {
                //swal.showInputError(); 
                swal.showValidationMessage("Vui lòng nhập tỉ lệ hoàn thành là số nguyên!<br>0 < Tỉ lệ hoàn thành <= 100!");
                return false;
            }

            $.post("php/cong_viec/cap_nhat_ti_le_hoan_thanh_cong_viec.php",
                {
                    ma_cong_viec: ma_cong_viec,
                    ti_le_hoan_thanh_cong_viec: parseInt(inputValue)
                }).done(function(data)
                {
                    handle_data_json(data, null, 
                    function(obj, other_obj)
                    {
                        if(obj[0].MA_CONG_VIEC !== null)
                        {
                            $("#cong_viec_dt").DataTable().ajax.reload();
                            lay_so_luong_cong_viec_cua_toi();
                            lay_so_luong_cong_viec_lien_quan();
                            lay_so_luong_cong_viec_can_tham_dinh();
                            lay_so_luong_cong_viec_hoan_thanh_tre();
                            lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                            swal(obj[0].THONG_BAO, "", "success");
                        }
                        else
                        {
                            swal(obj[0].THONG_BAO, "", "error");
                        }
                    }
                    , "Có lỗi trong quá trình xử lý!");                
               });

        }
    });
}

function xem_cay_cong_viec(ma_cong_viec, ma_cong_viec_cha, so_luong_cong_viec_con)
{
    if(so_luong_cong_viec_con !== "0")
    {
        ma_cong_viec_cha = ma_cong_viec;
    }

    if(ma_cong_viec_cha !== null || ma_cong_viec_cha !== "")
    {
        ma_cong_viec = ma_cong_viec_cha;
    }
    
    $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=' + ma_cong_viec_cha + '&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + ma_cong_viec).load();
}

function chinh_sua_cong_viec(tong_thoi_gian_cong_viec, ten_cong_viec, noi_dung_cong_viec, du_an, don_vi_yeu_cau, do_uu_tien,
                             nhom_tai_khoan, thoi_gian_bat_dau, thoi_gian_ket_thuc, ma_cong_viec, tai_khoan_xu_ly,
                             tai_khoan_tham_dinh,ma_loai_cv,trong_so_cv)
{
    ma_cong_viec_dang_sua = ma_cong_viec;
    dang_them_moi_cong_viec = false;
    ma_tai_khoan_xu_ly_dang_sua = tai_khoan_xu_ly;
    ma_tai_khoan_tham_dinh_dang_sua = tai_khoan_tham_dinh;
    ma_donvi_yc_sua=don_vi_yeu_cau;
    var tong_thoi_gian_cong_viec_f = 0;
    if(tong_thoi_gian_cong_viec === null || parseFloat(tong_thoi_gian_cong_viec) < 0)
    {
        tong_thoi_gian_cong_viec = 0;
    }
    else
    {
        tong_thoi_gian_cong_viec_f = parseFloat(tong_thoi_gian_cong_viec);
    }

    $("#them_cong_viec_dialog_title").text("Sửa thông tin công việc: " + ten_cong_viec);
    $("#ten_cong_viec").val(ten_cong_viec);                            
    $("#noi_dung_cong_viec").val(noi_dung_cong_viec);
    $("#du_an").val(du_an).trigger('change');    
    $("#do_uu_tien").val(do_uu_tien).trigger('change');
    $("#nhom_tai_khoan").val(nhom_tai_khoan).trigger('change');
    $("#thoi_gian_bat_dau").val(thoi_gian_bat_dau);
    $("#thoi_gian_ket_thuc").val(thoi_gian_ket_thuc);
    $("#tong_thoi_gian_cong_viec").val(tong_thoi_gian_cong_viec_f);
    $("#ten_cong_viec").parent().addClass('focused');
    $("#noi_dung_cong_viec").parent().addClass('focused');
    $("#loai_cv").val(ma_loai_cv).trigger('change');
    $("#trong_so").val(trong_so_cv);
    //$("#don_vi_yeu_cau").val(don_vi_yeu_cau).trigger('change');

    $("#tong_thoi_gian_cong_viec").parent().addClass('focused');
    //$('#tai_khoan_xu_ly').prop("disabled", true);
    //$('#nhom_tai_khoan').prop("disabled", true);
    //$('#tai_khoan_tham_dinh').prop("disabled", true);

    $("#them_cong_viec_dialog").modal("show");
    $("#luu_cong_viec_btn").prop("disabled", false);
}

function xem_thong_tin_cong_viec(tong_thoi_gian_cong_viec, ten_cong_viec, noi_dung_cong_viec, du_an, don_vi_yeu_cau, do_uu_tien, nhom_tai_khoan, thoi_gian_bat_dau, thoi_gian_ket_thuc, ma_cong_viec, tai_khoan_xu_ly, tai_khoan_tham_dinh,loai_cv,trong_so)
{
    chinh_sua_cong_viec(tong_thoi_gian_cong_viec, ten_cong_viec, noi_dung_cong_viec, du_an, don_vi_yeu_cau, do_uu_tien, nhom_tai_khoan, thoi_gian_bat_dau, thoi_gian_ket_thuc, ma_cong_viec, tai_khoan_xu_ly, tai_khoan_tham_dinh,loai_cv,trong_so);
    $("#them_cong_viec_dialog_title").text("Thông tin công việc: " + ten_cong_viec);
    $("#luu_cong_viec_btn").prop("disabled", true);
}

function tim_cong_viec_vua_thao_tac() 
{
    if(dang_load_danh_sach_cong_viec)
    {
        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
        return;
    }
    if(ma_cong_viec_vua_thao_tac !== "null")
    {

        $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=TAT_CA&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=1&ma_cong_viec=TAT_CA&ma_cong_viec=' + ma_cong_viec_vua_thao_tac).load();
        //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", ma_cong_viec_vua_thao_tac);
    }
    else
    {
        showNotification("bg-red", "Không có công việc nào vừa thao tác trong bộ nhớ", "bottom", "right", "", "");
    }
}

function tai_lai_danh_sach_cong_viec()
{
    if(dang_load_danh_sach_cong_viec)
    {
        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
        return;
    }
    var table = $("#cong_viec_dt").DataTable();
    clear_search_all("#cong_viec_dt");
    $("#cong_viec_dt").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec='+$("#trang_thai").val()+'&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=0&ma_cong_viec=TAT_CA').load();
    lay_so_luong_cong_viec_cua_toi();
    lay_so_luong_cong_viec_lien_quan();
    lay_so_luong_cong_viec_can_tham_dinh();
    lay_so_luong_cong_viec_hoan_thanh_tre();
    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
}

function lay_chuoi_ma_cong_viec_duoc_chon()
{
    if(dang_load_danh_sach_cong_viec)
    {
        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
        return;
    }

    var table = $("#cong_viec_dt").DataTable();
    var chuoi_ma_cong_viec = ",";
    table.rows('.selected').every(function ( rowIdx, tableLoop, rowLoop ) {
        chuoi_ma_cong_viec += this.data().MA_CONG_VIEC + ",";
    });

    return chuoi_ma_cong_viec;
}

function tham_dinh_nhieu_cong_viec()
{
    var chuoi_ma_cong_viec = lay_chuoi_ma_cong_viec_duoc_chon();
    if(chuoi_ma_cong_viec === ",")
    {
        showNotification("bg-red", "Vui lòng chọn những công việc cần thẩm định!", "bottom", "right", "", "");
        return;
    }

    swal({
        title: "Thẩm định những công việc đã chọn\n\nHOÀN THÀNH ĐÚNG HẠN",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Thẩm định hoàn thành đúng hạn!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
            $.post("php/cong_viec/tham_dinh_cong_viec_hoan_thanh_dung_han.php",
            {
                chuoi_ma_cong_viec: chuoi_ma_cong_viec
            }).done(function(data)
            {
                handle_data_json(data, null, 
                function(obj, other_obj)
                {
                    if(obj[0].MA_CONG_VIEC !== null)
                    {
                        $("#cong_viec_dt").DataTable().ajax.reload();
                        lay_so_luong_cong_viec_cua_toi();
                        lay_so_luong_cong_viec_lien_quan();
                        lay_so_luong_cong_viec_can_tham_dinh();
                        lay_so_luong_cong_viec_hoan_thanh_tre();
                        lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                        swal(obj[0].THONG_BAO, "", "success");
                    }
                    else
                    {
                        swal(obj[0].THONG_BAO, "", "error");
                    }
                }
                , "Có lỗi trong quá trình xử lý!");                
           });

        } 
    });
}

function danh_gia_chat_luong_nhieu_cong_viec()
{
    var chuoi_ma_cong_viec = lay_chuoi_ma_cong_viec_duoc_chon();
    if(chuoi_ma_cong_viec === ",")
    {
        showNotification("bg-red", "Vui lòng chọn những công việc cần đánh giá chất lượng!", "bottom", "right", "", "");
        return;
    }

    swal({
        title: "Đánh giá chất lượng những công việc đã chọn",
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Đánh giá công việc đã chọn!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: "100",
        inputPlaceholder: "Nhập điểm chất lượng"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) < 0 || parseInt(inputValue) > 120) 
        {
            swal.showInputError("Vui lòng nhập điểm chất lượng là số nguyên!<br>0 <= Điểm chất lượng <= 120!"); 
            return false;
        }
        $.post("php/cong_viec/danh_gia_chat_luong_nhieu_cong_viec.php",
        {
            chuoi_ma_cong_viec: chuoi_ma_cong_viec,
            diem_chat_luong: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
} 

function danh_gia_thai_do_nhieu_cong_viec()
{
    var chuoi_ma_cong_viec = lay_chuoi_ma_cong_viec_duoc_chon();
    if(chuoi_ma_cong_viec === ",")
    {
        showNotification("bg-red", "Vui lòng chọn những công việc cần đánh giá thái độ!", "bottom", "right", "", "");
        return;
    }

    swal({
        title: "Đánh giá thái độ những công việc đã chọn",
        type: "input",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Đánh giá công việc đã chọn!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true,
        inputValue: "100",
        inputPlaceholder: "Nhập điểm thái độ"
    }, function (inputValue) {
        if (inputValue === false) return false;

        if (inputValue === "" || !isNormalInteger(inputValue) || parseInt(inputValue) < 0 || parseInt(inputValue) > 120) 
        {
            swal.showInputError("Vui lòng nhập điểm thái độ là số nguyên!<br>0 <= Điểm chất lượng <= 120!"); 
            return false;
        }
        $.post("php/cong_viec/danh_gia_thai_do_nhieu_cong_viec.php",
        {
            chuoi_ma_cong_viec: chuoi_ma_cong_viec,
            diem_thai_do: parseInt(inputValue)
        }).done(function(data)
        {
            handle_data_json(data, null, 
            function(obj, other_obj)
            {
                if(obj[0].MA_CONG_VIEC !== null)
                {
                    $("#cong_viec_dt").DataTable().ajax.reload();
                    lay_so_luong_cong_viec_cua_toi();
                    lay_so_luong_cong_viec_lien_quan();
                    lay_so_luong_cong_viec_can_tham_dinh();
                    lay_so_luong_cong_viec_hoan_thanh_tre();
                    lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                    swal(obj[0].THONG_BAO, "", "success");
                }
                else
                {
                    swal(obj[0].THONG_BAO, "", "error");
                }
            }
            , "Có lỗi trong quá trình xử lý!");                
       });
    });
} 

function tham_dinh_tong_thoi_gian_nhieu_cong_viec()
{
    var chuoi_ma_cong_viec = lay_chuoi_ma_cong_viec_duoc_chon();
    if(chuoi_ma_cong_viec === ",")
    {
        showNotification("bg-red", "Vui lòng chọn những công việc cần thẩm định tổng thời gian!", "bottom", "right", "", "");
        return;
    }

    swal({
        title: "Thẩm định những công việc đã chọn\n\nĐÚNG TỔNG THỜI GIAN",
        showCancelButton: true,
        confirmButtonColor: "#2b982b",
        confirmButtonText: "Thẩm định hoàn thành đúng tổng thời gian!",
        cancelButtonText: "Không!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
            $.post("php/cong_viec/tham_dinh_cong_viec_hoan_thanh_dung_tong_thoi_gian.php",
            {
                chuoi_ma_cong_viec: chuoi_ma_cong_viec
            }).done(function(data)
            {
                handle_data_json(data, null, 
                function(obj, other_obj)
                {
                    if(obj[0].MA_CONG_VIEC !== null)
                    {
                        $("#cong_viec_dt").DataTable().ajax.reload();
                        lay_so_luong_cong_viec_cua_toi();
                        lay_so_luong_cong_viec_lien_quan();
                        lay_so_luong_cong_viec_can_tham_dinh();
                        lay_so_luong_cong_viec_hoan_thanh_tre();
                        lay_so_luong_cong_viec_toi_hoan_thanh_tre();  lay_so_luong_cong_viec_can_danh_gia_chat_luong();   lay_so_luong_cong_viec_can_danh_gia_thai_do(); 
                        swal(obj[0].THONG_BAO, "", "success");
                    }
                    else
                    {
                        swal(obj[0].THONG_BAO, "", "error");
                    }
                }
                , "Có lỗi trong quá trình xử lý!");                
           });

        } 
    });
}
