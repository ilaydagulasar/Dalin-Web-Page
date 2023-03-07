using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assignment_4.WebHW4
{
    public partial class SignUp : System.Web.UI.Page
    {
        private int insertToDatabase(string myName, string mySurname, string myEmail, string myPassword, string myGender, string myBirthday)
        {
            int result = 0;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=exportedCommerceDB;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO Customers(firstName, lastName, email, password, gender, birthday) " +
                        "VALUES ('" + myName + "','" + mySurname + "','" + myEmail + "','" + myPassword + "','" + myGender + "','" + myBirthday + "');", connection);
                    result = command.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
            }
            return result;
        }
    }
}

