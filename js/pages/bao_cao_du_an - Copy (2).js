var dang_load_danh_sach_cong_viec_du_an = false; //tải lại danh sách công việc dự án
 var table; // sử dụng một biến toàn cục để gửi và trả lại kết xuất dữ liệu trong table hiển thị

$(function()
{   
    init_cong_viec_du_an();
}); 

function init_cong_viec_du_an()
{
    $('head').append('<link rel="stylesheet" href="css/pages/tai_khoan.css" type="text/css" />');
    $('head').append('<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>');
   
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>');
    $('head').append('<script type="text/javacript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>');
          
    $.AdminBSB.dropdownMenu.activate();
    $.AdminBSB.input.activate();
    $.AdminBSB.select.activate();    
    
    $('#du_an_cong_viec_dt').DataTable( {
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
        select: true,
       
        buttons: [
            
            {
                extend: 'collection',
                text: 'Export',
                className: 'exportBtn',
                buttons: [
                    'copy',
                    'excel',
                    'pdf',
                    'print'
                ]
            },
            {extend: 'pageLength'},
            {
                extend: 'colvis',
                collectionLayout: 'fixed two-column'
            }
           
        ],
        //processing: true,
        //serverSide: true,
        ajax: {   
            url: "php/bao_cao_du_an/lay_danh_sach_du_an_cong_viec.php?ma_cong_viec_du_an=TAT_CA",
           // url: "php/bao_cao_du_an/lay_danh_sach_du_an_cong_viec.php",
            type: "get",
            error: function()
            {
                $("#du_an_cong_viec_dt").css('display', 'none');
            }
        },
        scrollX:        true,
        scrollCollapse: true,
        // autoWidth: false,
         columnDefs: [ 
             
             {
                "targets": 'nosort',
                "orderable": false
             },
            // {targets: 1, width: 40}, // TEN_DU_AN
            // {targets: 2, width: 500},  // TEN_CONG_VIEC_DU_AN 
            // {targets: 3, width: 500},  // NOI_DUNG_CONG_VIEC_DU_AN 
            // {targets: 4, width: 70},  // TEN_LOAI
            // {targets: 5, width: 150},  // TEN_DON_VI_YEU_CAU           
            // {targets: 6, width: 70},  // TEN_TRANG_THAI_CONG_VIEC
            // {targets: 7, width: 60},  // THOI_GIAN_BAT_DAU_CONG_VIEC
            // {targets: 8, width: 60},  // THOI_GIAN_KET_THUC_CONG_VIEC
            // {targets: 9, width: 100},  // TEN_TAI_KHOAN
            // {targets: 10, width: 100},  // TEN_NHOM_TAI_KHOAN
            
         ],

        fixedColumns: true,
        columns: [    
            {title: "Mã dự án",  data: "MA_DU_AN", name: "MA_DU_AN", visible: false},
            {title: "Tên dự án", data: "TEN_DU_AN", name: "TEN_DU_AN", class: "TEN_DU_AN"},
            {title: "Mã công việc dự án ",  data: "MA_CONG_VIEC_DU_AN", name: "MA_CONG_VIEC_DU_AN", visible: false},
            {title: "Tên công việc", data: "TEN_CONG_VIEC_DU_AN", name: "TEN_CONG_VIEC_DU_AN", class: "TEN_CONG_VIEC_DU_AN"},
            {title: "Nội dung công việc", data: "NOI_DUNG_CONG_VIEC_DU_AN", name: "NOI_DUNG_CONG_VIEC_DU_AN", class: "NOI_DUNG_CONG_VIEC_DU_AN"},           
            {title: "Mã loại công việc",  data: "ID_LOAI", name: "ID_LOAI", visible: false},
            {title: "Loại công việc", data: "TEN_LOAI", name: "TEN_LOAI"},
            {title: "Mã ĐV yêu cầu", data: "MA_DON_VI_YEU_CAU", name: "MA_DON_VI_YEU_CAU", visible: false },
            {title: "Đơn vị yêu cầu", data: "TEN_DON_VI_YEU_CAU", name: "TEN_DON_VI_YEU_CAU", class: "TEN_DON_VI_YEU_CAU"},
            
            {title: "Mã trạng thái", data: "MA_TRANG_THAI_CONG_VIEC", name: "MA_TRANG_THAI_CONG_VIEC", visible: false },
            {title: "Trạng thái", data: "TEN_TRANG_THAI_CONG_VIEC", name: "TEN_TRANG_THAI_CONG_VIEC"},
            // {title: "Tháng", data: "THANG_CUA_CONG_VIEC", name: "THANG_CUA_CONG_VIEC"},
            {title: "TG bắt đầu", data: "THOI_GIAN_BAT_DAU_CONG_VIEC", name: "THOI_GIAN_BAT_DAU_CONG_VIEC"},
            {title: "TG kết thúc", data: "THOI_GIAN_KET_THUC_CONG_VIEC", name: "THOI_GIAN_KET_THUC_CONG_VIEC" },
            {title: "Mã TK tạo", data: "MA_TAI_KHOAN", name: "MA_TAI_KHOAN", visible: false },
            {title: "Người tạo", data: "TEN_HIEN_THI", name: "TEN_HIEN_THI"},
            //{title: "Mã CV cha", data: "MA_CONG_VIEC_CHA", name: "MA_CONG_VIEC_CHA", visible: false },
            //{title: "Mã độ ưu tiên", data: "MA_MUC_DO_UU_TIEN", name: "MA_MUC_DO_UU_TIEN", visible: false },
            {title: "Tên nhóm tài khoản", data: "TEN_NHOM_TAI_KHOAN", name: "TEN_NHOM_TAI_KHOAN", class: "TEN_NHOM_TAI_KHOAN" }
  ],
        scrollY: '300px',
        // rowCallback: function( row, data, index ) {
        // },
        // drawCallback : function() { 
        // }
    } );
    
    $('#du_an_cong_viec_dt').on( 'processing.dt', function ( e, settings, processing ) {
        dang_load_danh_sach_cong_viec_du_an = processing;
    }).dataTable();
    
    // $('#du_an_cong_viec_dt tbody').on( 'click', 'tr', function () {
    //     var table = $('#du_an_cong_viec_dt').DataTable();
    //     if ( $(this).hasClass('selected') ) {
    //         $(this).removeClass('selected');
    //     }
    //     else {
    //         table.$('tr.selected').removeClass('selected');
    //         $(this).addClass('selected');
    //     }
    // } );
}
    