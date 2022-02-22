using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            lblMessage.Text = "您好 " + Page.User.Identity.Name + "!";
            btnLog.Text = "登出";
            btnAccount.Text = "會員中心";

            HttpCookie cookie = Request.Cookies["Authorization"];
            if (cookie == null)
            {
                string queryString = "SELECT Role FROM Person WHERE PersonId = \'" + Page.User.Identity.Name+"\'";
                string connectionString =
                       WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand(queryString, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    reader.Read();
                    cookie = new HttpCookie("Authorization");
                    cookie["Role"] = reader["Role"].ToString();
                    Response.Cookies.Add(cookie);
                }
                catch (Exception err)
                {
                    
                }
                finally
                {
                    connection.Close();
                }
            }

            cookie = Request.Cookies["Product"];
            if (cookie != null)
            {
                Response.Redirect("~/Buy/ShoppingCart.aspx");
            }
            
        }
        else
        {
            btnAccount.Text = "註冊";
        }
    }
    protected void btnLog_Click(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated)
            Response.Redirect("~/Login.aspx");
        btnLog.Text = "登入";
        lblMessage.Text = "";
        FormsAuthentication.SignOut();
        btnAccount.Text = "註冊";
        Response.Cookies["Authorization"].Expires = DateTime.Now.AddDays(-1);

        Response.Redirect("~/Default.aspx");
    }
    protected void btnAccount_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            Response.Redirect("~/Membership/MemberCenter.aspx");
        }
        else
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}
