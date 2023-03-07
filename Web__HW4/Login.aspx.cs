using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4.WebHW4
{
    public partial class Login : System.Web.UI.Page
    {
        private String myEmail = "maltepe";
        private String myPassword = "maltepe";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (myEmail == email.Text && myPassword == password.Text)
            {
                Response.Redirect("Home.html");
            }
            else
            {
                wrongInput.Text = "Failed to login, try again";
            }
        }
        protected void signup_Cliced(object sender, EventArgs e) {
            Response.Redirect("SignUp.aspx");
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}