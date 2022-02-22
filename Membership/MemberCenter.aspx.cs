using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Membership_MembershipCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string queryString = "SELECT Name, EmailAddress, HomePhoneNumber, CellPhoneNumber, Zip, HomeAddress" +
                                 " FROM Person WHERE PersonId = \'" + Page.User.Identity.Name + "\'";

            string connectionString =
                   WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(queryString, connection);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                reader.Read();
                txtName.Text = reader["Name"].ToString();
                txtEmail.Text = reader["EmailAddress"].ToString();
                if (!reader.IsDBNull(2))
                    txtHomePhone.Text = reader["HomePhoneNumber"].ToString();
                if (!reader.IsDBNull(3))
                    txtCellPhone.Text = reader["CellPhoneNumber"].ToString();
                if (!reader.IsDBNull(4))
                    txtZip.Text = reader["Zip"].ToString();
                if (!reader.IsDBNull(5))
                    txtAddress.Text = reader["HomeAddress"].ToString();

            }
            catch (Exception err)
            {
                lblError.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

            HttpCookie cookie = Request.Cookies["Authorization"];
            if (cookie != null)
            {
                if (cookie["Role"] == "Boss" || cookie["Role"] == "Employee" || cookie["Role"] == "Admin")
                {
                    lbtnUpdate.Visible = true;
                    lbtnAddOrDelete.Visible = true;
                }

                if (cookie["Role"] == "Admin")
                {
                    lbtnView.Visible = true;
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string queryString = "UPDATE Person SET Name=@Name, EmailAddress=@EmailAddress, "+
                             "HomePhoneNumber=@HomePhoneNumber, CellPhoneNumber=@CellPhoneNumber, " +
                             "Zip=@Zip, HomeAddress=@HomeAddress WHERE PersonId=@PersonId";
        string connectionString =
           WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(queryString, connection);
        command.Parameters.AddWithValue("@Name", txtName.Text);
        command.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
        command.Parameters.AddWithValue("@HomePhoneNumber", txtHomePhone.Text);
        command.Parameters.AddWithValue("@CellPhoneNumber", txtCellPhone.Text);
        command.Parameters.AddWithValue("@Zip", txtZip.Text);
        command.Parameters.AddWithValue("@HomeAddress", txtAddress.Text);
        command.Parameters.AddWithValue("@PersonId", Page.User.Identity.Name);

        try
        {
            connection.Open();
            int updated = command.ExecuteNonQuery(); ;
            lblError.Text = updated.ToString();
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
    protected void txtRevisePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Membership/RevisePassword.aspx");
    }
    protected void lbtnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ControlProduct/UpdateProduct.aspx");
    }
    protected void lbtnAddOrDelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ControlProduct/AddOrDeleteProduct.aspx");
    }
    protected void lbtnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdministratorInterfaces/ManagementDatabase.aspx");
    }
}
