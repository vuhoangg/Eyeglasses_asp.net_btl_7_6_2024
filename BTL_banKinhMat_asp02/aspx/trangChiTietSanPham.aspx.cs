using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class trangChiTietSanPham : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            List<sanPham> ProductList = (List<sanPham>)Application["ProductList"];
            List<sanPham> kinhram = new List<sanPham>();

            if (Session["username"] != null)
                {
                    login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "</p>";
                }

                string id = Request.QueryString["id"];

                if (id != null)
                {
                    //List<sanPham> ProductList = (List<sanPham>)Application["ProductList"];
                    List<sanPham> inforProduct = new List<sanPham>();

                    foreach (sanPham product in ProductList)
                    {
                        if (id == product.Id)
                        {
                            inforProduct.Add(product);
                        }
                    }

                    string dssp = "";

                    foreach (sanPham product in inforProduct)
                    {
                        dssp += "<div class='anh'>";
                        dssp += "<img class='imga' src='" + product.Img + "' title='ảnh kính mắt'>";
                        dssp += "</div>";

                        dssp += "<div class='content'>";
                        dssp += "<h1 class='header-content'>" + product.Name + "</h1>";
                        dssp += "<p class='price'><b>" + product.Price + "</b></p>";
                        dssp += "<p class='description'>Gọng kính cốt kim loại cao cấp là sự kết hợp hoàn hảo giữa kiểu dáng hiện đại và chất liệu đẳng cấp.";
                        dssp += "Với chất liệu kim loại bền bỉ và nhẹ nhàng,";
                        dssp += "sản phẩm sẽ giúp bạn tự tin diện trong mọi hoàn cảnh.</p>";
                        dssp += " <button type='submit' class='themvaogio' runat='server' ID='AddToCartButton1' onserverclick='AddToCartButton' Text='Thêm vào giỏ hàng'>Thêm vào giỏ hàng</button>";
                        dssp += "</div>";
                    }

                    infor.InnerHtml = dssp;
                }
                else
                {
                    Response.Redirect("trangchu.aspx");
                }
            // hiển thị sản phẩm 
       

            if (ProductList == null)
            {
                // Handle the case where ProductList is null
                return;
            }

            sanPham Product = new sanPham();
            foreach (sanPham product in ProductList)
            {
                string id1 = product.Id;
                if (id1 =="3" || id1 == "34" || id1== "5" || id1 == "36"||id1 == "13" || id1 == "12" || id1 == "25" || id1 == "14")
                { 
                    kinhram.Add(product);
                }
            }
            string dsspt = "";
            //dssp += "<div class='content'>";

            int i = 0;
            foreach (sanPham product in kinhram)
            {
                i++;
                dsspt += "<div class='sach sanpham'>";
                dsspt += "<a href='trangChiTietSanPham.aspx?id=" + product.Id + "'>";
                dsspt += " <img src = " + product.Img + ">";
                dsspt += "<p>" + product.Price + "</p>";
                dsspt += " </a>";
                dsspt += " </div> ";
            }

            bang.InnerHtml = dsspt;





            if (IsPostBack)
            {
             

             
                
                    AddToCartButton(sender, e);
                

            }


        }
        

        

            protected void AddToCartButton(object sender, EventArgs e)
            {
       
            {
                if (Session["username"] != null)
                {
                    string id = Request.QueryString.Get("id");
                    //Store cart to cookies
                    if (Request.Cookies["cart"] == null)
                    {
                        Response.Cookies["cart"].Value = $"{id},";
                        Response.Cookies["cart"].Expires = DateTime.Now.AddDays(14);
                    }
                    else
                    {

                        //Store cookies by productID, example: 1,2,3,40,50,... 
                        Response.Cookies["cart"].Value = Request.Cookies["cart"].Value + $"{id},";
                        Response.Cookies["cart"].Expires = DateTime.Now.AddDays(14);
                        Response.Redirect("giohang.aspx");

                    }

                    //Refresh to update cart number
                    Themgio.InnerHtml = "Thêm thành công";
                    //Response.Redirect(Request.Url.ToString());
                }
                else
                {
                    Response.Redirect("dangnhap.aspx");
                }
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
