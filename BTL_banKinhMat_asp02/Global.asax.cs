using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Users"] = new List<nguoiDung>();
            List<nguoiDung> Users = (List<nguoiDung>)Application["Users"];
            Users.Add(new nguoiDung("bacvu999", "hoangnam@gmail.com", "1234678", "1234678"));
            Users.Add(new nguoiDung("huyhoang", "huyhoang@gmail.com", "huyhoang", "huyhoang"));
            Users.Add(new nguoiDung("nguyenhuy", "nguyenhuy@gmail.com", "nguyenhuy", "nguyenhuy"));
            Users.Add(new nguoiDung("duyhuy", "duyhuy@gmail.com", "duyhuy", "duyhuy"));

            Application["Users"] = Users;


            // khởi tạo danh sách san phẩm sau đó chuyển vào trang thái Application 
            Application["ProductList"] = new List<sanPham>();
            List<sanPham> Products = (List<sanPham>)Application["ProductList"];

            // kính mắt 
            Products.Add(new sanPham() { Id = "1", Type = "Gong", Img = "../image-kinhmat/kinh01.jpeg", Name = "Kính 001", Price = "300000", Discount = 0.3f , trangThai="Còn Hàng"});
            
            Products.Add(new sanPham() { Id = "2", Type = "Gong", Img = "../image-kinhmat/kinh02.jpeg", Name = "Kính 002", Price = "600000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "3", Type = "Gong", Img = "../image-kinhmat/kinh03.jpeg", Name = "Kính 003", Price = "700000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "4", Type = "Gong", Img = "../image-kinhmat/kinh04.jpeg", Name = "Kính 004", Price = "1800000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "5", Type = "Gong", Img = "../image-kinhmat/kinh05.jpeg", Name = "Kính 005", Price = "2800000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "6", Type = "Gong", Img = "../image-kinhmat/kinh06.jpeg", Name = "Kính 006", Price = "9000000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "7", Type = "Gong", Img = "../image-kinhmat/kinh07.jpeg", Name = "Kính 007", Price = "1800000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "8", Type = "Gong", Img = "../image-kinhmat/kinh08.jpeg", Name = "Kính 008", Price = "6000000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "9", Type = "Gong", Img = "../image-kinhmat/kinh08.jpeg", Name = "Kính 008", Price = "8000000", Discount = 0.3f, trangThai = "Còn Hàng" });

            // gong kinh 
            Products.Add(new sanPham() { Id = "10", Type = "Gong1", Img = "../image_gongkinh/gongkinh01.jpeg", Name = "Gọng kính 001", Price = "800000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "11", Type = "Gong1", Img = "../image_gongkinh/gongkinh02.jpeg", Name = "Gọng kính 002", Price = "500000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "12", Type = "Gong1", Img = "../image_gongkinh/gongkinh03.jpeg", Name = "Gọng kính 003", Price = "5000000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "13", Type = "Gong1", Img = "../image_gongkinh/gongkinh04.jpeg", Name = "Gọng kính 004", Price = "1800000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "14", Type = "Gong1", Img = "../image_gongkinh/gongkinh05.jpeg", Name = "Gọng kính 005", Price = "300000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "15", Type = "Gong1", Img = "../image_gongkinh/gongkinh06.jpeg", Name = "Gọng kính 006", Price = "4400000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "16", Type = "Gong1", Img = "../image_gongkinh/gongkinh07.jpeg", Name = "Gọng kính 007", Price = "600000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "17", Type = "Gong1", Img = "../image_gongkinh/gongkinh08.jpeg", Name = "Gọng kính 008", Price = "900000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "18", Type = "Gong1", Img = "../image_gongkinh/gongkinh09.jpeg", Name = "Gọng kính 009", Price = "1200000", Discount = 0.3f, trangThai = "Còn Hàng" });
            Products.Add(new sanPham() { Id = "19", Type = "Gong1", Img = "../image_gongkinh/gongkinh10.jpeg", Name = "Gọng kính 010", Price = "4000000", Discount = 0.3f, trangThai = "Còn" });
            Products.Add(new sanPham() { Id = "20", Type = "Gong1", Img = "../image_gongkinh/gongkinh11.jpeg", Name = "Gọng kính 011", Price = "9000000", Discount = 0.3f, trangThai = "Còn" });
            Products.Add(new sanPham() { Id = "21", Type = "Gong1", Img = "../image_gongkinh/gongkinh12.jpeg", Name = "Gọng kính 012", Price = "1004000", Discount = 0.3f, trangThai = "Còn" });


            // kinh ram 
            Products.Add(new sanPham() { Id = "22", Type = "Gong2", Img = "../image_kinhram/kinhram01.jpeg", Name = "Kính râm 001", Price = "1400000", Discount = 0.3f, trangThai = "Còn" });
            Products.Add(new sanPham() { Id = "23", Type = "Gong2", Img = "../image_kinhram/kinhram02.jpeg", Name = "Kính râm 001", Price = "700000", Discount = 0.3f, trangThai = "Còn" });
            Products.Add(new sanPham() { Id = "24", Type = "Gong2", Img = "../image_kinhram/kinhram03.jpeg", Name = "Kính râm 001", Price = "8000000", Discount = 0.3f, trangThai = "Còn" });
            Products.Add(new sanPham() { Id = "25", Type = "Gong2", Img = "../image_kinhram/kinhram04.jpeg", Name = "Kính râm 001", Price = "4500000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "26", Type = "Gong2", Img = "../image_kinhram/kinhram05.jpeg", Name = "Kính râm 001", Price = "200000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "27", Type = "Gong2", Img = "../image_kinhram/kinhram06.jpeg", Name = "Kính râm 001", Price = "500000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "28", Type = "Gong2", Img = "../image_kinhram/kinhram07.jpeg", Name = "Kính râm 001", Price = "9000000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "29", Type = "Gong2", Img = "../image_kinhram/kinhram08.jpeg", Name = "Kính râm 001", Price = "550000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "30", Type = "Gong2", Img = "../image_kinhram/kinhram09.jpeg", Name = "Kính râm 001", Price = "4500000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "31", Type = "Gong2", Img = "../image_kinhram/kinhram10.jpeg", Name = "Kính râm 001", Price = "300000", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "32", Type = "Gong2", Img = "../image_kinhram/kinhram11.jpeg", Name = "Kính râm 001", Price = "500032", Discount = 0.3f, trangThai = "Con" });
            Products.Add(new sanPham() { Id = "33", Type = "Gong2", Img = "../image_kinhram/kinhram12.jpeg", Name = "Kính râm 001", Price = "200033", Discount = 0.3f, trangThai = "Con" });

            // trong kính 
            Products.Add(new sanPham() { Id = "34", Type = "Trong", Img = "../image_trongkinh/trongkinh01.jpeg", Name = "Tròng kinh 001", Price = "980000", Discount = 0.3f, trangThai = "Hết Hàng" });
            Products.Add(new sanPham() { Id = "35", Type = "Trong", Img = "../image_trongkinh/trongkinh02.jpeg", Name = "Tròng kinh 002", Price = "650000", Discount = 0.3f, trangThai = "Hết Hàng" });
            Products.Add(new sanPham() { Id = "36", Type = "Trong", Img = "../image_trongkinh/trongkinh03.jpeg", Name = "Tròng kinh 003", Price = "420000", Discount = 0.3f, trangThai = "Hết Hàng" });




            Application["ProductList"] = Products;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}