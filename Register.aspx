<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>webuybooks</title>
    <style>
        .text_box {
        margin-bottom:10px;
        }
        .req {
        color:red
        }
        font {
        color:red;
        }
        
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%;">
     <img src="Images/Books.jpg" alt="Books" style="width:100%;height: 161px" />
    </div>
      <div><asp:ValidationSummary ID="validationsumary1" ValidationGroup="form" ShowMessageBox="true" ShowSummary="false" runat="server" /></div>
        <div style="width:100%">
             <div id="div1"style="width:58%; float:left; height: 367px;background-color:lightblue;border-bottom-width:1px;border-bottom-color:black;border-style:inset">
                    <p style="font-size:26px;color:red;font-weight:bold">Personal Information</p>
                    <p style="width: 100%"> Tell us a little about yourself.Thus information is only used so we can pay you,provide a free shipping label, and communicate with you</p>
                    <table>
                        <tr>
                          <td>  <asp:Label ID="Label1" runat="server" Text=" Your Name<font>*</font>" ></asp:Label></td>
                          <td><asp:TextBox ID="TextBox1" runat="server"  Width="280px"></asp:TextBox></td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="form"  Display="None" ControlToValidate="TextBox1" ErrorMessage="Your Name is required field"></asp:RequiredFieldValidator>
                          </td>  
                        </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Address Line 1<font>*</font>"></asp:Label>
                        </td>
                        <td style="float:left"">
                            <asp:TextBox ID="TextBox2" runat="server"  Width="340px"></asp:TextBox>
                        </td>
                        <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox2" ErrorMessage="Address Line 1 is required field"></asp:RequiredFieldValidator>
                          </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Address Line 2"></asp:Label>
                        </td>
                        <td style="float:left"">
                            <asp:TextBox ID="TextBox3" runat="server"  Width="340px"></asp:TextBox>
                        </td>

                    </tr>
                   
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="City<font>*</font>"></asp:Label>                            
                        </td>
                        <td style="float:left"">
                            <asp:TextBox ID="TextBox4" runat="server"  Width="280px"></asp:TextBox>
                        </td>
                         <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox4" ErrorMessage="City is required field"></asp:RequiredFieldValidator>
                          </td>
                    </tr>
                   
                     <tr>
                        <td>
                             <asp:Label ID="Label5" runat="server" Text="Zip<font>*</font>"></asp:Label>                         
                        </td>
                        <td style="float:left"">
                            <asp:TextBox ID="TextBox5" runat="server"  Width="280px"></asp:TextBox>
                        </td>
                        <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" ControlToValidate="TextBox5" ValidationGroup="form" ErrorMessage="Zip is required field"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None" ControlToValidate="TextBox5" ValidationGroup="form" ErrorMessage="Zip should be in valid format" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                   
                      <tr>
                        <td>
                              <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>                      
                        </td>
                        <td style="float:left"">
                             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Width="70px">
                             <asp:ListItem>AL</asp:ListItem>
                             <asp:ListItem>AK</asp:ListItem>
                             <asp:ListItem>AZ</asp:ListItem>
                             <asp:ListItem>AR</asp:ListItem>
                             <asp:ListItem>AR</asp:ListItem>
                             <asp:ListItem>CA</asp:ListItem>
                             <asp:ListItem>CO</asp:ListItem>
                             <asp:ListItem>CT</asp:ListItem>
                             <asp:ListItem>DE</asp:ListItem>
                             <asp:ListItem>FL</asp:ListItem>
                             <asp:ListItem>GA</asp:ListItem>
                             <asp:ListItem>HI</asp:ListItem>
                             <asp:ListItem>ID</asp:ListItem>
                             <asp:ListItem>IL</asp:ListItem>
                             <asp:ListItem>IN</asp:ListItem>
                             <asp:ListItem>IA</asp:ListItem>
                             <asp:ListItem>KS</asp:ListItem>
                             <asp:ListItem>KY</asp:ListItem>
                             <asp:ListItem>LA</asp:ListItem>
                             <asp:ListItem>ME</asp:ListItem>
                             <asp:ListItem>MD</asp:ListItem>
                             <asp:ListItem>MA</asp:ListItem>
                             <asp:ListItem>MI</asp:ListItem>
                             <asp:ListItem>MN</asp:ListItem>
                             <asp:ListItem>MS</asp:ListItem>
                             <asp:ListItem>MO</asp:ListItem>
                             <asp:ListItem>MT</asp:ListItem>
                             <asp:ListItem>NE</asp:ListItem>
                             <asp:ListItem>NV</asp:ListItem>
                             <asp:ListItem>NH</asp:ListItem>
                             <asp:ListItem>NJ</asp:ListItem>
                             <asp:ListItem>NM</asp:ListItem>
                             <asp:ListItem>NY</asp:ListItem>
                             <asp:ListItem>NC</asp:ListItem>
                             <asp:ListItem>ND</asp:ListItem>
                             <asp:ListItem>OH</asp:ListItem>
                             <asp:ListItem>OK</asp:ListItem>
                             <asp:ListItem>OR</asp:ListItem>
                             <asp:ListItem>PA</asp:ListItem>
                             <asp:ListItem>RI</asp:ListItem>
                             <asp:ListItem>SC</asp:ListItem>
                             <asp:ListItem>SD</asp:ListItem>
                             <asp:ListItem>TN</asp:ListItem>
                             <asp:ListItem>TX</asp:ListItem>
                             <asp:ListItem>UT</asp:ListItem>
                             <asp:ListItem>VT</asp:ListItem>
                             <asp:ListItem>VA</asp:ListItem>
                             <asp:ListItem>WA</asp:ListItem>
                             <asp:ListItem>WV</asp:ListItem>
                             <asp:ListItem>WI</asp:ListItem>
                             <asp:ListItem>WY</asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                 
                        </table>
            </div>                  
             <div class="text_box" style="width:41%; float:left;background-color:burlywood;padding-bottom:10px"> 
                    <div style="width: 321px;color:blue;font-size:26px"> Already Have an Account?</div>
                    <div style="color:blue;font-size:20px;margin-bottom:10px">Login</div>
                 <table>
                     <tr>
                         <td><asp:Label ID="Label10" runat="server" Text="Email Address<font>*</font>"></asp:Label></td>
                         <td><asp:TextBox ID="TextBox9" runat="server"  Width="280px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td><asp:Label ID="Label11" runat="server" Text="Password<font>*</font>"></asp:Label></td>
                         <td><asp:TextBox ID="TextBox10" runat="server"  TextMode="Password" Width="280px"></asp:TextBox></td>
                     </tr>
                 </table>
                   
                    <asp:Button ID="Button3" runat="server" style="margin-left: 30px;margin-top:13px;font-size:20px" Text="login" Width="150px" Height="35px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" style="margin-left: 60px;margin-top:13px;font-size:20px" Text="Forgot Password" Width="189px" OnClick="Button4_Click" Height="33px" />
             </div>
    </div>
        <div id="id2" style="border-bottom: 1px inset black; width:58%; float:left; height: 192px; background-color:lightblue; border-left-style: inset; border-right-style: inset; border-top-style: inset;">
                <div style="font-size:24px;color:blue;margin-bottom:10px">Login Information</div>
            <table>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Email Address<font>*</font>"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox6" runat="server"  Width="280px"></asp:TextBox></td>
                    <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox6" ErrorMessage="Email Address is required field"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox6"  ErrorMessage="Email Address should be in valid format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label8" runat="server" Text="Password<font>*</font>"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="280px"></asp:TextBox></td>
                     <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox7"   ErrorMessage="Password is required field" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label9" runat="server" Text="Confirm Password<font>*</font>"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Width="280px"></asp:TextBox></td>
                    <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="None" ValidationGroup="form" ControlToValidate="TextBox8" ErrorMessage="Confirm Password is required field"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="None" ControlToValidate="TextBox8" ValidationGroup="form" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
                    </td>         
                    <td>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="form" Display="None"  ControlToCompare="TextBox8"  ErrorMessage="Password and confirm password did not match" ControlToValidate="TextBox7" ></asp:CompareValidator>
                    </td>
                </tr>
            </table>   
            
        </div>
        <div id="id3" style="width:58%;float:left; height: 150px;border-bottom-width:1px;background-color:lightblue;border-bottom-color:black;border-style:inset">
            <span style="color:black;font-size:22px">Pay me by</span>
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="rbtLstRating" runat="server" 
                RepeatDirection="Horizontal" RepeatLayout="Table" Width="287px" Height="44px" Font-Size="20px" >
                <asp:ListItem Text="check" Value="check" Selected="True" ></asp:ListItem>
                <asp:ListItem Text="Paypal" Value="Paypal"></asp:ListItem>
                </asp:RadioButtonList> 
                <asp:Button ID="Button1" runat="server" style="margin-left: 130px;margin-top:0px; color:red;font-size:20px" Text="Goto Main Page" Width="191px" Height="36px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" ValidationGroup="form" style="margin-left: 137px; margin-top:0px; color:red;font-size:20px" Text="Complete Registration" Width="234px" Height="35px" OnClick="Button2_Click"  />
                
            </div>                     
        </div>
    </form>
</body>
</html>
