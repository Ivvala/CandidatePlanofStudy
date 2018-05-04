<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeacademic.aspx.cs" Inherits="CandidatePlanofStudy.homeacademic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/reset.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
       
       
        $("[id$=Txtstdsearch]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "homeacademic.aspx/students",
                    type: "POST",
                    dataType: "json",
                    data: "{ 'pre':'" + request.term + "'}",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        response(data.d);
                    },
                    error: function (data) {
                        alert(data.responseText);
                    }
                });
            }


        });


      
    });      
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
		<div style="padding:20px 0 0 23px; font-size:22px;">View Student</div>
	</div>
  
 <div class="content-in">
    
        <br />
              <asp:DropDownList ID="DropDownsemister" runat="server" AutoPostBack="True" Enabled="False" Visible="False">
                  <asp:ListItem>Spring 2017</asp:ListItem>
                  <asp:ListItem>Fall 2017</asp:ListItem>
                  <asp:ListItem>Summer 2017</asp:ListItem>
              </asp:DropDownList>
            &nbsp;<asp:DropDownList ID="DropDownListmajor" runat="server" AutoPostBack="True" DataSourceID="SqlDatamajor" DataTextField="majorname" DataValueField="majorname" OnSelectedIndexChanged="DropDownListmajor_SelectedIndexChanged" Enabled="False" Visible="False">
              </asp:DropDownList>
            <span style="margin:0px 20px;">
                <asp:TextBox ID="Txtstdsearch" runat="server" placeholder="Enter student id or name"></asp:TextBox>
              <asp:Button ID="btnstdid" runat="server" OnClick="btnstdid_Click" Text="Search" />
            </span>
              <br />
              <asp:SqlDataSource ID="SqlDatamajor" runat="server" ConnectionString="<%$ ConnectionStrings:coursecatalogdb %>" SelectCommand="SELECT [majorname] FROM [major]"></asp:SqlDataSource>
              <br />
              <asp:SqlDataSource ID="SqlDataSourcemajor" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT [Studentid], [firstname], [fullname], [lastname], [email], [major], [facultyadvisor], [semister], [grade], [address], [yearofjoining] FROM [student] WHERE (([semister] = @semister) AND ([major] = @major))">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownsemister" Name="semister" PropertyName="SelectedValue" Type="String" />
                      <asp:ControlParameter ControlID="DropDownListmajor" Name="major" PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <br />
     <asp:SqlDataSource ID="SqlDatastdtxtsearch" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT Studentid, password, firstname, lastname, fullname, email, major, facultyadvisor, semister, grade, address, yearofjoining FROM student WHERE (firstname = @firstname) OR (lastname = @lastname) OR (email = @email) OR (convert(varchar,Studentid) = @Studentid)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="Txtstdsearch" Name="firstname" PropertyName="Text" />
                      <asp:ControlParameter ControlID="Txtstdsearch" Name="lastname" PropertyName="Text" />
                      <asp:ControlParameter ControlID="Txtstdsearch" Name="email" PropertyName="Text" />
                      <asp:ControlParameter ControlID="Txtstdsearch" Name="Studentid" PropertyName="Text" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <br />
     <div style="max-width:850px;overflow:auto;">
              <asp:GridView ID="GridViewsemmajor" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDataSourcemajor" OnSelectedIndexChanged="GridViewsemmajor_SelectedIndexChanged" Enabled="False">
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" HeaderText="cps"  SelectText="VIEW CPS"/>
                      <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                      <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                      <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                      <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                      <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                      <asp:BoundField DataField="facultyadvisor" HeaderText="facultyadvisor" SortExpression="facultyadvisor" />
                      <asp:BoundField DataField="semister" HeaderText="semister" SortExpression="semister" />
                      
                      <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                      <asp:BoundField DataField="yearofjoining" HeaderText="yearofjoining" SortExpression="yearofjoining" />
                  </Columns>
              </asp:GridView>
            
              <br />
        <asp:GridView ID="GridViewstdtxtsearch" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDatastdtxtsearch" OnSelectedIndexChanged="GridViewstdtxtsearch_SelectedIndexChanged">
            <Columns>
                 <asp:CommandField ShowSelectButton="True" HeaderText="cps"  SelectText="VIEW CPS"/>
                <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="facultyadvisor" HeaderText="facultyadvisor" SortExpression="facultyadvisor" />
                <asp:BoundField DataField="semister" HeaderText="semister" SortExpression="semister" />
               
            </Columns>
        </asp:GridView>
            </div>
              <br />
              <asp:Label ID="lblcpscheck" runat="server" Text="Label" Visible="False"></asp:Label>
              <br />
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
