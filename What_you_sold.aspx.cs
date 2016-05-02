using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class What_you_sold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User aUser = Session["currentuser"] as User;
        user_name.Text = aUser.Name;
        user_emailaddress.Text = aUser.EmailAddress;
        addtable();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("isbnsearch.aspx");
        
    }
    protected void addtable()
    {
        var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        User load_aUser = Session["currentuser"] as User;
        
        using (SqlConnection myConnection = new SqlConnection(con))
        {
            string oString = "Select * from Transactions ";
            oString += "where emailAddress=@email"; 
            SqlCommand oCmd = new SqlCommand(oString, myConnection);
            oCmd.Parameters.AddWithValue("@email", load_aUser.EmailAddress);
            myConnection.Open();
            using (SqlDataReader oReader = oCmd.ExecuteReader())
            {
                if (oReader != null)
                {
                    while (oReader.Read())
                    {
                        TableRow tRow = new TableRow();
                        table1.Rows.Add(tRow);
                            
                            string isbn = oReader["isbnNumber"].ToString();
                            TableCell tCell1 = new TableCell();
                            tCell1.Text = isbn;
                            tRow.Cells.Add(tCell1);
                            string Title = oReader["Title"].ToString();
                            TableCell tCell = new TableCell();
                            tCell.Text = Title;
                            tRow.Cells.Add(tCell);                            
                            string soldate = oReader["dateSold"].ToString();
                            TableCell tCell2 = new TableCell();
                            tCell2.Text = soldate;
                            tRow.Cells.Add(tCell2);
                            string soldPrice = oReader["soldPrice"].ToString();
                            TableCell tCell3 = new TableCell();
                            tCell3.Text = soldate;
                            tRow.Cells.Add(tCell3);
                        

                    }
                   

                }
                myConnection.Close();
            }
        }
        

    }
}