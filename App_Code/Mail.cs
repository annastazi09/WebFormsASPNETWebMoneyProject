using System;
using System.Data;
using System.Configuration;
using System.Text;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Net.Mail;
using System.Web.Configuration;
using System.Net.Configuration;

/// <summary>
/// Summary description for Mail
/// </summary>
public class Mail
{
	public Mail()
	{
		
	}
    
    public static bool SendMail(string fromAddress, string toAddress, string subject, string messageStr)
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration(
            HttpContext.Current.Request.ApplicationPath);

        MailSettingsSectionGroup settings = 
            (MailSettingsSectionGroup)config.GetSectionGroup("system.net/mailsettings");

        MailAddress from;
        if (settings.Smtp.From != null)
            from = new MailAddress(settings.Smtp.From);
        else
            from = new MailAddress(fromAddress);

        MailMessage message = new MailMessage();
        message.From = from;

        if (!toAddress.Contains(";"))
            message.To.Add(new MailAddress(toAddress));
        else
        { 
            foreach(string toAdr in toAddress.Split(new string[] {";"}, 
                StringSplitOptions.RemoveEmptyEntries))
            {
                if (!String.IsNullOrEmpty(toAdr))
                    message.To.Add(new MailAddress(toAdr));
            }
        }

        message.Subject = subject;
        message.Body = messageStr;
        message.BodyEncoding = Encoding.GetEncoding("KOI8-R");
        message.SubjectEncoding = Encoding.GetEncoding("KOI8-R");
        message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient();
        NetworkCredential credo = new NetworkCredential(settings.Smtp.Network.UserName,
            settings.Smtp.Network.Password);
        client.Host = settings.Smtp.Network.Host;
        client.Port = 25;

        if (settings.Smtp.Network.UserName != string.Empty &&
            settings.Smtp.Network.Password != string.Empty)
            client.Credentials = credo;
        else
            client.Credentials = CredentialCache.DefaultNetworkCredentials;

        try
        {
            client.Send(message);
            return true;
        }
        catch(Exception e)
        {
            string fileName = HttpContext.Current.Server.MapPath(
                "~/App_Data/Txt") + "errorSendMail.txt";

            string text = "Message=" + e.Message + " InnerException=" + e.InnerException +
                " Source=" + e.Source + " StackTrace=" + e.StackTrace + " TargetSite=" +
                e.TargetSite + " HelpLink=" + e.HelpLink;

            try
            {
                System.IO.File.WriteAllLines(fileName, new string[1] { text });
            }
            catch
            { 
                System.IO.File.WriteAllLines(fileName, new string[1] { text });
                return false;
            }
            return true;
        }
    }
}
