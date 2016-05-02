<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="all" />
    <title>webuybooks</title>
    <style>
        li {
        display: inline;
        margin-right: 30px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    
         <div style="width:100%;">
     <img src="Images\Books.jpg" alt="Books" style="width:100%;height: 161px" />
    </div>
        <section>
            <nav>
                <ul>
                    <li><a href="FAQ.aspx">FAQ</a></li>
                    
                    <li id="your_account" runat="server"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Your Account</asp:LinkButton>
                        </li>
                    <li><a href="isbnsearch.aspx">ISBN</a></li>
                    <li id="what_you_sold" runat="server">
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">What You Sold</asp:LinkButton>
                        </li>
                    <li id="register" runat="server"><a href="Register.aspx">Register</a></li>
                    <li id="login" runat="server">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                    </li>
                    <li id="logout" runat="server">                        
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                    </li>
                    
                                             
                </ul>
            </nav>
        </section>
        
        <div id="tb2">
            <div id="tb2-l1">
                Worry about shipping costs? We pay for your shipping.Yes!
                <br />
                 <h3 id="tb2-h3">We have paid out millions of $$$$$$</h3>
            </div>
   
		</div>
		    
        
		<table style="background-color:#97b0ef;width:100%">
			<tr>
				<td><img src="Images\Green-Check-Mark.jpg" alt="Tick"   height="100px"/></td>
				<td>We update our prices continuously to offer the best price online </td>
				<td><img src="Images\Green-Check-Mark.jpg" alt="Tick" height="100px" /></td>
				<td><b>Low Prices:</b>We update our prices continuously to offer the best price online</td>
				<td><img src="Images\Green-Check-Mark.jpg" alt="Tick" height="100px" /></td>
				<td><b>Free Shipping:</b>We always offer Free shipping.Print a label and you're done!</td>
			</tr>
		</table>
		
    <div  style=";width:100%">
	    <div id="p1" style="width:20%;background-color:lightcoral" >
	        <img src="Images\visa.png" style="align-content:center;margin:20px;width:260px"height="76%"alt="visa">
	    </div>
	    <div id="p2" style="width:20%;background-color:lightcoral" >
	        <img src="Images\discover.png" style="align-content:center;margin:20px;width:260px"height="76%"alt="Discover">
	    </div>
	    <div id="p3" style="width:20%;background-color:lightcoral">
	        <img src="Images\master.png" style="align-content:center;margin:20px;width:260px"height="76%"alt="master" >
	    </div>
	    <div id="p4" style="width:20%;background-color:lightcoral">
	        <img src="Images\paypal.png"style="align-content:center;margin:20px;width:260px"height="76%"alt="paypal">
	    </div>
	    <div id="p5" style="width:20%;background-color:lightcoral">
	        <img src="Images\amex.png" style="align-content:center;margin:20px;width:260px"height="76%"alt="amex">
	    </div>
    </div>
        <div style=" width:100%">
                       
        </div>
    
    </form>
</body>
</html>
