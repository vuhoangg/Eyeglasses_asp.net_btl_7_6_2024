using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            

            // Chuyển hướng đến trang giỏ hàng
            Response.Redirect("trangchu.aspx");
       
        }
    }
}