using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical7
{
    public partial class Register : System.Web.UI.Page
    {
        UserDBDataContext db = new UserDBDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string username = args.Value;

            // Check for duplicated username
            if (db.Users.Any(u => u.Username == username))
            {
                args.IsValid = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string name = txtName.Text;

                // Insert new member account
                Member m = new Member
                {
                    Username = username,
                    Hash = Security.GetHash(password),
                    Name = name
                };
            db.Members.InsertOnSubmit(m);
            db.SubmitChanges();

                Response.Redirect("Successful.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }
    }
}