using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {


                List<nguoiDung> users = (List<nguoiDung>)Application["Users"];
                if (users == null)
                {
                    errorL.InnerHtml = "Không thể lấy danh sách người dùng.";
                    return;
                }
                string usernameL = Request.Form.Get("usernameL");
                string passwordL = Request.Form.Get("passwordL");
                int dem = 0;
                if (usernameL != "" && passwordL != "")
                {

                    foreach (nguoiDung user in users)
                    {
                        if (usernameL == user.username)
                        {
                            dem = 1;
                            if (passwordL == user.password)
                            {
                                Session["username"] = usernameL;
                                Response.Redirect("trangchu.aspx");
                                break;
                            }
                            else
                            {
                                if (Session["dem"] == null)
                                {
                                    Session["dem"] = 1;
                                }
                                else
                                {

                                    Session["dem"] = (int)Session["dem"] + 1;
                                    if ((int)Session["dem"] >= 3)
                                    {
                                        Response.Redirect("../Html/thongbaoloi.html");
                                    }
                                }
                                //Response.Write("Ban sai lan: " + Session["dem"]);
                                errorL.InnerHtml = "Sai mật khẩu lần thư" + Session["dem"];
                                break;
                            }
                        }
                    }
                    if (dem == 0)
                    {
                        errorL.InnerHtml = "Không tồn tại tài khoản ";
                    }
                }


            }

        }

    }
}