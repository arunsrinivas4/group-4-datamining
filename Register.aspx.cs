using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
     
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            loaduserdata();
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpassword.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int i;
        User aUser = new User();
        
        aUser.EmailAddress = this.TextBox6.Text;
        List<User> allUsersList;
        allUsersList =  Application["AllUsersList"] as List<User>;
        
            for ( i = 0; i < allUsersList.Count; i++)
            {
                if (allUsersList[i].EmailAddress == this.TextBox6.Text) {
                    string str = "Your email adddress is already registered in our database.Please login";
                    Response.Write("<script language=javascript>alert('" + str + "');</script>");
                    break;
                }
            }

            
            if (i == allUsersList.Count) { 

                try
                 {
                     aUser.Name = this.TextBox1.Text;
                     aUser.AddressLine1 = this.TextBox2.Text;
                     aUser.AddressLine2 = this.TextBox3.Text;
                     aUser.City = this.TextBox4.Text;
                     aUser.Zip = this.TextBox5.Text;
                     aUser.State = this.DropDownList1.Text;                     
                     aUser.Password = this.TextBox8.Text;
                    //INSERTING DATA 
                     insertuserdata(aUser);
                    allUsersList.Add(aUser);
                 }
                catch(Exception ex)
                 {
                    Response.Write(ex.StackTrace);
                 }
                Application["AllUsersList"] = allUsersList;
                //Session["currentuser"] = aUser;
                
                string str = "Thank you for registering.You can now log in.";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
                ClearInputs(Page.Controls);
      
    }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int i;
        int array_count = 0;
        //User aUser = new User();
        List<User> allUsersList;
        allUsersList =  Application["AllUsersList"] as List<User>;
        //aUser.EmailAddress = this.TextBox9.Text;
        //aUser.Password = this.TextBox10.Text;
        for (i = 0; i < allUsersList.Count; i++)
        {
            if (allUsersList[i].EmailAddress == this.TextBox9.Text)
            {
                if (allUsersList[i].Password == this.TextBox10.Text)
                {

                    Session["currentuser"] = allUsersList[i];
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    string str = "Invalid Credentials.";
                    Response.Write("<script language=javascript>alert('" + str + "');</script>");
                    break;               
                }
            }
            
            array_count++;
        }
        if(array_count == allUsersList.Count)
            {
                string str = "Sorry. You are not a registered user.Please Register.";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }

    }
    private void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            else if (ctrl is DropDownList)
                ((DropDownList)ctrl).ClearSelection();

            ClearInputs(ctrl.Controls);
        }
    }
    protected void loaduserdata()
    {
        var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
         User load_aUser = new User();
        List<User> load_allUsersList =new List<User>();
       
        using (SqlConnection myConnection = new SqlConnection(con))
        {
            string oString = "Select * from Users";
            SqlCommand oCmd = new SqlCommand(oString, myConnection);
           
            myConnection.Open();
            using (SqlDataReader oReader = oCmd.ExecuteReader())
            {
                if (oReader != null)
                {
                    while (oReader.Read())
                    {
                        load_aUser.EmailAddress = oReader["Email"].ToString();
                        load_aUser.Name = oReader["Name"].ToString();
                        load_aUser.AddressLine1 = oReader["AddressLine1"].ToString();
                        load_aUser.AddressLine2 = oReader["AddressLine2"].ToString();
                        load_aUser.City = oReader["City"].ToString();
                        load_aUser.State = oReader["State"].ToString();
                        load_aUser.Zip = oReader["Zip"].ToString();
                        load_aUser.Password = oReader["Password"].ToString();
                        
                        load_allUsersList.Add(load_aUser);
                        
                        load_aUser = new User();
                        
                    }
                    Application["AllUsersList"] = load_allUsersList;
                    
                }
                myConnection.Close();
            }
        }
        

    }
    public void insertuserdata(User load_aUser)
    {
        var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        string oString = "Select * from Users ";
        SqlConnection myConnection = new SqlConnection(con);
        SqlCommand oCmd = new SqlCommand(oString, myConnection);
        try
        {
            myConnection.Open();
            SqlCommand cmd = new SqlCommand("insert into Users values(@email,@name,@AddressLine1,@AddressLine2,@city,@zip,@state,@password)", myConnection);
           
            
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = load_aUser.EmailAddress;
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = load_aUser.Name;
            cmd.Parameters.Add("@AddressLine1", SqlDbType.VarChar, 50).Value = load_aUser.AddressLine1;
            cmd.Parameters.Add("@AddressLine2", SqlDbType.VarChar, 50).Value = load_aUser.AddressLine2;
            cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = load_aUser.City;
            cmd.Parameters.Add("@zip", SqlDbType.VarChar, 50).Value = load_aUser.Zip;
            cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = load_aUser.State;
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = load_aUser.Password;
            if (cmd.ExecuteNonQuery() > 0)
            {
                string str = "Thank you for registering.You can now log in.";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
            else
            {
                //LblMsg.Text = "Sorry! Some error occured during registration!";
                string str2 = "Sorry! Some error occured during registration!";
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
            ClearInputs(Page.Controls);
        }

    }
}