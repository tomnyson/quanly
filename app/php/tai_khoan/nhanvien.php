<?php
class  NhanVien{
      /* các biến thành viên */
      var $ma_nhan_vien;
      var $ma_tai_khoan;
      var $ten_nhan_vien;
      var $cap_nhan_vien;
      var $ten_truy_cap;
      var $ma_phong_to;
      var $ten_phong_to;
      var $ma_don_vi;
      var $ten_don_vi;
      
      /* các hàm thành viên */
      function setMa_nhan_vien($ma_nhan_vien){
         $this->ma_nhan_vien = $ma_nhan_vien;
      }
      
      public function getMa_nhan_vien(){
         return $this->ma_nhan_vien;
      }

      function setMa_tai_khoan($ma_tai_khoan){
         $this->ma_tai_khoan = $ma_tai_khoan;
      }
      
      public function getMa_tai_khoan(){
         return $this->ma_tai_khoan;
      }

      function setTen_nhan_vien($ten_nhan_vien){
         $this->ten_nhan_vien = $ten_nhan_vien;
      }
      
      function getTen_nhan_vien(){
         return $this->ten_nhan_vien;
      }

      function setCap_nhan_vien($cap_nhan_vien){
         $this->ten_nhan_vien = $cap_nhan_vien;
      }
      
      function getCap_nhan_vien(){
         return $this->cap_nhan_vien;
      }

      function setTen_truy_cap($ten_truy_cap){
         $this->ten_truy_cap = $ten_truy_cap;
      }
      
      function getTen_truy_cap(){
         return $this->ten_truy_cap;
      }

      function setMa_phong_to($ma_phong_to){
         $this->ma_phong_to = $ma_phong_to;
      }
      
      function getMa_phong_to(){
         return $this->ma_phong_to;
      }

      function setTen_phong_to($ten_phong_to){
         $this->ten_phong_to = $ten_phong_to;
      }
      
      function getTen_phong_to(){
         return $this->ten_phong_to;
      }

      function setMa_don_vi($ma_don_vi){
         $this->ma_don_vi = $ma_don_vi;
      }
      
      function getMa_don_vi(){
         return $this->ma_don_vi;
      }

      function setTen_don_vi($ten_don_vi){
         $this->ten_don_vi = $ten_don_vi;
      }
      
      function getTen_don_vi(){
         return $this->ten_don_vi;
      }


      function __construct( $ma_nhan_vien,$ten_nhan_vien,$ma_tai_khoan, $cap_nhan_vien,$ten_truy_cap,
                            $ma_phong_to,$ten_phong_to,$ma_don_vi,$ten_don_vi ){
         $this->ma_nhan_vien = $ma_nhan_vien;
         $this->ten_nhan_vien = $ten_nhan_vien;
         $this->ma_tai_khoan = $ma_tai_khoan;
         $this->cap_nhan_vien = $cap_nhan_vien;
         $this->ten_truy_cap = $ten_truy_cap;
         $this->ma_phong_to = $ma_phong_to;
         $this->ten_phong_to = $ten_phong_to;
         $this->ma_don_vi = $ma_don_vi;
         $this->ten_don_vi = $ten_don_vi;
         
      }
   }
?>