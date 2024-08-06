<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlySanPham.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.quanlySanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý sản phẩm </title>
    <link href="../style/quanlySanPham.css" rel="stylesheet" />
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
            <!-- <img class="img-acc" src="/icon/icon_account05.png"/> -->
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
     
        
            
        <span id="ql_sanpham">

            <form  method="post" runat="server" onsubmit="return btnThem()" >
                <div class="auth__header">
                    <h2>Quản lý sản phẩm</h2>
                    <a  class="login" href="/web_bankinhmat/dangnhap.html"></a>
                </div>
                
                <div class="auth_form">
                    
                    <div class="form-control">
                        <label for="id_sp">Mã ID <i style=" color:red">*</i></label>
                        <input type="text" id="id_sp"  placeholder="A001" name="id_sp" />
                        <p runat="server" id="username_error"></p>
                    </div>
                    <div class="form-control">
                        <label for="type_sp">Loại Sản Phảm <i style=" color:red">*</i></label>
                        <input type="text" id="type_sp"  placeholder="Gọng" name="type_sp" />
                  
                    </div>
                    <div class="form-control">
                        <label for="username">TÊN SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="name_sp" placeholder="Kính Râm 001" name="name_sp"/>
                        <p runat="server" id="P1"></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="img_sp">ANH SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="img_sp" placeholder="IMG" name="img_sp"/>
                        <p></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="dongia_sanpham">ĐƠN GIÁ<i style=" color:red">*</i></label>
                        <input type="text" id="dongia_sanpham" placeholder="50000 usd " name="dongia_sanpham" />
                        <p></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="mota_sanpham">MÔ TẢ SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="mota_sanpham" placeholder="Chất liệu Titan" name="mota_sanpham"/>
                        <p></p>
                    </div>
                    
                    <p runat="server" id="btn_error" style="color:red"></p>

                    <div class="list_btn">
                        <button class="add_btn" type="submit" id="add_btn" name=""  onclick="btnThem()" >Thêm </button>
                        <button class="del_btn" type="button" id="del_btn">Xoá  </button>
                        <button class="update_btn" type="button" id="update_btn">Update </button>
                    </div>
                </div>
            </form>
            <p  id="btn_error2" style="color:red"></p>
        </span>
            
    </div>

    <!-- table  -->
    <div class="container_table">

       
        <div class="table_product">
            <h3>Bảng thông tin sản phẩm</h3>
            <div id="box" runat="server" >
			<table class="bang" >
						<%--<tr class="item_title">
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Tổng cộng</th>
						</tr>
						<tr >
                            <td><p>Kính mắt 001</p></td>
                            <td><p>2200000</p></td>
                            <td><p>3</td>
                            <td><p>6600000</td>
						</tr>--%>
						
			</table>
                </div>
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


    <script>

        function btnThem() {
            var tensp = document.getElementById('name_sp');
            var btn_error2 = document.getElementById('btn_error2');
            var ten = tensp.value;
            if (ten == "") {
                btn_error2.innerHTML = 'Tên sản phẩm đang trống. Hãy nhập tên sảng phẩm.';
                return false;
            }
            btn_error.innerHTML = ''



            var id_sp = document.getElementById('id_sp');
            var btn_error2 = document.getElementById('btn_error2');

            var id  = id_sp.value;
            if (id  == "") {
                btn_error2.innerHTML = 'ID sản phẩm đang trống. Hãy nhập ID sảng phẩm.';
                return false;
            }
            btn_error.innerHTML = ''



            var img_sp = document.getElementById('img_sp');
            var btn_error2 = document.getElementById('btn_error2');
            var img  = img_sp.value;
            if (img == "") {
                btn_error2.innerHTML = 'Ảnh sản phẩm đang trống. Hãy nhập Ảnh  sảng phẩm.';
                return false;
            }
            btn_error.innerHTML = ''


            var dongia_sp = document.getElementById('dongia_sanpham');
            var btn_error2 = document.getElementById('btn_error2');
            var donggia  = donggia_sp.value;
            if (donggia  == "") {
                btn_error2.innerHTML = 'Gía sản phẩm đang trống. Hãy nhập Gía sảng phẩm.';
                return false;
            }
            btn_error.innerHTML = ''
          
        }

    </script>
</body>
</html>
