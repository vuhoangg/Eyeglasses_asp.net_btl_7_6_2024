using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
                int soluot = Convert.ToInt32(Application["sogiohang"]);
                if (Request.Cookies["cart"] != null)
                {
                    List<sanPham> cartList = new List<sanPham>();
                    List<sanPham> productList = (List<sanPham>)Application["ProductList"];
                    string[] productsID = Request.Cookies["cart"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (sanPham product in productList)
                        {
                            if (product.Id == productID)
                            {
                                soluot++;
                                cartList.Add(product);
                            }
                        }
                        //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
                    }

                        string dssp = "";
                        //dssp += "<div class='content'>";
                        dssp += "<table class='bang'>";
                        dssp += "<tr class=\"item_title\">";
                        dssp += "<th>Ảnh</th>";
                        dssp += "<th>Tên sản phẩm</th>";
                        dssp += "<th>Giá</th>";
                        dssp += "<th>Số lượng</th>";
                        dssp += "<th>Tổng cộng</th>";
                        dssp += "<th>Tác Vụ</th>";
                        dssp += "</tr>";

                        int i = 0;
                    foreach (sanPham product in cartList)
                    {
                        i++;
                        dssp += "<tr class=\"item_sanpham\">";
                        dssp += "<td class=\"td_img\"><img class=\"img_gh\" src=" + product.Img + "></td>";
                        dssp += "<td><p>" + product.Name + "</p></td>";
                        dssp += "<td><p>" + product.Price + "</p></td>";
                        dssp += "<td><p>1</p></td>";
                        dssp += "<td><p>" + product.Price + "</p></td>";
                        dssp += "<td>";
                        //dssp += "<div><button class=\"xoa_sp\">Xoá</button></div>";
                        dssp += "<div><a href='xoagiohang.aspx?id=" + product.Id + "'><button class=\"xoa_sp\">Xoá</button></a></div>";

                        dssp += "</td>";
                        dssp += "</tr>";
                       
                    }
                    dssp += "</table>";

                    cart_product.InnerHtml = dssp;

                    //Display products price toan bo san pham
                    int productsPrice = 0;
                    foreach (sanPham product in cartList) productsPrice += Convert.ToInt32(product.Price);
                    products_price.InnerHtml = productsPrice.ToString() + " <span class='cart__product-price-unit'>đ</span>";
                   
                    int orderTotal = productsPrice;
                    order_total_price.InnerHtml = orderTotal.ToString() + "<span class='cart__product-price-unit'>đ</span>";
                }
                else
                {
                
                    Response.Redirect("trangChiTietSanPham.aspx");
                }
            }
            else
            {
                Response.Redirect("dangnhap.aspx");
            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchText = "";

            if (search_text.Value != "")
            {
                searchText = search_text.Value.ToLower();
            }
            // Kiểm tra giá trị của searchText

            Response.Redirect($"sanpham.aspx?search={searchText}");
        }

    }
}