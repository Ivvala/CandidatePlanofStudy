<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seniorhome.aspx.cs" Inherits="CandidatePlanofStudy.seniorhome" %>

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
       
       
        $("[id$=txtstdsearch]").autocomplete({
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
					
					<li>   <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></li>
                     <li>  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="linklogout_Click">Logout</asp:LinkButton></li>
				
				</ul>
				<p></p>
			</div>
		</div>

	</div>
	<div class="navWrapper clearfix">
		<div class="nav clearfix">
			<div class="menu2">
				<ul class="menu">
					
					

				</ul>
			</div>
		</div>
	</div>
</div>
    <div>
          <div class="contentWrapper clearfix">
	<div class="hdr clearfix">
		<div style="padding:20px 0 0 23px; font-size:22px;">Home Senior Secretary<br />
            <br />

            </div>
        <div class="content-in">
             <asp:LinkButton ID="linkbtnshowall" runat="server" Visible="false" OnClick="linkbtnshowall_Click1">View Students List</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Enter Student Id/Name<asp:TextBox ID="txtstdsearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSourcestdsearch" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT * FROM [student] WHERE ([Studentid] = @Studentid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtstdsearch" Name="Studentid" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
       
  
 




  
         
               
         
          <asp:SqlDataSource ID="SqlDataSourcefacstd" runat="server" ConnectionString="<%$ ConnectionStrings:eservicesdb %>" SelectCommand="SELECT * FROM [student]">
          </asp:SqlDataSource>
         <div style="max-width:850px;overflow:auto;">
          <asp:GridView ID="GridViewstdall" Visible="false" class="tbl1 srchresultssummary" runat="server" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDataSourcefacstd" OnSelectedIndexChanged="GridViewstdall_SelectedIndexChanged">
              <Columns>
                  <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                  <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
             <br />
             <asp:GridView ID="GridViewstdsearch" class="tbl1 srchresultssummary" runat="server" AutoGenerateColumns="False" DataKeyNames="Studentid" DataSourceID="SqlDataSourcestdsearch" OnSelectedIndexChanged="GridViewstdsearch_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" HeaderText="cps"  SelectText="VIEW CPS"/>
                     <asp:BoundField DataField="Studentid" HeaderText="Studentid" ReadOnly="True" SortExpression="Studentid" />
                     <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
    </form>
</body>
</html>
