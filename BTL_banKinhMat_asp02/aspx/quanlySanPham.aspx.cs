using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class quanlySanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
                string id_sp = Request.Form.Get("id_sp");
                string type_sp = Request.Form.Get("type_sp");
                string name_sp = Request.Form.Get("name_sp");
                string img_sp = Request.Form.Get("img_sp");
                string dongia_sp = Request.Form.Get("dongia_sanpham");
                //string mota_sp = Request.Form.Get("mota_sanpham");



                //List<nguoiDung> users = (List<nguoiDung>)Application["Users"];
                List<sanPham> Products = (List<sanPham>)Application["ProductList"];
                bool check = true;
                if (name_sp != "" && id_sp != "" && type_sp != "" && img_sp != "" && dongia_sp != "")
                {

                    foreach (sanPham m in Products)
                    {
                        if (id_sp == m.Id)
                        {
                            btn_error.InnerHtml = " Sản Phâm đã tồn tại ";
                            check = false;
                        }
                    }

                    if (check)
                    {
                        btn_error.InnerHtml = "Đăng ký thành công";
                        Products.Add(new sanPham() { Id = id_sp, Type = type_sp, Img = img_sp, Name = name_sp, Price = dongia_sp, Discount = 0.3f });
                        Application["ProductList"] = Products;



                        string dstk = "";
                        dstk += "<table class=\"bang\" border='1'>";
                        dstk += "<tr class=\"item_title\">";
                        dstk += "<th> STT </th>";
                        dstk += "<th> Mã SP </th>";
                        dstk += "<th> Kiểu SP</th>";
                        dstk += "<th> Ảnh sản Phảm </th>";
                        dstk += "<th>Tên sản phẩm</th>";
                        dstk += "<th>Giá</th>";
                        dstk += "</tr>";
                        int i = 0;
                        foreach (sanPham P in Products)
                        {
                            i++;
                            dstk += "<tr>";
                            dstk += "<td>" + i + "</td>";
                            dstk += "<td>" + P.Id + "</td>";
                            dstk += "<td>" + P.Type + "</td>";
                            dstk += "<td>" + P.Img + "</td>";
                            dstk += "<td><p>" + P.Name + "</p></td>";
                            dstk += "<td><p>" + P.Price + "</p></td>";
                            dstk += "</tr>";
                        }
                        dstk += "</table>";
                        box.InnerHtml = dstk;


                    }
                }
            //}
        }
        //protected void updateButton(object sender, EventArgs e)
        //{
        //    string id_sp = Request.Form.Get("id_sp");
        //    string type_sp = Request.Form.Get("type_sp");
        //    string name_sp = Request.Form.Get("name_sp");
        //    string img_sp = Request.Form.Get("img_sp");
        //    string dongia_sp = Request.Form.Get("dongia_sanpham");

        //    List<sanPham> Products = (List<sanPham>)Application["ProductList"];
        //    bool check = true;
        //    if (name_sp != "" && id_sp != "" && type_sp != "" && img_sp != "" && dongia_sp != "")
        //    {

        //        foreach (sanPham m in Products)
        //        {
        //            if (id_sp == m.Id)
        //            {
        //                m.Name = name_sp;
        //                m.Img = img_sp;
        //                m.Price = dongia_sp;
        //            }
        //        }

                
        //            btn_error.InnerHtml = "Update  thành công";
        //            Products.Add(new sanPham() { Id = id_sp, Type = type_sp, Img = img_sp, Name = name_sp, Price = dongia_sp, Discount = 0.3f });
        //            Application["ProductList"] = Products;

        //        string dstk = "";
        //        dstk += "<table class=\"bang\" border='1'>";
        //        dstk += "<tr class=\"item_title\">";
        //        dstk += "<th> STT </th>";
        //        dstk += "<th> Mã SP </th>";
        //        dstk += "<th> Kiểu SP</th>";
        //        dstk += "<th> Ảnh sản Phảm </th>";
        //        dstk += "<th>Tên sản phẩm</th>";
        //        dstk += "<th>Giá</th>";
        //        dstk += "</tr>";
        //        int i = 0;
        //        foreach (sanPham P in Products)
        //        {
        //            i++;
        //            dstk += "<tr>";
        //            dstk += "<td>" + i + "</td>";
        //            dstk += "<td>" + P.Id + "</td>";
        //            dstk += "<td>" + P.Type + "</td>";
        //            dstk += "<td>" + P.Img + "</td>";
        //            dstk += "<td><p>" + P.Name + "</p></td>";
        //            dstk += "<td><p>" + P.Price + "</p></td>";
        //            dstk += "</tr>";
        //        }
        //        dstk += "</table>";
        //        box.InnerHtml = dstk;
        //    }

        //}
    }
}