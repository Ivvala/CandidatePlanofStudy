<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homestudent.aspx.cs" Inherits="CandidatePlanofStudy.homestudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CPS</title>
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
    $("#Button1").click(function(){
        window.print();
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
                    <li> <asp:Label ID="lblloginmsg" runat="server" Visible="False"></asp:Label></li>
                 <li><asp:LinkButton ID="linklogout" runat="server" OnClick="linklogout_Click">Logout</asp:LinkButton></li>
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
 
          <div class="contentWrapper clearfix">
	
		<div style="padding:20px 0 0 23px; font-size:22px;">Home Student<br />
            <br />

   
       
			</div>
			
             
    <div class="content-in">
    
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label> <asp:LinkButton ID="LinkButton1" runat="server" visible="false" OnClick="linklogout_Click">Logout</asp:LinkButton>
        <br />
        <asp:Label ID="lblrubric" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="CPS " style="font-size:18px;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsyear" runat="server" Text="CPS " style="font-size:18px;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <br />
        <br />
        <div class="stdd">
        <asp:Label ID="Label89" runat="server" Text="Student Name"></asp:Label>
        <asp:Label ID="cpsstuname" runat="server" Text="Label"></asp:Label><br /><br />
     <asp:Label ID="Label88" runat="server" Text="Student Id"></asp:Label>
        <asp:Label ID="cpsstdid" runat="server"></asp:Label><br /><br />
         <asp:Label ID="Label2" runat="server" Text="Major"></asp:Label>
         <asp:Label ID="cpsmajor" runat="server"></asp:Label>
        </div>
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
<div id="accordion">
  <h3>Foundation Course Section</h3>
         <div>
        <br />
        <asp:GridView ID="GridViewfound" runat="server" class="tbl1 srchresultssummary" >
           
       </asp:GridView>
      </div>

        <h3>Core Requirements</h3>
    <div>
        <asp:GridView ID="GridViewcore" runat="server" class="tbl1 srchresultssummary">
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceele" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" DeleteCommand="DELETE FROM [studentcpsfinal] WHERE [id] = @id" InsertCommand="INSERT INTO [studentcpsfinal] ([semester], [grade], [rubric], [courseid], [coursename], [units]) VALUES (@semester, @grade, @rubric, @courseid, @coursename, @units)" SelectCommand="SELECT [semester], [grade], [rubric], [courseid], [coursename], [units], [id] FROM [studentcpsfinal] WHERE (([Studentid] = @Studentid) AND ([type] = @type))" UpdateCommand="UPDATE [studentcpsfinal] SET [semester] = @semester, [grade] = @grade, [rubric] = @rubric, [courseid] = @courseid, [coursename] = @coursename, [units] = @units WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Studentid" SessionField="sid" Type="Int32" />
                <asp:Parameter DefaultValue="E" Name="type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
     
        <h3>Electives</h3>
    <div>
    <asp:GridView ID="GridViewelective" class="tbl1 srchresultssummary" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceele">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                <asp:BoundField DataField="rubric" HeaderText="rubric" SortExpression="rubric" />
                <asp:BoundField DataField="courseid" HeaderText="courseid" SortExpression="courseid" />
                <asp:BoundField DataField="coursename" HeaderText="coursename" SortExpression="coursename" />
                <asp:BoundField DataField="units" HeaderText="units" SortExpression="units" />
                
            </Columns>
        </asp:GridView>
        </div>
       
        <asp:SqlDataSource ID="SqlDataSourcecap" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" DeleteCommand="DELETE FROM [studentcpsfinal] WHERE [id] = @id" InsertCommand="INSERT INTO [studentcpsfinal] ([semester], [grade], [rubric], [courseid], [coursename], [units]) VALUES (@semester, @grade, @rubric, @courseid, @coursename, @units)" SelectCommand="SELECT [id], [semester], [grade], [rubric], [courseid], [coursename], [units] FROM [studentcpsfinal] WHERE (([Studentid] = @Studentid) AND ([type] = @type))" UpdateCommand="UPDATE [studentcpsfinal] SET [semester] = @semester, [grade] = @grade, [rubric] = @rubric, [courseid] = @courseid, [coursename] = @coursename, [units] = @units WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Studentid" SessionField="sid" Type="Int32" />
                <asp:Parameter DefaultValue="C" Name="type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
    <h3>Capstone</h3>
    <div>
        <asp:GridView ID="GridViewcap" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcecap">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                <asp:BoundField DataField="rubric" HeaderText="rubric" SortExpression="rubric" />
                <asp:BoundField DataField="courseid" HeaderText="courseid" SortExpression="courseid" />
                <asp:BoundField DataField="coursename" HeaderText="coursename" SortExpression="coursename" />
                <asp:BoundField DataField="units" HeaderText="units" SortExpression="units" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSourcethe" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" DeleteCommand="DELETE FROM [studentcpsfinal] WHERE [id] = @id" InsertCommand="INSERT INTO [studentcpsfinal] ([semester], [grade], [rubric], [courseid], [coursename], [units]) VALUES (@semester, @grade, @rubric, @courseid, @coursename, @units)" SelectCommand="SELECT [id], [semester], [grade], [rubric], [courseid], [coursename], [units] FROM [studentcpsfinal] WHERE (([Studentid] = @Studentid) AND ([type] = @type))" UpdateCommand="UPDATE [studentcpsfinal] SET [semester] = @semester, [grade] = @grade, [rubric] = @rubric, [courseid] = @courseid, [coursename] = @coursename, [units] = @units WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Studentid" SessionField="sid" Type="Int32" />
                <asp:Parameter DefaultValue="T" Name="type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="rubric" Type="String" />
                <asp:Parameter Name="courseid" Type="String" />
                <asp:Parameter Name="coursename" Type="String" />
                <asp:Parameter Name="units" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <h3>Thesis</h3>
    <div>
        <asp:GridView ID="GridViewthe" runat="server" DataSourceID="SqlDataSourcethe" class="tbl1 srchresultssummary">
        </asp:GridView>
        <br />
       </div>
	</div>
</div>

        <asp:Button ID="Button1" runat="server" Text="Print" class="btn"/>
        <asp:Button ID="Button2" runat="server" Text="Download" class="btn"/>
        <br />
    
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
