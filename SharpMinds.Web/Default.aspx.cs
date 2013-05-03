using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using System.Net.Mail;

namespace SharpMinds.Web
{
    public partial class Default : Page
    {
        private const string Sharpmindswebmail = "website@sharpminds.dk";
        private const string Sharpmindsemail = "cani@sharpminds.dk";

        protected void sendMessageBtn_Click(object sender, EventArgs e)
        {
            var message = new MailMessage { From = new MailAddress(Sharpmindswebmail) };
            message.To.Add(new MailAddress(Sharpmindsemail));
            message.Subject = contact_Subject.Value.Equals(String.Empty) ? "No subject added" : contact_Subject.Value;
            message.Body = MakeContactUsEmail();

            /* UnoEuro local client */
            var client = new SmtpClient("smtp.unoeuro.com", 25);
#if DEBUG
            client = new SmtpClient("asmtp.unoeuro.com",8080)
                {
                    Credentials = new NetworkCredential("website@sharpminds.dk", "9h13kt")
                };
#endif
            client.Send(message);
            client.Dispose();
        }

        private string MakeContactUsEmail()
        {
            var body = string.Format("A website visitor has contacted us: \n\n" +
                                     "Name:    \t{0} \n" +
                                     "Phone:   \t{1} \n" +
                                     "E-mail:  \t{2} \n" +
                                     "Subject: \t{3} \n" +
                                     "Message: \t{4} \n",
                                     contact_Name.Value, contact_PhoneNumber.Value, contact_Email.Value, contact_Subject.Value, contact_Message.Value);
            return body;
        }
    }
}