using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Detailed_Information : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Product2"];
        if(cookie != null){
            string queryString = "SELECT BookName, Author, PublisherName, Price, ISBN, Description,ImageUrl " +
                                 "FROM Book JOIN Publisher ON Book.PublisherId=Publisher.PublisherId " +
                                 "WHERE ISBN = \'" + cookie["Order"] + "\'";
            string connectionString =
            WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(queryString, connection);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();

                lblBookName.Text = "書名: "+ reader["BookName"].ToString();
                lblAuthor.Text = "作者: " + reader["Author"].ToString();
                lblPublisher.Text = "出版商: " + reader["PublisherName"].ToString();
                lblPrice.Text =  "價錢: " + reader["Price"].ToString();
                lblPrice.Text =  "ISBN: " + reader["ISBN"].ToString();

                lblDescription.Text = "書籍描述: <br />" + reader["Description"].ToString();
                imgProduct.ImageUrl = reader["ImageUrl"].ToString();

                reader.Close();
            }
            catch (Exception err)
            {
                lblCaution.Text = err.Message.ToString();
            }
            finally
            {
                connection.Close();
            }
            
            Response.Cookies["Product2"].Expires = DateTime.Now.AddDays(-1);
        }
    }
    protected void btnShop_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Buy/ShoppingCart.aspx");
    }
}
