<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewfaculty.aspx.cs" Inherits="CandidatePlanofStudy.viewfaculty" %>

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
       
       
        $("[id$=TextBox1]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "viewfaculty.aspx/faculty",
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
		<div style="padding:20px 0 0 23px; font-size:22px;">View Faculty</div>
	</div>
  
 <div class="content-in">
    
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter faculty id or fname"></asp:TextBox>
    
        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
        <span style="margin:0px 20px;"></span>
    
        <asp:DropDownList ID="DropDownListmajor" Visible="false" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcemajorddl" DataTextField="majorname" DataValueField="majorname" OnSelectedIndexChanged="DropDownListmajor_SelectedIndexChanged" Enabled="False">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcemajorddl" runat="server" ConnectionString="<%$ ConnectionStrings:coursecatalogdb %>" SelectCommand="SELECT [majorname] FROM [major]"></asp:SqlDataSource>
        
     
     <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourcemajorgrid" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT [fid], [fname], [email], [major] FROM [faculty] WHERE ([major] = @major)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListmajor" Name="major" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcefaculty" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT fid,fname,email,major FROM [faculty] WHERE ( (convert(varchar,[fid]) = @fid) OR ([fname] = @fname))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="fid" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="fname" PropertyName="Text" ConvertEmptyStringToNull="False" />
            </SelectParameters>
        </asp:SqlDataSource>
      <div style="max-width:850px;overflow:auto;">
        <asp:GridView ID="GridViewfaculty" class="tbl1 srchresultssummary" runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSourcefaculty" OnSelectedIndexChanged="GridViewfaculty_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" HeaderText="Select"  SelectText="SHOW STUDENTS"/>
                <asp:BoundField DataField="fid" HeaderText="fid" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
            </Columns>
        </asp:GridView>
    
        <br />
        <asp:GridView ID="GridViewmajor" class="tbl1 srchresultssummary" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSourcemajorgrid" OnSelectedIndexChanged="GridViewmajor_SelectedIndexChanged" Enabled="False">
            <Columns>
                 <asp:CommandField ShowSelectButton="True" HeaderText="Select"  SelectText="SHOW STUDENTS"/>
                <asp:BoundField DataField="fid" HeaderText="fid" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
            </Columns>
        </asp:GridView>
    
        <br />
        <asp:SqlDataSource ID="SqlDataSourcefacstd" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT [Studentid], [firstname], [lastname], [fullname], [email], [major], [facultyadvisor], [semister], [address], [yearofjoining] FROM [student] WHERE ([facultyadvisor] = @facultyadvisor)">
            <SelectParameters>
                <asp:SessionParameter Name="facultyadvisor" SessionField="fname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridViewfacstd" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDataSourcefacstd" OnSelectedIndexChanged="GridViewfacstd_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" HeaderText="Select"  SelectText="VIEW CPS"/>
                <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="facultyadvisor" HeaderText="facultyadvisor" SortExpression="facultyadvisor" />
                <asp:BoundField DataField="semister" HeaderText="semister" SortExpression="semister" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="yearofjoining" HeaderText="yearofjoining" SortExpression="yearofjoining" />
            </Columns>
        </asp:GridView>
          <br />
          <asp:Label ID="lblcpscheck" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
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
