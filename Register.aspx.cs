using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

using System.Net.Mail;
using System.Web.Caching;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtEmail1.Text != string.Empty && txtEmail2.Text == string.Empty)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        lblSQLError.Text = "";
        if (Page.IsValid)
        {
            Dictionary<string, string> fields = new Dictionary<string,string>();

            if (txtHomePhone.Text != string.Empty)
            {
                fields.Add("HomePhoneNumber", txtHomePhone.Text);
            }

            if (txtCellPhone.Text != string.Empty)
            {
                fields.Add("CellPhoneNumber", txtCellPhone.Text);
            }

            if (txtZip.Text != string.Empty)
            {
                fields.Add("Zip", txtZip.Text);
            }

            if (txtAddress.Text != string.Empty)
            {
               fields.Add("HomeAddress", txtAddress.Text);
            }

            string queryString = "INSERT INTO Person (";
            queryString += "PersonId, Password, Name, EmailAddress";
            foreach (KeyValuePair<string,string> field in fields)
            {
                queryString += " , " + field.Key;
            }
            queryString += ") VALUES (@PersonId, @Password, @Name, @EmailAddress";
            foreach (KeyValuePair<string,string> field in fields)
            {
                queryString += ", @" + field.Key;
            }
            queryString += ")";

            string connectionString =
                WebConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(queryString, connection);

            command.Parameters.AddWithValue("@PersonId", txtYourID.Text);
            command.Parameters.AddWithValue("@Password", txtPassword1.Text);
            command.Parameters.AddWithValue("@Name", txtName.Text);
            command.Parameters.AddWithValue("@EmailAddress", txtEmail1.Text);

            foreach (KeyValuePair<string, string> field in fields)
            {
                command.Parameters.AddWithValue(field.Key, field.Value);
            }

            try
            {
                connection.Open();

                command.ExecuteNonQuery();
                connection.Close();

                string fileName = Server.MapPath("~/App_Data/BasicMailBody.txt");
                string mailBody = string.Empty;
                if (Cache["ContactFormMailBody"] == null)
                {
                    mailBody = System.IO.File.ReadAllText(fileName);
                    Cache.Insert("ContactFormMailBody", mailBody, new CacheDependency(fileName));
                }
                else
                {
                    mailBody = Cache["ContactFormMailBody"].ToString() + "\r\n(File from the cache)";
                }

                mailBody = mailBody.Replace("##YourId##", txtYourID.Text);
                mailBody = mailBody.Replace("##Password##", txtPassword1.Text);

                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Log Authetication";
                myMessage.Body = mailBody;

                myMessage.From = new MailAddress("myaspweb@gmail.com", "myaspweb@gmail.com");
                myMessage.To.Add(new MailAddress(txtEmail1.Text, txtEmail1.Text));

                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.EnableSsl = true;
                mySmtpClient.Send(myMessage);

                FormsAuthentication.RedirectFromLoginPage(txtYourID.Text, false);
                
            }
            catch (Exception err)
            {
                lblSQLError.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }
        }

    }
}
