<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultyemgtdraft.aspx.cs" Inherits="CandidatePlanofStudy.facultyemgtdraft" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblloginmsg" runat="server" Visible="False"></asp:Label>
        <li>
            <asp:LinkButton ID="linklogout" runat="server" OnClick="linklogout_Click">Logout</asp:LinkButton>
        </li>
        <br />
        <br />
    
        <asp:Label ID="lblrubric" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="CPS "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="cpsyear" runat="server" Text="CPS "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsmajor" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label89" runat="server" Text="Student Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="cpsstuname" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label88" runat="server" Text="Student Id"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsstdid" runat="server"></asp:Label>
        <br />
        <br />
        Foundation Course Section<br />
        <br />
        <asp:GridView ID="GridViewfound" runat="server" class="tbl1 srchresultssummary" >
           
       </asp:GridView>
        <br />
        Core Requirements<br />
        <asp:GridView ID="GridViewcore" runat="server" class="tbl1 srchresultssummary">
        </asp:GridView>
        <br />
        <br />
        Electives
             <br />
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
              
    
        <br />
        <br />
  <div>
      </div>
         
            
        
         <h3 class="auto-style2" style="outline: 0;">Capstone</h3>
        <p class="auto-style2" style="outline: 0;">
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
            <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList33" runat="server">
            </asp:DropDownList>
        </p>
        <p class="auto-style2" style="outline: 0;">Thesis</p>
        <p class="auto-style2" style="outline: 0;">
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
            <asp:DropDownList ID="DropDownList23" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList23_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownList24" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList24_SelectedIndexChanged">
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
            <asp:DropDownList ID="DropDownList26" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList26_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownList27" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList27_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList35" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" />
            <asp:Button ID="Button1" runat="server" Text="Print" />
            <br />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </p>
              
    
    </div>
    </form>
</body>
</html>
