using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1525586_Fleur_CO5027
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("c05027lcb@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtSubject.Text;
            msg.Body = txtMessage.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                LitResult.Text =
                    "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                LitResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}