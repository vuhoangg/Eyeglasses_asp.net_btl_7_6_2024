<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangChiTietSanPham.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.trangChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Trang Chi tiết sản phẩm </title>
    <link href="../style/trangChiTietSanPham.css" rel="stylesheet" />
    <style>
        #infor{
            border-radius: 30px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        .container_body{
            margin-top: 40px;
            display:grid ;
            grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr; 
            border-radius: 30px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            margin: 40px 10% 0px; 
}

        .title_hot{
            margin: 30px 15px 20px ;
             grid-column-start: 2;
                grid-column-end: 12;
                color: rgb(125, 124, 124);
        }


        #bang{
    grid-column-start: 2;
    grid-column-end: 13;
    display: flex;
    flex-wrap: wrap;
}


.sach {
    width:20%;
    border: 2px solid #d4d5d6;
    border-radius: 20px  ;
    margin: 10px;
    padding: 1px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.144);
    
}
.sach:hover {
    margin-left: 10px;
    margin-top: 10px;
     transform: translateY(-6px);
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.332);
    z-index: 500; 
}
.sach img {
    /* margin-top: 3px; */
    height:auto;
    width: 100%;
    border-radius: 20px ;
  
}
/* .sach img:hover{
    transform: scale(1.1);
} */
.sach p {
    margin: 15px 5px 5px 10px;
    font-weight: 700;
    font-size: 12px;
    text-align: center;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="fix">
    <header class="header">
        <div class="title">
            <p>ANNA-LYLI</p>
        </div>
       
        
        <div  class="search" >
            <div class="box">
                <input type="text" id="search_text" runat="server" class="search-text" placeholder="Tìm kiếm"/>
                <button class="btn" type="button"  runat="server" id="search_button" onserverclick="SearchButton_Click">
                    <img class="img-icon" src="/image-kinhmat/logo_search.png" />
                </button>
            </div>
        </div>
                
                
        
        <div class="giohang">
        <button class="gh" type="button" >
            <a href="giohang.aspx" ><img class="img-gh" src="/image-kinhmat/giohang2.png"/></a>
        </button>
    </div>
        
        <div class="taikhoan">
        <button class="account" type="button" >
            <a href="dangnhap.aspx"><img class="img-acc" src="/icon/icon_account05.png"/></a>
            <!-- <img class="img-acc" src="/icon/icon_account05.png"/> -->
        </button>
             <div id="login" class="login" runat="server"></div>
        </div>

       
           
       
    

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

   

    <!-- Fomat-side  -->
   
     

        <div id="infor" name="infor" runat="server"> 
             <button type="button" class="themvaogio" runat="server" ID="Button1" onserverclick="AddToCartButton" Text="Thêm vào giỏ hàng">Thêm vào giỏ hàng</button>
                  <p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
        </div>

<%--          <p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>--%>
        
         <div class="container_body">

          <div class="title_hot"> <h2 >Sản Phẩm nổi bật </h2></div>

        <div id="bang" name="bang" runat="server"> </div>

        </div>
      
   
       


 
    <!-- ------ -->

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
   </form>
</body>
</html>
