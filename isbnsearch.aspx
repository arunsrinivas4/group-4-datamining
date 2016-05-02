<%@ Page Language="C#" AutoEventWireup="true" CodeFile="isbnsearch.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .text_boxes {
        width:25%;
        font-size:26px;
        }
        .auto-style5 {
            width: 13%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%;">
     <img src="Images\Books.jpg" alt="Books" style="width:100%;height: 161px" />
    </div>
    <div style="height: 45px;background-color:cadetblue">
        <table style="width: 100%;">
            <tr class="text_boxes">
                <td style="width:23%"></td>
                <td style="font-size:26px;width:14%" >ISBN Number</td>
                <td style="width:24%">
                <asp:TextBox ID="TextBox1" runat="server" Width="389px" Height="36px"></asp:TextBox></td>
                <td style="width:47%">  <asp:Button ID="checkindex" runat="server" style="font-size:26px" Text="Check Another ISBN" OnClick="checkindex_Click"/></td>
            </tr>
          </table> 
             <div style="height: 485px; text-align:center;background-color:lightskyblue;margin-top:3px">
                 <asp:Image ID="Image1" runat="server" Height="100%" Width="453px" style="margin-left: 4px" />

           </div>
        <div style="background-color:cadetblue;margin-top:3px">
            <table>
            <tr class="text_boxes">
                <td style="width:29%"></td>
                <td class="auto-style5">Title</td>
                <td style="width:15%"><asp:TextBox ID="TextBox2" runat="server" Width="550px" Height="36px" ReadOnly="true"></asp:TextBox></td>
                <td style="width:38%"></td>
            </tr>
            <tr class="text_boxes">
                <td style="width:29%"></td>
                <td class="auto-style5">Author</td>
               <td style="width:15%"><asp:TextBox ID="TextBox3" runat="server" Width="550px" Height="36px" ReadOnly="true"></asp:TextBox></td>
               <td style="width:38%"></td> 
            </tr>
            <tr class="text_boxes">
                <td style="width:29%"></td>
                <td class="auto-style5">Buy Price</td>
               <td style="width:15%"><asp:TextBox ID="TextBox4" runat="server" Width="550px" Height="36px" ReadOnly="true"></asp:TextBox></td>
                <td style="width:38%"></td>
            </tr>           
      </table>
         <div>

             <table>
            <tr class="text_boxes">
                <td style="width:26%"></td>
                <td style="width:24%"> <asp:Button ID="Button1" runat="server" Text="Sell This book" Width="359px" style="margin-left: 167px; margin-bottom: 0px; margin-top: 0px;font-size:26px" OnClick="Button2_Click" Height="46px" /></td>
                <td style="width:25%">&nbsp;<asp:Button ID="Button4" runat="server" Text="No Thanks" Width="383px" style="margin-left: 164px; margin-bottom: 0px;font-size:26px" OnClick="Button3_Click" Height="43px" />&nbsp;</td>
                <td style="width:25%"></td>
            </tr>
             </table>
                <%--<asp:Button ID="Button2" runat="server" Text="Sell This book" Width="359px" style="margin-left: 167px; margin-bottom: 0px" OnClick="Button2_Click" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" Text="No Thanks" Width="383px" style="margin-left: 153px" OnClick="Button3_Click" />--%>
            </div>
    

    </div>
</div>
    </form>
</body>
</html>
