using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4.WebHW4
{
    public partial class SignUp : System.Web.UI.Page
    {
        private String myName;
        private String mySurname;
        private String myEmail;
        private String myPassword;
        private String myGender;
        private String myBirthday;
        protected void Page_Load(object sender, EventArgs e)
        {
            successful.Style.Add("display", "none");
            failiure.Style.Add("display", "none");
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            myName = name.Text.Trim();
            mySurname = surname.Text.Trim();
            myEmail = email.Text.Trim();
            myPassword = password.Text.Trim();
            myGender = gender.SelectedValue;
            myBirthday = birthday.Text;

            int returnedValue = insertToDatabase(myName, mySurname, myEmail, myPassword, myGender, myBirthday);

            if (returnedValue == 1)
            {
                successful.Style.Add("display", "block");
                form1.Style.Add("display", "none");
                Response.AddHeader("REFRESH","5;URL=Home.html");
            }
            else
            {
                failiure.Style.Add("display", "block");
            }

        }

        protected void login_Click(object sender, EventArgs e)
        {
   
            Response.Redirect("Login.aspx");
        }

        
    }
}