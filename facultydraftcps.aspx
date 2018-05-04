<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultydraftcps.aspx.cs" Inherits="CandidatePlanofStudy.facultydraftcps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <div class="header">
    	<div class="hdrlft">
          	<div class="PQSLogo">
        	CPS
            </div>
        </div>
        <div class="hdrrgt">
        	<div class="user">
                                  <asp:Label ID="lbllogin" runat="server" Visible="False"></asp:Label> (Faculty Advisor)|   <asp:LinkButton ID="linklogout" runat="server" OnClick="linklogout_Click">Logout</asp:LinkButton>


     
        </div>
             
        </div>
     
        </div>
               <div class="bodywrapper clearfix">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbldraft" runat="server" Text="CPS DRAFT"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="cpsyear" runat="server" Text="CPS "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsmajor" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="cpsstdname0" runat="server" Text="Student Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsstdname" runat="server" Text="Student Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label88" runat="server" Text="Student Id"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpsstdid" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Text="FOUNDATION COURSES"></asp:Label>
                   <br />
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Core Requirements"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridViewcore" runat="server"  class="tbl opprtunitytbl tableWidth">
            <Columns>
                <asp:templatefield headertext="Grade">
                <itemtemplate>
                     <asp:textbox id="txtgrade" runat="server" Enabled="false"></asp:textbox>
                </itemtemplate>
                </asp:templatefield>
                 <asp:templatefield headertext="SEMESTER">
                <itemtemplate>
                     <asp:textbox id="txtsemester" runat="server" class="txtsemester"></asp:textbox>
                </itemtemplate>
                </asp:templatefield>
               <asp:templatefield headertext="YEAR">
                <itemtemplate>
                     <asp:textbox id="txtyear" runat="server" class="txtyear"></asp:textbox>
                </itemtemplate>
                </asp:templatefield>
                
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label90" runat="server" Text="Electives"></asp:Label>
        <asp:gridview ID="Gridview1" runat="server" ShowFooter="true" AutoGenerateColumns="false"  class="tbl opprtunitytbl tableWidth">
        <Columns>
         <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />
        <asp:TemplateField HeaderText="GRADE">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="false"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SEMESTER">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"  class="txtsemester"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="YEAR">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" class="txtyear"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="RUBRIC">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="COURSE NUMBER">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="COURSE NAME">
            <ItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" class="course"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UNITS">
            <ItemTemplate>
                 <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
             <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="ButtonAdd_Click" />
            </FooterTemplate>
        </asp:TemplateField>
        </Columns>
</asp:gridview>
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:RadioButton ID="rbncap" runat="server" Text="CAPS" />
                   <asp:RadioButton ID="rbnthe" runat="server" Text="THES" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                   <br />
                   <asp:GridView ID="GRIDCAP" runat="server" class="tbl opprtunitytbl tableWidth">
                       <Columns>
                           <asp:templatefield headertext="Grade">
                               <itemtemplate>
                                   <asp:TextBox ID="txtgrade0" runat="server" Enabled="false"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                           <asp:templatefield headertext="SEMESTER">
                               <itemtemplate>
                                   <asp:TextBox ID="txtsemester0" runat="server" class="txtsemester"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                           <asp:templatefield headertext="YEAR">
                               <itemtemplate>
                                   <asp:TextBox ID="txtyear0" runat="server" class="txtyear"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                       </Columns>
                   </asp:GridView>
                   <br />
        <asp:GridView ID="GRIDTHE" runat="server" class="tbl opprtunitytbl tableWidth">
                       <Columns>
                           <asp:templatefield headertext="Grade">
                               <itemtemplate>
                                   <asp:TextBox ID="txtgrade0" runat="server" Enabled="false"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                           <asp:templatefield headertext="SEMESTER">
                               <itemtemplate>
                                   <asp:TextBox ID="txtsemester0" runat="server" class="txtsemester"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                           <asp:templatefield headertext="YEAR">
                               <itemtemplate>
                                   <asp:TextBox ID="txtyear0" runat="server" class="txtyear"></asp:TextBox>
                               </itemtemplate>
                           </asp:templatefield>
                       </Columns>
                   </asp:GridView>
                   
                   <br />
                    <p>IMPORTANT INFORMATION:
            *CHANGES: All subsequent substitutions of the classes listed above must be approved before enorlling in the substitute class. the faculty advisor indicates the substitution and initials the change on the cps(on a print copy on the electronic copy located in the network folder).Faculty sends the updated final cps(e-mail or hardcopy) to cse academic advising .
            a combined maximum of 6 hours of independent study/coop/internship may apply to the degree(if allowed for this degree)

        </p>
    
                   <br />
        <asp:Label ID="cpsstudentname" runat="server" Text="Student Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label89" runat="server" Text="Your final cps will be e-mail to  your student account"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="cpsfacultyname" runat="server" Text="Faculty Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label runat="server" Text="Date"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lblacademicdate" runat="server" Text="Academic Advisor Date"></asp:Label>
        <br />

       
                   <br />
                   <br />
                   <asp:Button ID="btnsave" runat="server" Text="Save" />

       
    </div>
         </div>
            </div>
       
        <div class="footer">
              &copy; University Of Houston - Clear Lake 2017
           
            </div>
        </div> 
  </div>
    </form>
</body>
</html>
