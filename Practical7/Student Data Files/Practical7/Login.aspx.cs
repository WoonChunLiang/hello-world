using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Practical7
{
    public partial class Login : System.Web.UI.Page
    {
        UserDBDataContext db = new UserDBDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                bool rememberMe = chkRememberMe.Checked;

                // Login the user
                User u = db.Users.SingleOrDefault(
                            x => x.Username == username &&
                                 x.Hash == Security.GetHash(password)
                         );
                if(u != null)
                {
                    //FormsAuthentication.RedirectFromLoginPage(u.Username, rememberMe);
                    Security.LoginUser(u.Username, u.Role, rememberMe);
                }
                else
                {
                    cvNotMatched.IsValid = false;
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}