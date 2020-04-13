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

    $("#them_ky_bsc").click(function()
    {       
       var thang = $("#thang").val();
       var nam = $("#nam").val();

       /*if(thoi_gian_bat_dau.includes("_"))
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
       }*/
       $.post("php/cham_bsc/doSave.php",
         {
             txtAction: "tao_ky_cham_bsc",
             thang: thang,
             nam: nam
         }).done(function(data)
         {
             handle_data_json(data, null, 
             function(obj, other_obj)
             {
                 if(obj[0].KET_QUA == 1)
                 {
                     /*$("#cong_viec_dt").DataTable().ajax.reload();
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
                     ma_cong_viec_vua_thao_tac = obj[0].MA_CONG_VIEC;*/
                     showNotification("alert-success", obj[0].THONG_BAO, "bottom", "right", "", "");                         
                 }
                 else
                 {
                     showNotification("bg-red", obj[0].THONG_BAO, "bottom", "right", "", "");
                 }
             }
             , "Có lỗi trong quá trình xử lý!");                
        });
    });

    $("#xem_ky_bsc").click(function()
    {       
       var table = $("#dsnhanvien").DataTable();
       clear_search_all("#dsnhanvien");
       $("#dsnhanvien").DataTable().ajax.url('php/cham_bsc/doGet.php?txtAction=lay_diem_bsc_thang&thang='+$("#thang").val()+'&nam='+$("#nam").val()).load();
       
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

    //var thoi_gian_bat_dau = $("#thoi_gian_bat_dau").val();
    //cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec/doGet.php?txtAction=getLoaiCongViec&thoi_gian_bat_dau=" + thoi_gian_bat_dau , "#loai_cv", "MA_LOAI_CV", "TEN_LOAI_CV", null);
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
    
    $('#dsnhanvien').DataTable( {
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
                        showNotification("bg-red", "Đang xử lý kỳ chấm bsc!", "bottom", "right", "", "");
                        return;
                    }
                    if(ma_cong_viec_vua_thao_tac !== "null")
                    {

                        $("#cong_viec_dt").DataTable().ajax.url('php/cham_bsc/doGet.php?txtAction=lay_diem_bsc_thang&thang='+$("#thang").val()+'&nam='+$("#nam").val()).load();
                        //search_cell_by_column_name("#cong_viec_dt", "MA_CONG_VIEC", ma_cong_viec_vua_thao_tac);
                    }
                    else
                    {
                        showNotification("bg-red", "Chưa có kỳ chấm bsc", "bottom", "right", "", "");
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
                    var table = $("#dsnhanvien").DataTable();
                    clear_search_all("#dsnhanvien");
                    $("#dsnhanvien").DataTable().ajax.url('php/cham_bsc/doGet.php?txtAction=lay_diem_bsc_thang&thang='+$("#thang").val()+'&nam='+$("#nam").val()).load();
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
            url: "php/cham_bsc/doGet.php?txtAction=lay_diem_bsc_thang&thang="+$("#thang").val()+"&nam="+$("#nam").val(),
            type: "get",
            error: function()
            {
                $("#dsnhanvien").css('display', 'none');
            }
        },
        scrollX:        true,
        scrollCollapse: true,
        columnDefs: [ 
            {targets: 0, width: 20}, // Tháng
            {targets: 1, width: 20}, // Năm
            {targets: 2, width: 90}, // Nhân viên
            {targets: 3, width: 25},//TONGCV
            {targets: 4, width: 25},//TONGCV_DK
            {targets: 5, width: 25},//TONGCV_HOTRO
            {targets: 6, width: 50},//CV_DK_DUNGHAN
            {targets: 7, width: 50},//CV_HT_DUNGHAN
            {targets: 8, width: 50},//CV_DK_VUOTTIENDO
            {targets: 9, width: 50},//CV_HT_VUOTTIENDO
            {targets: 10, width: 50},//CV_DK_TREHAN
            {targets: 11, width: 50},//CV_HT_TREHAN
            {targets: 12, width: 30},//DIEM_BSC_CD
            {targets: 13, width: 30},//DIEM_TRU_CV
            {targets: 14, width: 30},//DIEM_TRU_KL
            {targets: 15, width: 30},//DIEM_CONG_CN
            {targets: 16, width: 30}//BSC_THANG
        ],
        fixedColumns: true,
        columns: [    
            //{title: "Mã",  data: "MA_CONG_VIEC", name: "MA_CONG_VIEC", visible: false},
            //{title: "Tên công việc", data: "TEN_CONG_VIEC", name: "TEN_CONG_VIEC", class: "TEN_CONG_VIEC"},
            {title: "Tháng", data: "THANG", name: "THANG"},
            {title: "Năm", data: "NAM", name: "NAM"},
            {title: "Nhân viên", data: "TEN_DOI_TUONG", name: "TEN_DOI_TUONG"},
            {title: "Tổng CV", data: "TONGCV", name: "TONGCV"},
            {title: "CV ĐK", data: "TONGCV_DK", name: "TONGCV_DK"},
            {title: "CV HT", data: "TONGCV_HOTRO", name: "TONGCV_HOTRO"},
            {title: "CV ĐK đúng hạn", data: "CV_DK_DUNGHAN", name: "CV_DK_DUNGHAN"},
            {title: "CV HT đúng hạn", data: "CV_HT_DUNGHAN", name: "CV_HT_DUNGHAN"},
            {title: "CV ĐK vượt tiến độ", data: "CV_DK_VUOTTIENDO", name: "CV_DK_VUOTTIENDO"},
            {title: "CV HT vượt tiến độ", data: "CV_HT_VUOTTIENDO", name: "CV_HT_VUOTTIENDO"},
            {title: "CV ĐK trể hạn", data: "CV_DK_TREHAN", name: "CV_DK_TREHAN"},
            {title: "CV HT trể hạn", data: "CV_HT_TREHAN", name: "CV_HT_TREHAN"},
            {title: "BSC CĐ", data: "DIEM_BSC_CD", name: "DIEM_BSC_CD"},
            {title: "Trừ CV", data: "DIEM_TRU_CV", name: "DIEM_TRU_CV"},
            {title: "Trừ KL", data: "DIEM_TRU_KL", name: "DIEM_TRU_KL"},
            {title: "Cộng CN", data: "DIEM_CONG_CN", name: "DIEM_CONG_CN"},
            {title: "BSC Tháng", data: "BSC_THANG", name: "BSC_THANG"},
            {title: "MA_DOI_TUONG",  data: "MA_DOI_TUONG", name: "MA_DOI_TUONG", visible: false},
            {title: "LOAI_DIEM",  data: "LOAI_DIEM", name: "LOAI_DIEM", visible: false}
            
        ],
        scrollY: '300px',
        rowCallback: function( row, data, index ) {
            var table = $("#dsnhanvien").DataTable();
            
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

            if (data.CV_DK_TREHAN>0)
            {
                //$('td:eq(' + fixed_td_index(table, "CV_DK_TREHAN")  +  ')', row).html('<span class="label bg-red">' + data.CV_DK_TREHAN +  ' </span>');
                $('td:eq(' + fixed_td_index(table, "CV_DK_TREHAN") +  ')', row).html('<span class="label bg-red pointer">' + data.CV_DK_TREHAN +  ' </span>').find("span").click(function()
                {
                    //hoan_thanh_cong_viec(data.MA_CONG_VIEC, data.TEN_CONG_VIEC);
                    alert("yes tôi đây");
                });  
            }            

            if (data.CV_HT_TREHAN>0)
            {
                $('td:eq(' + fixed_td_index(table, "CV_HT_TREHAN")  +  ')', row).html('<span class="label bg-red">' + data.CV_HT_TREHAN +  ' </span>');
            }

            if (data.CV_HT_VUOTTIENDO>0)
            {
                $('td:eq(' + fixed_td_index(table, "CV_HT_VUOTTIENDO")  +  ')', row).html('<span class="label bg-blue">' + data.CV_HT_VUOTTIENDO +  ' </span>');
            }
            
            if (data.CV_DK_VUOTTIENDO>0)
            {
                $('td:eq(' + fixed_td_index(table, "CV_DK_VUOTTIENDO")  +  ')', row).html('<span class="label bg-blue">' + data.CV_DK_VUOTTIENDO +  ' </span>');

            }


        }
    } );

    $('#dsnhanvien tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
    
    $('#dsnhanvien').on( 'processing.dt', function ( e, settings, processing ) {
        dang_load_danh_sach_cong_viec = processing;
    }).dataTable();
    
    /*
    $('#dsnhanvien tbody').on( 'click', 'tr', function () {
        var table = $('#dsnhanvien').DataTable();
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
    */

    apply_select2("#thang", "#cham_bsc", "Tháng");
    apply_select2("#nam", "#cham_bsc", "Năm");
    
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
                         $("#dsnhanvien").DataTable().ajax.reload();
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
                         $("#dsnhanvien").DataTable().ajax.reload();
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

function get_all_table_column_name()
{
    if(dang_load_danh_sach_cong_viec)
    {
        showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
        return;
    }
    var table = $("#dsnhanvien").DataTable();
    var columns = table.settings().init().columns;
    table.columns().every( function (index) {   
        console.log(columns[index].name);
        console.log(columns[index].title);

        $("#loc_danh_sach_cong_viec_dialog").modal("show");
    });
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
        clear_search_all("#dsnhanvien");
        $("#dsnhanvien").DataTable().ajax.url('php/cong_viec/lay_danh_sach_cong_viec.php?trang_thai_cong_viec=' + trang_thai + '&ma_nhom_tai_khoan=' + nhom_tai_khoan + '&ngay_them_1=' + ngay_them_1 + '&ngay_them_2=' + ngay_them_2 + '&muc_do_uu_tien=' + do_uu_tien + '&ma_du_an=' + du_an + '&ma_tai_khoan_so_huu=' + tai_khoan_tao + '&ma_tai_khoan_xu_ly=' + tai_khoan_xu_ly + '&ma_tai_khoan_tham_dinh=' + tai_khoan_tham_dinh + '&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=' + don_vi_yeu_cau + '&cong_viec_dang_xu_ly=0&ma_cong_viec=TAT_CA').load();
        $("#tim_cong_viec_nang_cao_dialog").modal("hide");
    });
}




