<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.sanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sản Phẩm kính râm  </title>
    <link href="../style/sanpham.css" rel="stylesheet" />
    <style>
        /* Định dạng bộ lọc */
        .filter {
            font-family: Arial, sans-serif;
            margin: 20px;
            margin-left: 30px;
            display: flex;
        }

        .filter__heading {
            font-size: 16px ;
            color:rgb(112, 112, 112);
        }

        .filter__list {
            list-style-type: none;
            padding: 0;
            display: flex;
            margin-left: 10px ;
        }
        .filter__item{
            margin-left: 20px ;
        }

        .filter__item a {
            text-decoration: none;
            color:rgb(112, 112, 112);
            font-size: 1em;
        }

        .filter__item a:hover {
            text-decoration: underline;
        }
      
        .all-products_heading{
            margin-left: 30px;
            font-family: Arial, sans-serif;
        }
        all-products_brand-name h2 {
            color:rgb(112, 112, 112);
        }
        #error{
            color :#56d5d2 ;
            font-family: Arial, sans-serif;
            font-size: 16px ;
        }
        #bang1{
    grid-column-start: 3;
    grid-column-end: 12;
    display: flex;
    flex-wrap: wrap;
}
    </style>
</head>
<body>
        <div class="fix">
    <header class="header">
        <div class="title">
            <p>ANNA-LYLI</p>
        </div>
    
        <form runat="server" class="search"  onsubmit="return btnThem()" >
            <div class="box">
                    <input type="text" id="search_text" runat="server" name="search" class="search-text" placeholder="Tìm kiếm"/>
                    <button type="submit"  class="btn" runat="server" id="search_button" onserverclick="SearchButton_Click" >
                            <img class="img-icon" src="/image-kinhmat/logo_search.png"/>
                    </button>
                </div>
        </form>

        <!-- icon  -->
        <div class="giohang">
            <button class="gh" >
                <a href="giohang.aspx" ><img class="img-gh" src="/image-kinhmat/giohang2.png"/></a>
               
            </button>
        </div>
        <div class="taikhoan">
            <button class="account" >
                <a href="dangnhap.aspx"><img class="img-acc" src="/icon/icon_account05.png"/></a>
            </button>  
             <div id="login" class="login" runat="server"></div>
        </div>
    
        <!--  -->
    

    </header>

    <menu  class="container_menu">
        <ul class="sidebar">
            <li class="list_bar" ><a href="trangchu.aspx">Trang Chủ</a>
                <ul class="sub-menu">
                    <li class="list-item">
                        <a href="sanpham.aspx">Kinh Râm</a>
                    </li>
                    <li class="list-item">
                        <a href="sp_gongkinh.aspx">Gọng kính</a>
                    </li>
                    <li class="list-item">
                        <a href="sp_trongkinh.aspx">Tròng kính</a>
                    </li>
                </ul>
            </li>
            <li class="list_bar"><a href="gioithieu.aspx">Giới Thiệu</a>
                <ul class="sub-menu">
                    <li class="list-item">
                        <a href="#">Bảo Hành</a>
                    </li>
                    <li class="list-item">
                        <a href="#">Ưu Đãi</a>
                    </li>
                    <li class="list-item">
                        <a href="#">Tư Vấn</a>
                    </li>
                </ul>
            </li>
            <li class="list_bar"><a href="#">Dich vụ </a>
                <ul class="sub-menu">
                    <li class="list-item">
                        <a href="trangChiTietSanPham.aspx">CT Sản Phẩm</a>
                    </li>
                    <li class="list-item">
                        <a href="giohang.aspx">Giỏ Hàng</a>
                    </li>
                    <li class="list-item">
                        <a href="dangnhap.aspx">Đăng Nhập</a>
                    </li>
                </ul>
            </li>
            <li class="list_bar"><a href="#">Quản Lý</a>
                <ul class="sub-menu">
                    <li class="list-item">
                        <a href="quanlyTaiKhoan.aspx">Quản Lý TK </a>
                    </li>
                    <li class="list-item">
                        <a href="quanlySanPham.aspx">Quản Lý SP</a>
                    </li>
                    <li class="list-item">
                        <a href="dangxuat.aspx">Đăng xuất</a>
                    </li>
                </ul>
            </li>
        </ul>
    </menu>

