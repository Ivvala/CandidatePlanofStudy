<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcps.aspx.cs" Inherits="CandidatePlanofStudy.viewcps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/reset.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
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
  <li><asp:LinkButton ID="linkcps" runat="server" PostBackUrl="~/viewcps.aspx">View Cps</asp:LinkButton></li>
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
		<div style="padding:20px 0 0 23px; font-size:22px;">View CPS</div>
	</div>
  
 <div class="content-in">
    
        <asp:SqlDataSource ID="SqlDataSourcestudents" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" DeleteCommand="DELETE FROM [student] WHERE [Studentid] = @original_Studentid AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([fullname] = @original_fullname) OR ([fullname] IS NULL AND @original_fullname IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([major] = @original_major) OR ([major] IS NULL AND @original_major IS NULL)) AND (([facultyadvisor] = @original_facultyadvisor) OR ([facultyadvisor] IS NULL AND @original_facultyadvisor IS NULL)) AND (([semister] = @original_semister) OR ([semister] IS NULL AND @original_semister IS NULL)) AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([yearofjoining] = @original_yearofjoining) OR ([yearofjoining] IS NULL AND @original_yearofjoining IS NULL))" InsertCommand="INSERT INTO [student] ([Studentid], [password], [firstname], [lastname], [fullname], [email], [major], [facultyadvisor], [semister], [grade], [address], [yearofjoining]) VALUES (@Studentid, @password, @firstname, @lastname, @fullname, @email, @major, @facultyadvisor, @semister, @grade, @address, @yearofjoining)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [password] = @password, [firstname] = @firstname, [lastname] = @lastname, [fullname] = @fullname, [email] = @email, [major] = @major, [facultyadvisor] = @facultyadvisor, [semister] = @semister, [grade] = @grade, [address] = @address, [yearofjoining] = @yearofjoining WHERE [Studentid] = @original_Studentid AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([fullname] = @original_fullname) OR ([fullname] IS NULL AND @original_fullname IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([major] = @original_major) OR ([major] IS NULL AND @original_major IS NULL)) AND (([facultyadvisor] = @original_facultyadvisor) OR ([facultyadvisor] IS NULL AND @original_facultyadvisor IS NULL)) AND (([semister] = @original_semister) OR ([semister] IS NULL AND @original_semister IS NULL)) AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([yearofjoining] = @original_yearofjoining) OR ([yearofjoining] IS NULL AND @original_yearofjoining IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Studentid" Type="Int32" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_firstname" Type="String" />
                <asp:Parameter Name="original_lastname" Type="String" />
                <asp:Parameter Name="original_fullname" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_facultyadvisor" Type="String" />
                <asp:Parameter Name="original_semister" Type="String" />
                <asp:Parameter Name="original_grade" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_yearofjoining" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Studentid" Type="Int32" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="facultyadvisor" Type="String" />
                <asp:Parameter Name="semister" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="yearofjoining" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="facultyadvisor" Type="String" />
                <asp:Parameter Name="semister" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="yearofjoining" Type="String" />
                <asp:Parameter Name="original_Studentid" Type="Int32" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_firstname" Type="String" />
                <asp:Parameter Name="original_lastname" Type="String" />
                <asp:Parameter Name="original_fullname" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_facultyadvisor" Type="String" />
                <asp:Parameter Name="original_semister" Type="String" />
                <asp:Parameter Name="original_grade" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_yearofjoining" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDataSourcestudents" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                 <asp:CommandField ShowSelectButton="True" HeaderText="cps"  SelectText="view cps"/>
                <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="facultyadvisor" HeaderText="facultyadvisor" SortExpression="facultyadvisor" />
                <asp:BoundField DataField="semister" HeaderText="semister" SortExpression="semister" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="yearofjoining" HeaderText="yearofjoining" SortExpression="yearofjoining" />
               
            </Columns>
        </asp:GridView>
    
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
