<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultysedraft.aspx.cs" Inherits="CandidatePlanofStudy.facultysedraft" %>

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
  $(document).ready( function() {
    $( "#accordion" ).accordion({
        collapsible: true,
        active: 2
       
    });
    $("#Button1").click(function () {
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
				</ul>
			</div>
		</div>
	</div>
</div>
    <div>
          <div class="contentWrapper clearfix">
	<div class="hdr clearfix">
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
       <asp:Label ID="Label89" runat="server" Text="Student Name : "></asp:Label>
        <asp:Label ID="cpsstuname" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:Label ID="Label88" runat="server" Text="Student Id : "></asp:Label>
        <asp:Label ID="cpsstdid" runat="server"></asp:Label><br /><br />
       <asp:Label ID="Label1" runat="server" Text="Major : "></asp:Label>
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
        <br />
      
     <div id="accordion">
  <h3>Foundation Course Section</h3>
         <div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridViewfound" runat="server" class="tbl1 srchresultssummary" >
           
       </asp:GridView>
        <br />
        <br />
        <br />
        <br />
    </div>
          <h3>Core Requirements</h3>
  <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
         <h3>Electives
             </h3>
  <div>
              <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList28" runat="server">
              </asp:DropDownList>
              <br />
              <br />
       <asp:DropDownList ID="DropDownList4" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged"  >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList29" runat="server">
              </asp:DropDownList>
              <br />
       <asp:DropDownList ID="DropDownList7" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList30" runat="server">
              </asp:DropDownList>
              <br />
       <asp:DropDownList ID="DropDownList10" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList11_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList12" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList12_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList31" runat="server">
              </asp:DropDownList>
              <br />
       <asp:DropDownList ID="DropDownList13" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList15_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList32" runat="server">
              </asp:DropDownList>
              <br />
              <br />
              <br />
      </div>
         
            
        
         <h3>Capstone</h3>
  <div>
              <br />
              <asp:Label ID="Label90" runat="server" Text="GRADE"></asp:Label>
&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label91" runat="server" Text="YEAR"></asp:Label>
              <br />
              <br />
                 <asp:DropDownList ID="DropDownList16" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox12" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList33" runat="server">
              </asp:DropDownList>
              <br />
              <br />
      <br />
      </div>
        <h3>Thesis</h3>
         <div>

          <asp:DropDownList ID="DropDownList22" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList23" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList23_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox16" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList24" runat="server" OnSelectedIndexChanged="DropDownList24_SelectedIndexChanged" AutoPostBack="True" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList34" runat="server" AutoPostBack="True">
             </asp:DropDownList>
              <br />
              <asp:DropDownList ID="DropDownList25" runat="server">
                  <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>C+</asp:ListItem>
                  <asp:ListItem>C</asp:ListItem>
                  <asp:ListItem>C-</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                  <asp:ListItem>F</asp:ListItem>
              </asp:DropDownList>
             
              <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
              <asp:DropDownList ID="DropDownList26" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList26_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:TextBox ID="TextBox18" runat="server" ></asp:TextBox>
              <asp:DropDownList ID="DropDownList27" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList27_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList35" runat="server">
             </asp:DropDownList>
              <br />
         </div>
         </div>
     <br /><br />
      <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
        <asp:Button ID="Button1" runat="server" Text="Print" />
      <br />
      <asp:Label ID="lblmsg" runat="server" Text="Label" Visible="false"></asp:Label>
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
