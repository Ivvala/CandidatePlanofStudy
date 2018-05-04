<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="CandidatePlanofStudy.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>CPS</title>
<link href="css/reset.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
.fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
.person{
    margin:20px;
    color:#000;
    font-size:14px;
    border:1px solid #3B5998;
    padding:10px;
    border-radius:5px;
    display:inline-block;
    width:100%;
}
.person h2{
    color:#3B5998;
}

</style>
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
					<li><asp:LinkButton ID="linkhome" runat="server" PostBackUrl="~/Homecps.aspx">Home</asp:LinkButton></li>
					<li> <asp:LinkButton ID="linkcontactus" runat="server" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton></li>
					<li> <asp:LinkButton ID="linklogin" runat="server" PostBackUrl="~/logincps.aspx">Login</asp:LinkButton></li>
					
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="contentWrapper clearfix">
	<div class="hdr clearfix">
		<div style="padding:20px 0 0 23px; font-size:22px;">Contact Us</div>
	</div>
	

	<div class="content-in">

		<div style="margin:5px 0 0 0;">
			<div class="featuredRow clearfix" style="border-top:none;">
				<div class="featureWrapper">
					<div style="padding:30px;">
						<h2 style="color:#0d8300">Crazy Heads</h2>
						<div style="text-align:center;">
                            <div class="person">
                            <h2>Ramya Kalluri</h2>
                            <p>Phone: 281-965-6307</p>
                            <p>Mail: kalluriR4988@uhcl.edu</p>
                            </div>
                             <div class="person">
                            <h2>SriRamya Ivvala</h2>
                            <p>Phone: 832-946-5087</p>
                            <p>Mail:ivvalaS8433@uhcl.edu</p>
                            </div>
                             <div class="person">
                            <h2>Narmada Kola</h2>
                            <p>Phone: 650-861-8561</p>
                            <p>Mail: kolaN3336@uhcl.edu</p>
                            </div>
						</div>
                       
					</div>
				</div>
				
			</div>
			
			
		</div>
		
	</div>
	</div>
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
