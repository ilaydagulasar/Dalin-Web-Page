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
    public partial class Product : System.Web.UI.Page
    {       
   
        protected void Page_Load(object sender, EventArgs e)
        { 
            productsTable.DataSource = GetProducts();
            productsTable.DataBind();
        }

        private DataTable GetProducts()
        {
            string connectionString = "Data Source=localhost;Initial Catalog=exportedCommerceDB;Integrated Security=True";

            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();

            DataTable products = new DataTable();

            if(connection.State == ConnectionState.Open)
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT productName, productDescription, unitPrice, note, categoryName FROM Products INNER JOIN Category ON Products.categoryID= Category.categoryID", connection);
                Console.WriteLine(products);
                adapter.Fill(products);
            }
            return products;
        }

    }
}