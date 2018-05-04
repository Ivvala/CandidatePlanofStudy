<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generatedraftcps2.aspx.cs" Inherits="CandidatePlanofStudy.generatedraftcps2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/reset.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $( function() {
    $( "#accordion" ).accordion({
        collapsible: true,
        active: false
    });
  } );
  </script>
</head>
<body>
  <form id="form1" runat="server">
     <div class="hdrWrapper">
	<div class="header clearfix">
		<img src="images/uhcl.jpg" width="100px" height="100px" />
		
		<div class="hdrLft">
			<a href=""><img src="images/cpslogo.png" width="220"/></a>
		</div>
        <div class="hdrRgt">
			<div class="menu1">
				<ul>
					<li>  <asp:Label ID="lblloginmsg" runat="server" Visible="False"></asp:Label></li>
                     <li> <asp:LinkButton ID="linklogout" runat="server" OnClick="linklogout_Click">Logout</asp:LinkButton></li>
				</ul>
				<p></p>
			</div>
		</div>

	</div>
	<div class="navWrapper clearfix">
		<div class="nav clearfix">
			<div class="menu2">
				<ul class="menu">
					
					<li><asp:LinkButton ID="linkbtnstdcps" runat="server" PostBackUrl="~/studentcps.aspx">Generate Draft</asp:LinkButton> </li>    
  <li><asp:LinkButton ID="linkviewstudent" runat="server" PostBackUrl="~/homeacademic.aspx">View Student</asp:LinkButton></li>
  <li><asp:LinkButton ID="linkviewfaculty" runat="server" PostBackUrl="~/viewfaculty.aspx">View Faculty</asp:LinkButton></li>
 
  <li><asp:LinkButton ID="linkbtnauditdraft" runat="server">Audit Draft</asp:LinkButton></li>
 <li> <asp:LinkButton ID="linkarchieveaudit" runat="server">Archive Audit</asp:LinkButton></li>
 <li> <asp:LinkButton ID="linkcatalogue" runat="server" PostBackUrl="~/newcatalogue.aspx">New Catalogue</asp:LinkButton></li>

				</ul>
			</div>
		</div>
	</div>
</div>
    <div>
          <div class="contentWrapper clearfix">
	<div class="hdr clearfix">
		<div style="padding:20px 0 0 23px; font-size:22px;">Generate Draft </div>
	</div>
  
 <div class="content-in">
    
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblrubric" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="CPS " style="font-size:18px;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="cpsyear" style="font-size:18px;" runat="server" Text="CPS "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        <br />
        <br />
     <div class="stdd">
        <asp:Label ID="Label89" runat="server" Text="Student Name :"></asp:Label>
      <asp:Label ID="cpsstuname" runat="server" Text="Label"></asp:Label>
       <br /><br />
   <asp:Label ID="Label88" runat="server" Text="Student Id :"></asp:Label>
        <asp:Label ID="cpsstdid" runat="server"></asp:Label>
       
     <br /><br />
         <asp:Label ID="Label2" runat="server" Text="Major :"></asp:Label>
       <asp:Label ID="cpsmajor" runat="server"></asp:Label>
     <br />
         </div>
        <asp:Label ID="lbl" runat="server" Text="Label" Visible="false"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsfaculty" runat="server" Text="Label" Visible="false"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSourcecps" runat="server" ConnectionString="<%$ ConnectionStrings:CandidateplanofstudyConnectionString %>" SelectCommand="SELECT coursename FROM catalog WHERE (CENG = @CENG) OR (CINF = @CINF) AND (CSCI = @CSCI) OR (EMGT = @EMGT) OR (SENG = @SENG) OR (SWEN = @SWEN)">
            <SelectParameters>
                <asp:Parameter DefaultValue="F" Name="CENG" />
                <asp:Parameter DefaultValue="F" Name="CINF" />
                <asp:Parameter DefaultValue="F" Name="CSCI" />
                <asp:Parameter DefaultValue="F" Name="EMGT" />
                <asp:Parameter DefaultValue="F" Name="SENG" />
                <asp:Parameter DefaultValue="F" Name="SWEN" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />

     <div id="accordion">
  <h3>Foundation Course Section</h3>
         <div>
        <asp:Label ID="Label24" runat="server" Text="REQUIRED FOUNDATION COURSES" Visible="false"></asp:Label>
        <br />
        <asp:Label ID="Label26" runat="server" Text="DEGREE REQUIREMENTS - TOTAL:36 hours" Visible="false"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridViewfound" runat="server" class="tbl1 srchresultssummary tt" >
             <Columns >
                         <asp:TemplateField >
            <ItemTemplate>
                <asp:CheckBox ID="chkRow" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
                 </Columns>
        </asp:GridView>
        <br />
                   <asp:Button ID="Button1" runat="server" Text="Save" OnClick="btnsave_Click" />
               <input type="reset" value="Cancel" />
        <br />
        <br />
        <br />
    </div>
          <h3>Core Requirements</h3>
  <div>
        <asp:Label ID="Label1" runat="server" Text="Core Requirements" Visible="false"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label87" runat="server" Text="Faculty Initial changes" Visible="false"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridViewcore" runat="server" class="tbl1 srchresultssummary">
        </asp:GridView>
        <br />
        <br />
        <br />

    
        <br />
    </div>
         </div><!--accodian-->
    </div>
      <br />
      <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
      <br />
      <asp:Label ID="lblmsg" runat="server" Text="Label" Visible="False"></asp:Label>
               </div>

        <div class="footer">
	<div class="footer-inWrap clearfix">
		<div class="footer-inWrap-Lft">
			<div class="privacyPolicy">&copy; 2017 Crazy Heads</div>
		</div>
		
	</div>
</div>
    </div>
    </form>
</body>
</html>
