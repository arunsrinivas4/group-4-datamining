using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        User aUser = Session["currentuser"] as User;
        if (aUser != null)
        {
            this.login.Visible = false;
            this.register.Visible = false;
            this.Label1.Text = aUser.Name + " " + "logged in";
            this.LinkButton4.Enabled = true;
            this.LinkButton3.Enabled = true;

        }
        else
        {
            this.logout.Visible = false;
            this.LinkButton4.Enabled = false;
            this.LinkButton3.Enabled = false;

        }

    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Register.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Your_account.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("What_you_sold.aspx");
    }
    
}