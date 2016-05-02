<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>webuybooks</title>
    <style>
    l1{
    font-size:30px;
    }
    #button1{
    font-size:20px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;">
         <img src="Images\Books.jpg" alt="Books" style="width:100%;height: 161px" />
        </div>
       <p style="font-size:34px;font-weight:bold;color:blue">Password Recovery</p>
         <div style="width: 1145px;margin-top:20px; height: 65px;"> &nbsp;
                       <span style="font-size:30px;">Email Address</span>
                       <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" style="margin-left: 106px"  Width="390px" Height="34px"></asp:TextBox>
         &nbsp;
            <asp:Button ID="Button1" runat="server"  style="margin-left: 85px;font-size:24px"  UseSubmitBehavior="false" Text="Recover Password" Width="282px" Height="44px" OnClick="Button1_Click" />
         </div>
        <div style="font-size:26px;margin-left: 335px; width: 316px;">
             <asp:HyperLink id="hyperlink1" 
                  NavigateUrl="Default.aspx"
                  Text="Go Back to Main Page"
                  runat="server"/> 
        </div>
    </form>
</body>

</html>
