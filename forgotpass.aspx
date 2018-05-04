<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="CandidatePlanofStudy.forgotpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                Forgot Password
			</div>
			<div class="hdrRgt1 clearfix">
				
		    </div>
		</div>
<!-- HEADER END HERE-->	
<!-- LOGIN FORM START HERE-->	
		<div class="loginForm">		
		
			 <div class="rowLabe2">   <asp:Label ID="Label1" runat="server" Text="Email Id"></asp:Label>:</div>
			<div class="row">    <asp:TextBox ID="txtuid" runat="server"></asp:TextBox></div>
			
			<div class="rowLabel">    </div>
			<div class="row">  
                
                  <asp:Button ID="btnlogin" runat="server" Text="Submit" OnClick="btnlogin_Click" class="button-link"/>
			
			</div>
			<div class="row">
			</div>
		<div class="hr"></div>

		<div class="craetacdiv">
					<asp:LinkButton ID="linkbtnlogin" runat="server" PostBackUrl="~/logincps.aspx" class="forgotPassword">Go to Login</asp:LinkButton>
 <asp:Label ID="lblmsg" runat="server" Text="msg" Visible="False"></asp:Label>	</div>	
		</div>
	</div>
<!-- LOGIN FORM END HERE-->
<!-- FOOTER INCLUDE FILE START -->
	<div class="footer1"><span class="footerpad"> &copy; 2017 All copy rights reserved </span> </div>
<!-- FOOTER INCLUDE FILE END -->
</div>
      
         
           
             




    
           
    
    </form>
</body>
</html>
