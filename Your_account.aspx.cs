using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Your_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            User aUser = Session["currentuser"] as User;
            this.TextBox1.Text = aUser.Name;
            this.TextBox2.Text = aUser.AddressLine1;
            this.TextBox3.Text = aUser.AddressLine2;
            this.TextBox4.Text = aUser.City;
            this.TextBox5.Text = aUser.Zip;
            this.DropDownList1.Text = aUser.State;
            this.TextBox6.Text = aUser.EmailAddress;
            this.TextBox8.Text = aUser.Password;
            this.TextBox7.Text = aUser.Password;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        int i;
        User aUser = Session["currentuser"] as User;

        aUser.EmailAddress = this.TextBox6.Text;
        List<User> allUsersList;
        allUsersList = Application["AllUsersList"] as List<User>;
        User update_user= new User();
        for (i = 0; i < allUsersList.Count; i++)
        {
            if (allUsersList[i].Name == this.TextBox1.Text)
            {
                try
                {
                    allUsersList[i].Name = this.TextBox1.Text;
                    allUsersList[i].AddressLine1 = this.TextBox2.Text;
                    allUsersList[i].AddressLine2 = this.TextBox3.Text;
                    allUsersList[i].City = this.TextBox4.Text;
                    allUsersList[i].Zip = this.TextBox5.Text;
                    allUsersList[i].State = this.DropDownList1.Text;
                    allUsersList[i].Password = this.TextBox8.Text;
                    update_data(allUsersList[i]);
                    //update_user = new User();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.StackTrace);
                }
                Application["AllUsersList"] = allUsersList;
                Session["currentuser"] = allUsersList[i];
                string str = "Your Account Details updated successfully";
                //Response.Write("<script language=javascript>alert('" + str + "');</script>");
                //Response.Redirect("Default.aspx");
            }
        }
    }
    protected void update_data(User load_aUser)
    {

        var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
       
        SqlConnection myConnection = new SqlConnection(con);
       
        try
        {
            
            myConnection.Open();
            SqlCommand cmd = new SqlCommand("update Users set AddressLine1=@AddressLine1,AddressLine2=@AddressLine2,City=@city,Zip=@zip,State=@state,Password=@password where Name= @name", myConnection);
            
           
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = load_aUser.Name;
            cmd.Parameters.Add("@AddressLine1", SqlDbType.VarChar, 50).Value = load_aUser.AddressLine1;
            cmd.Parameters.Add("@AddressLine2", SqlDbType.VarChar, 50).Value = load_aUser.AddressLine2;
            cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = load_aUser.City;
            cmd.Parameters.Add("@zip", SqlDbType.VarChar, 50).Value = load_aUser.Zip;
            cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = load_aUser.State;
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = load_aUser.Password;
            if (cmd.ExecuteNonQuery() > 0)
            {
                string str = "Your Account Details updated successfully";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
            else
            {
               
                string str2 = "Sorry! Some error occured during Updation!";
                Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
            }
        }
        catch (Exception ex)
        {
            string str2;
            str2 = "Error --> " + ex.Message;
        }
        finally
        {
            myConnection.Close();
      
        }
    }
}