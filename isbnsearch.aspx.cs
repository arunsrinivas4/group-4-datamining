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
    int i = 0;
    int book_location = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                this.TextBox1.Text = HttpContext.Current.Session["ISBN_Num"].ToString();
            }
            catch
            {

            }
            validate(this.TextBox1.Text);
            User aUser = Session["currentuser"] as User;
            if (!(aUser != null))
            {
                this.Button1.Enabled = false;
            }
            
        }
           
            
    }
    protected void validate(string isbn_input)
    {
        string str = isbn_input;
        string[] isbn = Application["ISBN Num"] as string[];
        string[] Title = Application["Title"] as string[];
        string[] Author = Application["Author"] as string[];
        string[] Price = Application["Price"] as string[];
        if (isbn.Contains(TextBox1.Text))
        {

            int i = Array.IndexOf(isbn, str);
            int book_location = i;
            this.TextBox2.Text = Title[i];
            this.TextBox3.Text = Author[i];
            this.TextBox4.Text = Price[i];
            this.Image1.ImageUrl="~/Images/"+str+".png";
        }
        else if(TextBox1.Text !="")
        {
            string str1 = "Sorry.The ISBN number you entered is not found in our database";
            Response.Write("<script language=javascript>alert('" + str1 + "');</script>");
        }
    }
    protected void checkindex_Click(object sender, EventArgs e)
    {
        
        validate(this.TextBox1.Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string[] Price = Application["Price"] as string[];
        
        User aUser = Session["currentuser"] as User;
        aUser.SoldBook[i] = new SoldBook();
        aUser.SoldBook[i].ISBNNumber = TextBox1.Text;
        aUser.SoldBook[i].Title = TextBox2.Text;
        aUser.SoldBook[i].Author = TextBox3.Text;
        aUser.SoldBook[i].SoldDate = DateTime.Now.ToString();
        aUser.SoldBook[i].Price = Price[book_location]; 
        insertbookdata(aUser);
        
     
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void insertbookdata(User load_aUser)
    {
        var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        
        SqlConnection myConnection = new SqlConnection(con);
      
        try
        {
            myConnection.Open();
            SqlCommand cmd = new SqlCommand("insert into Transactions values(@email,@isbn,@datesold,@Title,@soldPrice)", myConnection);
            
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = load_aUser.EmailAddress;
            cmd.Parameters.Add("@isbn", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@datesold", SqlDbType.VarChar, 50).Value = load_aUser.SoldBook[i].SoldDate;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar, 50).Value = load_aUser.SoldBook[i].Title;
            cmd.Parameters.Add("@soldPrice", SqlDbType.VarChar, 10).Value = load_aUser.SoldBook[i].Price;
          
            if (cmd.ExecuteNonQuery() > 0)
            {
                string str1 = "Thank you for your business. Your account will be updated after we receive the book. A confirmation email has been sent to the email address in our file.";
                Response.Write("<script language=javascript>alert('" + str1 + "');</script>");
            }
            else
            {
               
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
            
        }
        i++;
    }
}
