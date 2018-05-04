<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logincps.aspx.cs" Inherits="CandidatePlanofStudy.logincps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CPS</title>
<link href="css/reset.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/login.css"/>
</head>
<body>
<form id="form1" runat="server">
    <div class="hdrWrapper">
	<div class="header clearfix">
		<img src="images/uhcl.jpg" width="100px" height="100px" />
		
		<div class="hdrLft">
			<a href=""><img src="images/cpslogo.png" width="220"/></a>
		</div>

	</div>
	<div class="navWrapper clearfix">
		<div class="nav clearfix">
			<div class="menu2">
				<ul class="menu">
					<li> <asp:LinkButton ID="linkhome" runat="server" PostBackUrl="~/Homecps.aspx">Home</asp:LinkButton></li>
					<li> <asp:LinkButton ID="linkcontactus" runat="server" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton></li>
					<li> <asp:LinkButton ID="linklogin" runat="server" PostBackUrl="~/logincps.aspx">Login</asp:LinkButton></li>
					
				</ul>
			</div>
		</div>
	</div>
</div>

  <div class="clearfix">
	<div class="loginWrapper">	

<!-- HEADER START HERE-->
		<div class="header1 clearfix">
			<div class="hdrLft1">
                Login
			</div>
			<div class="hdrRgt1 clearfix">
				
		    </div>
		</div>
<!-- HEADER END HERE-->	
<!-- LOGIN FORM START HERE-->	
		<div class="loginForm">		
		
			<div class="rowLabe2">   <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>:</div>
			<div class="row">    <asp:TextBox ID="txtuid" runat="server"></asp:TextBox></div>
			<div class="rowLabel">  <asp:Label ID="Label2" runat="server" Text="Password "></asp:Label>:</div>
			<div class="row">   <asp:TextBox ID="txtupass" runat="server" TextMode="Password"></asp:TextBox></div>
			
			
			<div class="row">
                  <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" class="button-link"/>
			</div>
		<div class="hr"></div>

		<div class="craetacdiv">
					<asp:LinkButton ID="linkbtnforgot" runat="server" PostBackUrl="~/forgotpass.aspx" class="forgotPassword">Forgot Password</asp:LinkButton>
 <asp:Label ID="lblmsg" runat="server" Text="msg" Visible="False"></asp:Label>	</div>	
		</div>
	</div>
<!-- LOGIN FORM END HERE-->
<!-- FOOTER INCLUDE FILE START -->
<!-- FOOTER INCLUDE FILE END -->
</div>
      
         
     <div class="footer">
	<div class="footer-inWrap clearfix">
		<div class="footer-inWrap-Lft">
			<div class="privacyPolicy">&copy; 2017 Crazy Heads</div>
		</div>
		
	</div>
</div>
      
               
  
    </form>
</body>
</html>