</div>



    <div class="banner">
        <div class="banner_img">
            <img src="../image_trongkinh/banner_sp01.jpeg" />
        </div>
    </div>
    <%-- bộ lọc  --%>
      <div class="filter">
        <h3 class="filter__heading">Bộ lọc | </h3>
        <ul class="filter__list">
            <li class="filter__item"><a href="sanpham.aspx?filter1=01"  runat="server" >&le; 1 triệu</a></li>
            <li class="filter__item"><a href="sanpham.aspx?filter1=02" runat="server" >1 - 3 triệu</a></li>
            <li class="filter__item"><a href="sanpham.aspx?filter1=03" runat="server" >&ge; 3 triệu</a></li>
        </ul>
    </div>

                <div class="all-products_heading">
                    <h2 class="all-products_brand-name" runat="server" id="all_products_brand_name" style="color:rgb(112, 112, 112);"></h2>
                </div>

    <div class="container_body">

        <div id="bang" name="bang" runat="server"> </div>
        <div id="error" name="bang" runat="server"> </div>
        <div id="bang1" name="bang" runat="server"> </div>

         <%--   <div class="content">
                <div class="sach sanpham">
                    <a href=""><img src="/image-kinhmat/kinh01.jpeg"></a>
                    <p>800 USD</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh02.jpeg">
                    <p>700 USD</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh03.jpeg">
                    <p>900 USD</p>
                </div>
          
                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh04.jpeg">
                    <p>1500 USD</p>
                </div>
           
                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh05.jpeg">
                    <p>700 USD</p>
                </div>
           
                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh06.jpeg">
                    <p>500 USD</p>
                </div>
          
                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh07.jpeg">
                    <p>1400 USD</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh08.jpeg">
                    <p>Ngữ văn-STK</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh01.jpeg">
                    <p>800 USD</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh02.jpeg">
                    <p>700 USD</p>
                </div>

                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh03.jpeg">
                    <p>900 USD</p>
                </div>
          
                <div class="sach sanpham">
                    <img src="/image-kinhmat/kinh04.jpeg">
                    <p>1500 USD</p>
                </div>
            </div>   --%> 
    </div>
    <footer class="container_footer">
        <div class="footer_left">
            <h2>ANNA-LYLI HOLDING</h2>
            <br>
            <h4><p>Công ty TNHH Thương mại và Dịch vụ <br> ANNA-LYLIGRUOP Việt Nam</p></h4><br>
            <h4><p>Địa chỉ: Số 116a ngõ 72 Nguyễn Trãi, <br>P. Thượng Đình, Q. Thanh xuân, HN</p></h4><br>
            <h4><p>Mon - Sun: 8:30 - 22:00 <br> Email: contact.lilyeyewear@gmail.com <br> holine: 1900 638 096</p></h4><br>
            <div class="logo_dkbct">
                <img src="/image-kinhmat/dangkybct.png" >
            </div>
            
        </div>
        
        <div class="footer_ctr">
            
            <h3>Hệ Thống ANNA-Lily Hà Nội</h3>
            <br>
           
            <h4><p> ANNA-Lily 1: Số 356 Cầu Giấy, Hà Nội - <br>  Hotline: 0964.868.635</p></h4><br>
            <h4><p> ANNA-Lily 2: Số 356 Cầu Giấy, Hà Nội - <br>  Hotline: 0964.868.635</p></h4><br>
            <h4><p> ANNA-Lily 3: Số 356 Cầu Giấy, Hà Nội - <br>  Hotline: 0964.868.635</p></h4><br>
            <h4><p> ANNA-Lily 5: Số 356 Cầu Giấy, Hà Nội - <br>  Hotline: 0964.868.635</p></h4><br>
            <h4><p> ANNA-Lily 6: Số 356 Cầu Giấy, Hà Nội - <br>  Hotline: 0964.868.635</p></h4><br>
            
        </div>
        
        <div class="footer_right">
            <h3>Tổng đài hỗ trợ miễn phí</h3>
            <br>
            <h5><p> 
                Gọi mua hàng 1800.2097 (7h30 - 22h00) <br><br>
                Gọi khiếu nại 1800.2063 (8h00 - 21h30)<br><br>
                Gọi bảo hành 1800.2064 (8h00 - 21h00) <br><br>
            </p></h5><br>
            <div class="logo_dmca">
                <img src="/image-kinhmat/logo_dmca_footer.png" >
            </div>


        </div>
        <p> </p>
    </footer>
     <script>

         function btnThem() {

             var search_sp = document.getElementById('search_text');
             var all_products_brand_name = document.getElementById('all_products_brand_name');
             var search = search_sp.value;
             if (search == "") {
                 all_products_brand_name.innerHTML = ' Tìm kiểm đang trống. Hãy nhập tên sảng phẩm.';
                 bang1.innerHTML = ''
                 bang.innerHTML = ''
                 return false;
             }
             all_products_brand_name.innerHTML = ''

         }
     </script>
</body>
</html>
