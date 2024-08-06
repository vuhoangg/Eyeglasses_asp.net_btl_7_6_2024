using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;
namespace BTL_banKinhMat_asp02.aspx
{
    public partial class sanpham : System.Web.UI.Page
    {







        //product.Name.ToLower().IndexOf(search) != -1 &&

        protected void getProductsListBySearchAndFilter(string search, int begin, int end, List<sanPham> productsListsBySearchAndFilter, List<sanPham> productsLists)
        {
            foreach (sanPham product in productsLists)
            {
                if (product.trangThai .ToLower().IndexOf(search) != -1 && Convert.ToInt32(product.Price) >= begin && Convert.ToInt32(product.Price) <= end)
                {
                    productsListsBySearchAndFilter.Add(product);
                    
                }
                if(product.trangThai .ToLower().IndexOf(search) != 1)
                {
                    
                    bang1.InnerHtml = "";
                }
            }
            string dssp = "";
            int i = 0;
            foreach (sanPham product in productsListsBySearchAndFilter)
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
            bang1.InnerHtml = "";
           
        }


        //
        protected void getProductsListBySearchAndFilter2(string search, int begin, int end, List<sanPham> productsListsBySearchAndFilter, List<sanPham> productsLists)
        {
            foreach (sanPham product in productsLists)
            {
                if (product.Name.ToLower().IndexOf(search) != -1 && Convert.ToInt32(product.Price) >= begin && Convert.ToInt32(product.Price) <= end)
                {
                    productsListsBySearchAndFilter.Add(product);

                }
                if (product.trangThai.ToLower().IndexOf(search) != 1)
                {

                    bang1.InnerHtml = "";
                }
            }
            string dssp = "";
            int i = 0;
            foreach (sanPham product in productsListsBySearchAndFilter)
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
            bang1.InnerHtml = "";

        }

        ///


        protected void getProductsFilter( int begin, int end, List<sanPham> productsListsBySearchAndFilter, List<sanPham> productsLists)
        {
            foreach (sanPham product in productsLists)
            {
                if (Convert.ToInt32(product.Price) >= begin && Convert.ToInt32(product.Price) <= end)
                {
                    productsListsBySearchAndFilter.Add(product);

                }
                
            }
            string dssp = "";
            int i = 0;
            foreach (sanPham product in productsListsBySearchAndFilter)
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
            bang1.InnerHtml = "";

        }


        //  Hàm đếm tổng số sản phẩm 
        protected string totalProducts(List<sanPham> productsListsByTypeAndFilter)
        {
            int total = 0;
            foreach (sanPham product in productsListsByTypeAndFilter)
                total++;
            return total.ToString();
        }

        protected string FilterPrice(List<sanPham> productsLists)
        {
            int type = 0;
            foreach (sanPham m in productsLists)
            {
                int price = Convert.ToInt32(m.Price);
                if (price >= 0 && price <= 1000000)
                {
                    type = 1;
                }
                else if (price >= 1000000 && price <= 3000000)
                {
                    type = 2;
                }
                else if (price >= 3000000 && price <= 99999999)
                {
                    type = 3;
                }
            }

            return type.ToString();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }


            //List<sanPham> ProductList = (List<sanPham>)Application["ProductList"];
            List<sanPham> ProductList = (List<sanPham>)Application["ProductList"];
            List<sanPham> kinhram = new List<sanPham>();
            sanPham Product = new sanPham();

            foreach (sanPham product in ProductList)
            {
                string type = product.Type;
                if (type == "Gong2")
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
            bang1.InnerHtml = dssp;

           

            //List<sanPham> kinhram = new List<sanPham>();
            List<sanPham> productsLists = (List<sanPham>)Application["ProductList"];
            List<sanPham> productsListBySearchAndFilter = new List<sanPham>();
            Page.Title = "Tìm kiếm";
           

            //string type = Request.QueryString.Get("type");
            string search = Request.QueryString.Get("search");
            string filter1 = Request.QueryString["filter1"];





            if (search != null)
                    {
                        //======Display Page Content
                        //Display Products
                        search = search.ToLower();

                        //Change page title
                        Page.Title = "Tìm kiếm";


                //Create Products List

                
                        

                if (filter1 != null )
                {
                    Page.Title = "Lọc 11 ";

                    if (filter1 == "01")
                    {
                        Page.Title = "Lọc 1 ";
                        getProductsListBySearchAndFilter(search, 0, 1000000, productsListBySearchAndFilter, productsLists);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }

                    else if (filter1 == "02")
                    {
                        getProductsListBySearchAndFilter(search, 1000000, 3000000, productsListBySearchAndFilter, productsLists);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Từ 1 - 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }

                    else if (filter1 == "03")
                    {
                        getProductsListBySearchAndFilter(search, 3000000, 999999999, productsListBySearchAndFilter, productsLists);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Trên 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }
                }
                else
                {
                        getProductsListBySearchAndFilter(search, 0, 999999999, productsListBySearchAndFilter, productsLists);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' ({totalProducts(productsListBySearchAndFilter)})";

                    getProductsListBySearchAndFilter2(search, 0, 999999999, productsListBySearchAndFilter, productsLists);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' ({totalProducts(productsListBySearchAndFilter)})";

                }
            }
            else
            {
                if (filter1 == "01")
                {
                    Page.Title = "Lọc 1 ";
                    getProductsFilter( 0, 1000000, productsListBySearchAndFilter, productsLists);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }
                else if (filter1 == "02")
                {
                    getProductsFilter( 1000000, 3000000, productsListBySearchAndFilter, productsLists);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Từ 1 - 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }

                else if (filter1 == "03")
                {
                    getProductsFilter(3000000, 999999999, productsListBySearchAndFilter, productsLists);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Trên 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }
            }
            

        }
        // hàm tìm kiếm 
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchText = "";

            if (search_text.Value != "")
            {
                searchText = search_text.Value.ToLower();
            }
            

            Response.Redirect($"sanpham.aspx?search={searchText}");
        }
    }
}