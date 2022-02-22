using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Membership_RevisePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btbUpdate_Click(object sender, EventArgs e)
    {
        string queryString = "SELECT PersonId, Password FROM Person WHERE PersonId = \'"
                             + Page.User.Identity.Name + "\'" + " AND Password = \'" + txtOldPassword.Text + "\'";
        string connectionString =
                   WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(queryString, connection);

        try
        {
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (!reader.HasRows)
            {
                throw new Exception("密碼錯誤!");
            }

            connection.Close();

            connection.Open();
            queryString = "UPDATE Person SET Password=@Password WHERE PersonId=@PersonId";
            command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@Password", txtNewPassword.Text);
            command.Parameters.AddWithValue("@PersonId", Page.User.Identity.Name);
            command.ExecuteNonQuery();

            Response.Redirect("~/Default.aspx");
        }
        catch (Exception err)
        {
            lblError.Text = err.Message;
        }
        finally
        {
            connection.Close();
        }
    }
}
