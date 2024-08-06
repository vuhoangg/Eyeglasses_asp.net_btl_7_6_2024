using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_banKinhMat_asp02.cLass
{
    public class sanPham
    {
        public string Id;
        public string Type;
        public string Img;
        public string Name;
        public string  Price;
        public float  Discount;
        public string trangThai;


        //public sanPham(string Id, string Img, string Name, float Price, float Discount)
        //{
        //    this.Id = Id;
        //    this.Img = Img;
        //    this.Name = Name;
        //    this.Price = Price;
        //    this.Discount = Discount;
        //}
                                              
        public string id { get; set; }
        public string type { get; set; }
        public string img { get; set; }
        public string name { get; set; }
        public float price { get; set; }
        public float discount { get; set; }
        public string tranghai  { get; set; }


    }
}