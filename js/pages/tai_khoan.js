var dang_load_danh_sach_tai_khoan = false;

$(function()
{   
    init_tai_khoan();
}); 

function init_tai_khoan()
{
    $('head').append('<link rel="stylesheet" href="css/pages/tai_khoan.css" type="text/css" />');
    
    $.AdminBSB.dropdownMenu.activate();
    $.AdminBSB.input.activate();
    $.AdminBSB.select.activate();    
    
    $('#tai_khoan_dt').DataTable( {
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
                text: 'Tải lại',
                action: function ( e, dt, node, config ) {
                    if(dang_load_danh_sach_tai_khoan)
                    {
                        showNotification("bg-red", "Đang xử lý danh sách tài khoản!", "bottom", "right", "", "");
                        return;
                    }
                    var table = $("#tai_khoan_dt").DataTable();
                    clear_search_all("#tai_khoan_dt");
                    $("#tai_khoan_dt").DataTable().ajax.url('php/tai_khoan/lay_danh_sach_tai_khoan.php?ma_tai_khoan=TAT_CA').load();
                }
            }
        ],
        //processing: true,
        //serverSide: true,
        ajax: {   
            url: "php/tai_khoan/lay_danh_sach_tai_khoan.php?ma_tai_khoan=TAT_CA",
            type: "get",
            error: function()
            {
                $("#tai_khoan_dt").css('display', 'none');
            }
        },
        scrollX:        true,
        scrollCollapse: true,
        columnDefs: [ 
            {targets: 1, width: 180}, // TEN_HIEN_THI
            {targets: 2, width: 330},  // TEN_PHONG_TO
            {targets: 3, width: 200},  // TONG_THOI_GIAN_LAM_VIEC
            {targets: 4, width: 230},  // TONG_THOI_GIAN_THUC
            {targets: 5, width: 700}  // NGAY_LAM_VIEC
        ],
        fixedColumns: true,
        columns: [    
            {title: "Mã",  data: "MA_TAI_KHOAN", name: "MA_TAI_KHOAN", visible: false },
            {title: "Tên tài khoản",  data: "TEN_HIEN_THI", name: "TEN_HIEN_THI"},
            {title: "Tên phòng/tổ",  data: "TEN_PHONG_TO", name: "TEN_PHONG_TO"},
            {title: "Tổng TG làm việc (giờ)",  data: "TONG_THOI_GIAN_LAM_VIEC", name: "TONG_THOI_GIAN_LAM_VIEC"},
            {title: "Tổng TG làm việc (thẩm định)",  data: "TONG_THOI_GIAN_THUC", name: "TONG_THOI_GIAN_THUC"},
            {title: "Ngày làm việc trong tháng",  data: "NGAY_LAM_VIEC", name: "NGAY_LAM_VIEC"}
        ],
        scrollY: '300px',
        rowCallback: function( row, data, index ) {
            
        },
        drawCallback : function() { 
        }
    } );
    
    $('#tai_khoan_dt').on( 'processing.dt', function ( e, settings, processing ) {
        dang_load_danh_sach_tai_khoan = processing;
    }).dataTable();
    
    $('#tai_khoan_dt tbody').on( 'click', 'tr', function () {
        var table = $('#tai_khoan_dt').DataTable();
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
}

function tai_lai_danh_sach_tai_khoan() 
{
    if(dang_load_danh_sach_tai_khoan)
    {
        showNotification("bg-red", "Đang xử lý danh sách tài khoản!", "bottom", "right", "", "");
        return;
    }
    var table = $("#tai_khoan_dt").DataTable();
    clear_search_all("#tai_khoan_dt");
    $("#tai_khoan_dt").DataTable().ajax.url('php/tai_khoan/lay_danh_sach_tai_khoan.php?ma_tai_khoan=TAT_CA').load();
}