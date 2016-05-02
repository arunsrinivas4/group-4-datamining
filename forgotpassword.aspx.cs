using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            int i = 0;
            List<User> allUsersList;
            allUsersList = Application["AllUsersList"] as List<User>;
            if (!(allUsersList != null)) {
                allUsersList = new List<User>();    
            }
            for (i = 0; i < allUsersList.Count; i++)
            {
                if (allUsersList[i].EmailAddress == this.TextBox1.Text)
                {
                    sendmail(allUsersList[i]);
                    String str = "Your password has been sent to the email address in file.";
                    Response.Write("<script language=javascript>alert('" + str + "');</script>");
                    return;

                }
                else
                {
                    Response.Write("<script language=javascript> alert(' Email Doesnt Exist ');</script>");

                }

            }
           
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 0;
        List<User> allUsersList;
        allUsersList = Application["AllUsersList"] as List<User>;
        if (!(allUsersList != null))
        {
            allUsersList = new List<User>();
        }
        for (i = 0; i < allUsersList.Count; i++)
        {
            if (allUsersList[i].EmailAddress == this.TextBox1.Text)
            {
                sendmail(allUsersList[i]);
                String str = "Your password has been sent to the email address in file.";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
                return;

            }
            else
            {
                Response.Write("<script language=javascript> alert(' Email Doesnt Exist ');</script>");

            }

        }
    }
    protected void sendmail(User Load_aUser)
    {
        //User aUser = Session["currentuser"] as User;
        MailAddress from = new MailAddress("abc@gmail.com");
        MailAddress to = new MailAddress(TextBox1.Text);
        MailMessage msg = new MailMessage(from, to);
        msg.Subject = " Reset Password ";
        msg.IsBodyHtml = true;
        msg.Body = "Dear Customr, <p>Please use the following details to login.<p>Login name : " + Load_aUser.Name.ToString() + "<br>Password : " + Load_aUser.Password.ToString() + "<p>Admin<br>Books Buying site";
        // SmtpClient client = new SmtpClient("localhost");
        //client.Send(msg);
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential("abc@gmail.com", "Password");
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(msg);
    }
}