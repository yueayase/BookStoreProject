using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Net.Mail;

public partial class Buy_buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Product"];
        if(cookie != null)
        {
            //lblMessage.Text = cookie["Order"];
            if (!Request.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }

            string queryString = "UPDATE Buy SET Amount = ("
                                 + "SELECT Amount FROM Buy WHERE ISBN=\'" + cookie["Order"] +"\'"
                                 + " AND PersonId=" + "\'" + Page.User.Identity.Name + "\')+1 "
                                 + "WHERE ISBN=\'" + cookie["Order"] + "\' AND PersonId=\'" + Page.User.Identity.Name + "\'";
            string connectionString =
                WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(queryString, connection);
            int updated;

            try
            {
                connection.Open();
                updated = command.ExecuteNonQuery();
                if (updated == 0)
                {
                    connection.Close();
                    queryString = "INSERT INTO Buy(PersonId,ISBN) VALUES (@PersonId,@ISBN)";
                    command = new SqlCommand(queryString, connection);
                    command.Parameters.AddWithValue("@PersonId", Page.User.Identity.Name);
                    command.Parameters.AddWithValue("@ISBN", cookie["Order"]);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message; 
            }
            finally
            {
                connection.Close();
            }

            Response.Cookies["Product"].Expires = DateTime.Now.AddDays(-1);
            
        }
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        string queryString = "SELECT BookName, Price, EmailAddress, Amount " +
                             "FROM Book JOIN Buy ON Book.ISBN=Buy.ISBN " +
                             "JOIN Person ON Person.PersonId=Buy.PersonId " +
                             "WHERE Person.PersonId=" + "\'" + Page.User.Identity.Name + "\'";

        string connectionString =
                WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(queryString, connection);

        try
        {
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                double total_Price = 0;
                string emailAddress;
                string mailBody = "You bought:\r\n";
                reader.Read();
                mailBody += reader["BookName"] + "\r\n";
                total_Price += Convert.ToDouble(reader["Price"]) * Convert.ToInt32(reader["Amount"]);
                emailAddress = reader["EmailAddress"].ToString();
                while (reader.Read())
                {
                    mailBody += reader["BookName"] + "\r\n";
                    total_Price += Convert.ToDouble(reader["Price"]) * Convert.ToInt32(reader["Amount"]);
                }

                connection.Close();

                connectionString = WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
                connection = new SqlConnection(connectionString);
                command = new SqlCommand(queryString, connection);
                connection.Open();

                queryString = "DELETE FROM Buy WHERE PersonId=\'" + Page.User.Identity.Name + "\'";
                command = new SqlCommand(queryString, connection);
                command.ExecuteNonQuery();

                mailBody += "\r\n\r\nYour total cost is: " + total_Price.ToString();
                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Buying Information";
                myMessage.Body = mailBody;
                myMessage.From = new MailAddress("myaspweb@gmail.com", "myaspweb@gmail.com");
                myMessage.To.Add(new MailAddress(emailAddress, emailAddress));

                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.EnableSsl = true;
                mySmtpClient.Send(myMessage);

                Response.Redirect("~/Default.aspx");
            }
        }
        catch (Exception err)
        {
            lblMessage.Text = err.Message;
        }
        finally
        {
            connection.Close();
        }
    }
}
