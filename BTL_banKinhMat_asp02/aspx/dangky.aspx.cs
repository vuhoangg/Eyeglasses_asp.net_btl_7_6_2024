using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL_banKinhMat_asp02.cLass;

namespace BTL_banKinhMat_asp02.aspx
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("email");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re-password");
                List<nguoiDung> users = (List<nguoiDung>)Application["Users"];
                bool check = true;
                if (username != "" && email != "" && password != "" && repassword != "")
                {
                    if(password != repassword)
                    {
                        btn_error.InnerHtml = "mật khẩu xac nhận không khớp ";
                        check = false ;
                    }   
                    foreach (nguoiDung user in users)
                    {
                        if (username == user.username)
                        {
                            btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }

                    if (check)
                    {
                        btn_error.InnerHtml = "Đăng ký thành công";
                        nguoiDung newUser = new nguoiDung(username, email, password, repassword);
                        users.Add(newUser);
                        Application["Users"] = users;
                        return;
                    }
                }
            }

        }
    }
}