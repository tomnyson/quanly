var ma_cong_viec_cha = "null";
var ma_cong_viec_dang_sua = "null";
var dang_them_moi_cong_viec = true;
var ma_tai_khoan_xu_ly_dang_sua = "null";
var ma_cong_viec_vua_thao_tac = "null";
var dang_load_danh_sach_cong_viec = false;
var table;

$(function()
{   
    init_cong_viec_mau();
    tim_nang_cao();
}); 

function show_them_cong_viec_dialog()
{   ma_cong_viec_cha = "null";
    dang_them_moi_cong_viec = true;
    ma_tai_khoan_xu_ly_dang_sua = "null";
    $("#ma_cong_viec_cha").val("null");
    $("#them_cong_viec_dialog_title").text("Thêm mới công việc");
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

function cai_dat_select_cho_them_cong_viec_dialog(){

    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec_mau/lay_danh_sach_du_an.php", "#du_an", "MA_DU_AN", "TEN_DU_AN", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec_mau/lay_ds_loai_cong_viec.php", "#loai_cv", "ID_LOAI", "TEN_LOAI", "Không lấy được danh sách loại công việc. Vui lòng liên hệ Admin!");
    // cai_dat_select_cho_them_cong_viec_dialog1("php/dm_du_an/lay_danh_sach_du_an_cong_viec.php", "#du_an_tim_nang_cao", "MA_DU_AN", "TEN_DU_AN", "Không lấy được danh sách dự án. Vui lòng liên hệ Admin!");
    // cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec_mau/doGet.php?txtAction=getLoaiCongViec" , "#loai_cv", "MA_LOAI_CV", "TEN_LOAI_CV", null);
}

function cai_dat_select_cho_them_cong_viec_dialog1(url, select_id, value, text, empty_message){ 
    $.get(url).done(
        function(data){
            var select_obj = {id: select_id, value: value, text: text};
            handle_data_json(data, select_obj, cai_dat_select_cho_them_cong_viec_dialog2, empty_message);
        }
    );   
}

function cai_dat_select_cho_them_cong_viec_dialog2(obj, select_obj)
{
    $(select_obj.id).empty();
    var tim_nang_cao_select_id = ["#trang_thai", "#du_an_tim_nang_cao", "#don_vi_yeu_cau_tim_nang_cao", "#do_uu_tien_tim_nang_cao", "#nhom_tai_khoan_tim_nang_cao", "#trang_thai_tim_nang_cao", "#tai_khoan_tao_tim_nang_cao", "#tai_khoan_xu_ly_tim_nang_cao", "#tai_khoan_tham_dinh_tim_nang_cao"];

    if (tim_nang_cao_select_id.indexOf(select_obj.id) !== -1) {
        $(select_obj.id).append($('<option>', {
            value: 'TAT_CA',
            text: 'TẤT CẢ'
        }));
    }

    $.each(obj, function (i, item) {
        $(select_obj.id).append($('<option>', { 
            value: item[select_obj.value],
            text : item[select_obj.text] 
        }));
        if (tim_nang_cao_select_id.indexOf(select_obj.id) !== -1) {
            $(select_obj.id).val('TAT_CA').trigger('change');
        }
        else {
            $(select_obj.id).val(null).trigger('change');
        }

});
}

function init_cong_viec_mau()
{
    $('head').append('<link rel="stylesheet" href="css/pages/cong_viec.css" type="text/css" />');
     
    $.AdminBSB.dropdownMenu.activate();
    $.AdminBSB.input.activate();
    $.AdminBSB.select.activate();    
    
    $('#cong_viec_mau_dt').DataTable( {
        language: {url: "plugins/jquery-datatable/language/Vietnamese.json"},
        //responsive: true,
        processing: true,
        dom: 'Bfrtip',
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
                extend: 'collection',
                text: 'Export',
                className: 'exportBtn',
                buttons: [
                    'copy',
                    'excel',
                    'csv',
                    'pdf',
                    'print'
                    ]
            },
            {
                extend: 'pageLength'  
            },
            {
                extend: 'colvis',
                collectionLayout: 'fixed two-column'
            },
            {
                text: 'Tìm kiếm nâng cao',
                action: function (e, dt, node, config) {
                    show_tim_kiem_nang_cao_dialog();
                }
            },
        ],
        
        ajax: {   
            url: "php/cong_viec_mau/lay_danh_sach_cong_viec_mau.php",
           // url: "php/cong_viec_mau/lay_danh_sach_cong_viec_mau.php?du_an=TAT_CA&loai_cv=TAT_CA",
            type: "get",
            error: function()
            {
                $("#cong_viec_mau_dt").css('display', 'none');
            }
        },
        scrollX:        true,
        scrollCollapse: true,
        columnDefs: [ 
            {targets: 1, width: 300}, // TEN_DU_AN
            {targets: 2, width: 200}, // LOAI_CONG_VIEC
            {targets: 3, width: 500},  // TEN_CONG_VIEC
            {targets: 4, width: 200},  // NOI_DUNG_CONG_VIEC

        ],
        fixedColumns: true,
        columns: [    
            {title: "Mã dự án",  data: "MA_DU_AN", name: "MA_DU_AN", visible: false },
            {title: "Tên dự án",  data: "TEN_DU_AN", name: "TEN_DU_AN"},
            {title: "Mã loại công việc",  data: "ID_LOAI", name: "ID_LOAI", visible: false },
            {title: "Loại công việc",  data: "TEN_LOAI", name: "TEN_LOAI"},
            {title: "Mã công việc mẫu",  data: "MA_CONG_VIEC_MAU", name: "MA_CONG_VIEC_MAU", visible: false },
            {title: "Tên công việc",  data: "TEN_CONG_VIEC", name: "TEN_CONG_VIEC"},
            {title: "Nội dung công việc",  data: "NOI_DUNG_CONG_VIEC", name: "NOI_DUNG_CONG_VIEC"},
        ],
        scrollY: '300px',
        rowCallback: function( row, data, index ) {
            // var table = $("#cong_viec_mau_dt").DataTable();
        },
        
        drawCallback : function() { 
            // var table = $("#cong_viec_mau_dt").DataTable();
        },

    } );

    $('#cong_viec_mau_dt tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
    
    $('#cong_viec_mau_dt').on( 'processing.dt', function ( e, settings, processing ) {
        dang_load_danh_sach_cong_viec = processing;
    }).dataTable();
    
    // apply_select2("#du_an", "#them_cong_viec_mau_modal_body", "Dự án công việc");
    // apply_select2("#loai_cv", "#them_cong_viec_mau_modal_body", "Loại công việc");
    apply_select2("#du_an", "#congviec_header", "Dự án công việc");
    apply_select2("#loai_cv", "#congviec_header", "Loại công việc");
    
    // apply_select2("#du_an_tim_nang_cao", "#tim_cong_viec_nang_cao_modal_body", "Dự án công việc");
   
    cai_dat_select_cho_them_cong_viec_dialog();
    
  

    $("#du_an").change(function(){
        var du_an = $("#du_an").val();        
        
        if(du_an === null) return;        
        cai_dat_select_cho_them_cong_viec_dialog1("php/cong_viec_mau/doGet.php?txtAction=lay_danh_sach_cong_viec_mau&du_an=" + du_an , "#loai_cv", "ID_LOAI", "TEN_LOAI", "Không lấy được danh sách loại dự án. Vui lòng liên hệ Admin!");                
        
    });
    
   
    
    $("#luu_cong_viec_btn").click(function(){

       var ten_cong_viec = $("#ten_cong_viec").val();
       var noi_dung_cong_viec = $("#noi_dung_cong_viec").val();
       var loai_cv = $("#loai_cv").val();  
       var du_an = $("#du_an").val();
       

       if(ten_cong_viec === null || noi_dung_cong_viec === null || loai_cv === null || du_an === null)
       {
           showNotification("bg-red", "Vui lòng nhập đầy đủ thông tin!", "bottom", "right", "", "");
           return;
       }
       
       if(ten_cong_viec.trim() === "" || noi_dung_cong_viec.trim() === "" || loai_cv.trim() === ""|| du_an.trim() === "")
       {
           showNotification("bg-red", "Vui lòng nhập đầy đủ thông tin!", "bottom", "right", "", "");
           return;
       }
      
       
       if(dang_them_moi_cong_viec){

            $.post("php/cong_viec_mau/them_cong_viec_mau.php",
             {
                 ten_cong_viec: ten_cong_viec,
                 noi_dung_cong_viec: noi_dung_cong_viec,
                 du_an: du_an,
                 loai_cv: loai_cv
                // tai_khoan_xu_ly: tai_khoan_xu_ly
                // ma_cong_viec_cha: ma_cong_viec_cha,
             }).done(function(data)
             {
                 handle_data_json(data, null, 
                 function(obj, other_obj)
                 {
                     if(obj[0].MA_CONG_VIEC_MAU !== null)
                     {
                         $("#cong_viec_mau_dt").DataTable().ajax.reload();
                        //  lay_so_luong_cong_viec_cua_toi();
                        //  lay_so_luong_cong_viec_lien_quan();
                         $("#ten_cong_viec").val("");
                         $("#noi_dung_cong_viec").val("");
                         $("#ten_cong_viec").focusout();
                         $("#noi_dung_cong_viec").focusout();
                         $("#du_an").val("").change();
                        
                         ma_cong_viec_vua_thao_tac = obj[0].MA_CONG_VIEC_MAU;
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
        // else  // sua cong viec
        // {
            

        //     $.post("php/cong_viec_mau/sua_cong_viec.php",
        //      {
        //          ma_cong_viec: ma_cong_viec_dang_sua,
        //          ten_cong_viec: ten_cong_viec,
        //          noi_dung_cong_viec: noi_dung_cong_viec,
        //          du_an: du_an,
        //          //tai_khoan_xu_ly: tai_khoan_xu_ly,
        //          loai_cv: loai_cv

        //      }).done(function(data)
        //      {
        //          handle_data_json(data, null, 
        //          function(obj, other_obj)
        //          {
        //              if(obj[0].MA_CONG_VIEC_MAU !== null)
        //              {
        //                  $("#cong_viec_mau_dt").DataTable().ajax.reload();
        //                  lay_so_luong_cong_viec_cua_toi();
        //                  lay_so_luong_cong_viec_lien_quan();
                         
        //                  ma_cong_viec_vua_thao_tac = obj[0].MA_CONG_VIEC_MAU;
        //                  showNotification("alert-success", obj[0].THONG_BAO, "bottom", "right", "", "");
        //              }
        //              else
        //              {
        //                  showNotification("bg-red", obj[0].THONG_BAO, "bottom", "right", "", "");
        //              }
        //          }
        //          , "Có lỗi trong quá trình xử lý!");                
        //     });
        // }
    }
    );
}


// function get_all_table_column_name()
// {
//     if(dang_load_danh_sach_cong_viec)
//     {
//         showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
//         return;
//     }
//     var table = $("#cong_viec_mau_dt").DataTable();
//     var columns = table.settings().init().columns;
//     table.columns().every( function (index) {   
//         console.log(columns[index].name);
//         console.log(columns[index].title);

//         $("#loc_danh_sach_cong_viec_dialog").modal("show");
//     });
// }

// function tai_lai_danh_sach_cong_viec()
// {
//     if(dang_load_danh_sach_cong_viec)
//     {
//         showNotification("bg-red", "Đang xử lý danh sách công việc!", "bottom", "right", "", "");
//         return;
//     }
//     var table = $("#cong_viec_mau_dt").DataTable();
//     clear_search_all("#cong_viec_mau_dt");
//     $("#cong_viec_mau_dt").DataTable().ajax.url('php/dm_du_an/lay_danh_sach_cong_viec.php?trang_thai_cong_viec='+$("#trang_thai").val()+'&ma_nhom_tai_khoan=TAT_CA&ngay_them_1=01/01/1000&ngay_them_2=31/12/3000&muc_do_uu_tien=TAT_CA&ma_du_an=TAT_CA&ma_tai_khoan_so_huu=TAT_CA&ma_tai_khoan_xu_ly=TAT_CA&ma_tai_khoan_tham_dinh=TAT_CA&ma_cong_viec_cha=TAT_CA&ma_don_vi_yeu_cau=TAT_CA&cong_viec_dang_xu_ly=0&ma_cong_viec=TAT_CA').load();
//     lay_so_luong_cong_viec_cua_toi();
//     lay_so_luong_cong_viec_lien_quan();
// }




