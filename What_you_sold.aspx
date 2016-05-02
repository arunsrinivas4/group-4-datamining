<%@ Page Language="C#" AutoEventWireup="true" CodeFile="What_you_sold.aspx.cs" Inherits="What_you_sold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Books Buying Site</title>
    </head>
    <body>
        <form id="form1" runat="server">
    <div style="width:100%; float: left;">
     <img src="Images/Books.jpg" alt="Books" style="width:100%;height: 161px" />
    </div>
            <br />
            <div>
                <div style="width:50%;float:left">
                    <asp:Label ID="Label1" runat="server" style="font-size:26px;color:blue; ">User Name:</asp:Label>  
                    <asp:Label ID="user_name" runat="server" Height="100%" Text="Label" style="font-size:26px;color:deepskyblue" ></asp:Label>
                </div>
                <div style="width:50%;float:right">
                     <asp:Label ID="Label2" runat="server" style="font-size:26px;color:blue; ">User Email Address:</asp:Label>  
                    <asp:Label ID="user_emailaddress" runat="server" Height="100%" Text="Label" style="font-size:26px;color:deepskyblue" ></asp:Label>
                </div>
            </div>
            <div style ="width:100%;height:100%;text-align:center; vertical-align:middle;font-size:16px">
          <asp:Table runat="server" id="table1" BorderStyle="Solid" CellPadding="6" CellSpacing="3"  Width="100%" BackColor="AliceBlue" >
              <asp:TableHeaderRow BackColor="lightblue">
                  <asp:TableHeaderCell>ISBN Number</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Title</asp:TableHeaderCell>
                  <asp:TableHeaderCell>DateSold</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Sold Price</asp:TableHeaderCell>
              </asp:TableHeaderRow>
              <asp:TableRow>
                  <asp:TableCell></asp:TableCell>
              </asp:TableRow>
          </asp:Table>
                </div>
   
             <table>
            <tr class="text_boxes">
                <td style="width:26%"></td>
                <td style="width:24%"> <asp:Button ID="Button1" runat="server" Text="Goto Main Page" Width="359px" style="margin-left: 167px; margin-bottom: 0px; margin-top: 0px;font-size:26px"  Height="46px" OnClick="Button1_Click" /></td>
                <td style="width:25%">&nbsp;<asp:Button ID="Button4" runat="server" Text="Sell Another Book" Width="383px" style="margin-left: 164px; margin-bottom: 0px;font-size:26px"  Height="43px" OnClick="Button4_Click" />&nbsp;</td>
                <td style="width:25%"></td>
            </tr>
             </table>

        </form>
    </body>
    </html>