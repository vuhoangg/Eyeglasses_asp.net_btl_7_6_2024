<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlyTaiKhoan.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.quanlyTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/quanlyTaiKhoan.css" rel="stylesheet" />
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
                
                
        
        <div class="giohang">
        <button class="gh" >
            <a href="giohang.aspx" ><img class="img-gh" src="/image-kinhmat/giohang2.png"/></a>
        </button>
    </div>
        
        <div class="taikhoan">
        <button class="account" >
            <a href="dangnhap.aspx"><img class="img-acc" src="/icon/icon_account05.png"/></a>
        
        </button>
        </div>

       
           
       
    

    </header>

    <menu  class="container_menu">
        <ul class="sidebar">
            <li class="list_bar" ><a href="trangchu.aspx">Trang Chủ</a>
                <ul class="sub-menu">
                    <li class="list-item">
                        <a href="#">Kinh Râm</a>
                    </li>
                    <li class="list-item">
                        <a href="#">Kính cận</a>
                    </li>
                    <li class="list-item">
                        <a href="#">Kính Style</a>
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
                        <a href="#">Đăng xuất</a>
                    </li>
                </ul>
            </li>
        </ul>
    </menu>
   </div>

   

    <!-- Fomat-side  -->
    <div class="container_body">
     
        <span id="ql_taikhoan">
            <form action="" method="post" runat="server">
                <div class="auth__header">
                    <h2>Quản lý Tài khoản</h2>
                    <a  class="login" href="/web_bankinhmat/dangnhap.html"></a>
                </div>
                <div class="auth_form">
                    
                    <div class="form-control">
                        <label for="idtk">Mã ID <i style=" color:red">*</i></label>
                        <input type="text" id="idtk" placeholder="Nhập ID Tài khoản" name="idtk"/>
                        <p runat="server" id="username_error"></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="username">TÀI KHOẢN<i style=" color:red">*</i></label>
                        <input type="text" id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                        <p runat="server" id="P1"></p>
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
                    <div class="list_btn">

                        <button class="add_btn" id="btnReg">Thêm </button>
                        <button class="del_btn" id="btnReg">Khóa  </button>
                    </div>
                </div>
            </form>
        </span>
            
        
            
    </div>

    <!-- table  -->
    <div class="container_table">

        <div class="table_account">
            <h3>Bảng thông tin tại khoản</h3>
			<table class="bang" >
						<tr class="item_title">
							<th>Mã ID </th>
							<th>Tên Tài Khoản</th>
							<th>Email</th>
							<th>Password</th>
							<th>Repassword</th>
						</tr>
						<tr >
                            <td><p> 001</p></td>
                            <td><p>Namhoang000</p></td>
                            <td><p>namhoang@gmail.com</td>
                            <td><p>1234</td>
                            <td><p>1234</td>
						</tr>

						<tr >
                            <td><p>002</p></td>
                            <td><p>Hatrung000</p></td>
                            <td><p>hatrung@gmail.com</td>
                            <td><p>6789</td>
                            <td><p>6789</td>
						</tr>
						<tr >
                            <td><p>003</p></td>
                            <td><p>DatThanh09</p></td>
                            <td><p>DatThanh@gmail.com</td>
                            <td><p>9999</td>
                            <td><p>9999</td>
						</tr>
						
			</table>
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
