using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;
namespace BTL_banKinhMat_asp02.aspx
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }
            List<sanPham> ProductList = (List<sanPham>)Application["ProductList"];
            List<sanPham> kinhram = new List<sanPham>();

            if (ProductList == null)
            {
                // Handle the case where ProductList is null
                return;
            }

            sanPham Product = new sanPham();
            foreach (sanPham product in ProductList)
            {
                string type = product.Type;
                if (type == "Gong" )
                {
                    kinhram.Add(product);
                }
            }





            string dssp = "";
            //dssp += "<div class='content'>";

            int i = 0;
            foreach (sanPham product in kinhram)
            {
                i++;
                dssp += "<div class='sach sanpham'>";
                dssp += "<a href='trangChiTietSanPham.aspx?id=" + product.Id + "'>";
                dssp += " <img src = " + product.Img + ">";
                dssp += "<p>" + product.Price + "</p>";
                dssp += " </a>";
                dssp += " </div> ";
            }
            bang.InnerHtml = dssp;
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