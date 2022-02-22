using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Query Database and check whether it is in the database.
        string queryString = "SELECT * FROM Person WHERE PersonId COLLATE Chinese_Taiwan_Stroke_CS_AS = "
                    + '\'' + txtName.Text + '\'' + " AND " + "Password COLLATE Chinese_Taiwan_Stroke_CS_AS = "
                    + '\'' + txtPassword.Text + '\'';

        string connectionString =
            WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(queryString, connection);
        try
        {
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (!reader.HasRows)
                throw new Exception("登入失敗");
            reader.Close();
            FormsAuthentication.RedirectFromLoginPage(txtName.Text, false);
        }
        catch (Exception err)
        {
            lblCaution.Text = err.Message.ToString();
        }
        finally
        {
            connection.Close();
        }
    }

}
