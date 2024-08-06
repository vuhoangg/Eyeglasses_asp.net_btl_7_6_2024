<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="BTL_banKinhMat_asp02.aspx.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="../style/gioithieu.css" rel="stylesheet" />
    <title>Giới thiệu </title>
</head>
<body>
   <div class="fix">
    <header class="header">
        <div class="title">
            <p>ANNA-LYLI</p>
        </div>
       
        
        <form class="search"  runat="server" >
            <div class="box">
                    <input type="text" id="search_text" runat="server" class="search-text" placeholder="Tìm kiếm"/>
                    <button class="btn" runat="server" id="search_button" onserverclick="SearchButton_Click" >
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
            <div id="login" class="login" style='color: rgb(255, 255, 255);font-size: 12px;' runat="server"></div>
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
    <div class="container_banner01">
                <div class="item">
                    <img class="banner_header" src="/image_slider/lily02.png" alt="">
                </div>
    </div>

    <div class="container_mid">
        <div class="item21">
            <img class="mid01" src="/image_slider/gongkinhcan.jpg" >
        </div>
        <div class="item22">
            <img class="mid02" src="/image_slider/kinhram_coban.jpg" >
        </div>
    </div>
    
            <!-- <a href="/gong-kinh-can">Gọng Kính cận</a>
            <a href="/krcb">Kính Râm Cơ Bản</a> -->
    

            <!--  -->

            <div class="section_content">
                <div class="section_item">
                    <div class="section_child">
                        <h3>Hàng chính hãng</h3>
                        <span>Sản Phẩm cửa hàng điểu tính hợp ca mã QR của bộ công thương để quý khách hàng có thể kiểm tra thông tin sản phẩm và tránh hàng giả </span>
                    </div>
                    <div class="section_child">
                        <h3>Khám mắt miễn phí</h3>
                        <span>Anna-Lily thực hiện đo khám mắt miễn phí cho khách hàng khi đặt lịch trước 24 tiếng. Với các bác sĩ chuyên khoa, trình độ chuyên môn cao</span>
                    </div>
                    <div class="section_child">
                        <h3>Bảo hành 12 tháng</h3>
                        <span>Chúng tôi tự tin là đơn vị có chế độ hậu mãi tốt nhất Việt Nam khi áp dụng chính sách bảo hành một năm và đổi trả sản phẩm không cần lí do trong 30 ngày.</span>
                    </div>
                </div>
                <div class="section_item">
                    <div class="section_child">
                        <h3>Vệ sinh và bảo quản kính mắt</h3>
                        <span>Anna-Lily sẽ hướng dẫn bạn cách lau chùi, vệ sinh chiếc kính của bạn thật sạch sẽ mỗi ngày, để có một tầm mình thật sáng rõ và tươi mới.</span>
                    </div>
                    <div class="section_child">
                        <h3>Miễn phí giao hàng</h3>
                        <span>
                            Hiện nay, Hệ thông cửa hàng đã phủ song toàn quốc với hớn 100 cửa hàng hộ trợ giao hàng tận nơi đến tay khách hàng
                        </span>
                    </div>
                    <div class="section_child">
                        <h3>Thu cũ đổi mới</h3>
                        <span>Thu Cũ Đổi Mới- GIẢM 10% đơn hàng kính mắt của Anna-Lily, quý khách hàng sẽ được hỗ trợ thu lại kính mắt và tròng cũ với giá cực kỳ ưu đãi.</span>
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
</body>
</html>
