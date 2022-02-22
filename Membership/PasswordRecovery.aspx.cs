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
using System.Web.Caching;

public partial class Membership_PasswordRecovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRecover_Click(object sender, EventArgs e)
    {
        string queryString = "SELECT Password, EmailAddress FROM Person WHERE PersonId = \'" + txtYourAccount.Text + "\'";
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
                string fileName = Server.MapPath("~/App_Data/RecoveryMailBody.txt");
                string mailBody = string.Empty;
                if (Cache["ContactFormMailBody2"] == null)
                {
                    mailBody = System.IO.File.ReadAllText(fileName);
                    Cache.Insert("ContactFormMailBody2", mailBody, new CacheDependency(fileName));
                }
                else
                {
                    mailBody = Cache["ContactFormMailBody2"].ToString() + "\r\n(File from the cache)";
                }

                reader.Read();
                mailBody = mailBody.Replace("##Password##", reader["Password"].ToString());

                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Password Recovery";
                myMessage.Body = mailBody;

                myMessage.From = new MailAddress("myaspweb@gmail.com", "myaspweb@gmail.com");
                myMessage.To.Add(new MailAddress(reader["EmailAddress"].ToString(), reader["EmailAddress"].ToString()));

                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.EnableSsl = true;
                mySmtpClient.Send(myMessage);

            }
        }
        catch (Exception err)
        {
            
        }
        finally
        {
            connection.Close();
            Response.Redirect("~/Default.aspx");
        }
    }
}
