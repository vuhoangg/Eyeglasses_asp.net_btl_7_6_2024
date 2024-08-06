<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/dangky.css" rel="stylesheet" />
</head>
<body>
  <div class="fix">
    <header class="header">
        <div class="title">
            <p>ANNA-LYLI</p>
        </div>
    
        <form action="" class="search" >
            <div class="box">
                    <input type="text" class="search-text" placeholder="Tìm kiếm"/>
                    <button class="btn" >
                            <img class="img-icon" src="/image-kinhmat/logo_search.png"/>
                    </button>
                </div>
        </form>

        <!-- icon  -->
        <div class="giohang">
            <button class="gh" >
                <a href="giohang.aspx"" ><img class="img-gh" src="/image-kinhmat/giohang2.png"/></a>
            </button>
        </div>
        <div class="taikhoan">
            <button class="account" >
                <a href="dangnhap.aspx""><img class="img-acc" src="/icon/icon_account05.png"/></a>
            </button>
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
   

    <!-- Đăng ký  -->
        <div class="content">
            
            <div id="reg-form" class="auth">
            <form action="" method="post" runat="server">
    
                <div class="auth__header">
                    <h2>Đăng ký</h2>
                    <a  class="login" href="dangnhap.aspx">Đăng nhập</a>
                </div>
    
                <div class="auth__form">
    
                    <div class="form-control">
                        <label for="username">TÀI KHOẢN<i style=" color:red">*</i></label>
                        <input type="text" id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                        <p runat="server" id="username_error"></p>
                    </div>
    
                    <div class="form-control">
                        <label for="email">EMAIL<i style=" color:red">*</i></label>
                        <input type="text" id="email" placeholder="abcd@gmail.com" name="email"/>
                        <p></p>
                    </div>
    
                    <div class="form-control">
                        <label for="password">MẬT KHẨU<i style=" color:red">*</i></label>
                        <input type="password" id="password" placeholder="Nhập mật khẩu" name="password"/>
                        <p></p>
                    </div>
    
                    <div class="form-control">
                        <label for="re-password">Xác nhận mật khẩu<i style=" color:red">*</i></label>
                        <input type="password" id="re-password" placeholder="Nhập lại mật khẩu" name="re-password"/>
                        <p></p>
                    </div>
    
                    <p runat="server" id="btn_error" style="color:red"></p>
                    <button class="auth_btn" id="btnReg">Đăng ký ngay </button>
                </div>
            </form>
            </div>
        
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
</body>
</html>
