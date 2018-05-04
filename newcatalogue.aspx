<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newcatalogue.aspx.cs" Inherits="CandidatePlanofStudy.newcatalogue" %>

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
		<div style="padding:20px 0 0 23px; font-size:22px;">New Catalogue</div>
	</div>
  
 <div class="content-in">
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
      Select Rubric

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcerubric" DataTextField="rubric" DataValueField="rubric">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcerubric" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" SelectCommand="SELECT DISTINCT [rubric] FROM [catalogue]"></asp:SqlDataSource>
      Select Year
        <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True">
             <asp:ListItem>2016-2017</asp:ListItem>
                            <asp:ListItem>2017-2018</asp:ListItem>
                            <asp:ListItem>2018-2019</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceviewcatalog" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" SelectCommand="SELECT * FROM [catalog] WHERE (([catalogyear] = @catalogyear) AND ([rubric] = @rubric))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlyear" Name="catalogyear" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="rubric" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnnewcatalogue" runat="server" OnClick="btnnewcatalogue_Click" Text="New Catalogue" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnviewcatalog" runat="server" OnClick="btnviewcatalog_Click" Text="View Catalogue" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourcecatalogue" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" SelectCommand="SELECT * FROM [catalogue] WHERE ([rubric] = @rubric)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="rubric" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      <div style="max-width:850px;overflow:auto;">
        <asp:GridView ID="GridViewcatalogue" class="tbl1 srchresultssummary" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecatalogue">
            <Columns>
                <asp:TemplateField HeaderText="rubric" SortExpression="rubric">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rubric") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("rubric") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="courseid" SortExpression="courseid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("courseid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("courseid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="coursename" SortExpression="coursename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("coursename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("coursename") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="units" SortExpression="units">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("units") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("units") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="CENG">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlceng" runat="server"> 
                            <asp:ListItem>None</asp:ListItem> 
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="CINF">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlcinf" runat="server">  
                            <asp:ListItem>None</asp:ListItem> 
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="CSCI">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlcsci" runat="server">  
                            <asp:ListItem>None</asp:ListItem> 
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="SWEN">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlswen" runat="server">  
                            <asp:ListItem>None</asp:ListItem> 
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="EMGT">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlemgt" runat="server"> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  

                </asp:TemplateField> 
                <asp:TemplateField HeaderText="SENG">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="ddlseng" runat="server"> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList>  
                    </ItemTemplate>  
                </asp:TemplateField> 
            </Columns>
        </asp:GridView>
          <asp:GridView ID="GridViewviewcatalog" runat="server" class="tbl1 srchresultssummary" AutoGenerateColumns="False" DataSourceID="SqlDataSourceviewcatalog">
              <Columns>
                  <asp:TemplateField HeaderText="rubric" SortExpression="rubric">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rubric") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("rubric") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="courseid" SortExpression="courseid">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("courseid") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("courseid") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="coursename" SortExpression="coursename">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("coursename") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("coursename") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="units" SortExpression="units">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("units") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("units") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="CENG" SortExpression="CENG">
                      
                      <ItemTemplate>
                         
                          <asp:DropDownList ID="ddlceng" runat="server" Text='<%# Bind("CENG") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="CINF" SortExpression="CINF">
                    
                      <ItemTemplate>
                         
                           <asp:DropDownList ID="ddlcinf" runat="server" Text='<%# Bind("CINF") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="CSCI" SortExpression="CSCI">

                      <ItemTemplate>
                         
                          <asp:DropDownList ID="ddlcsci" runat="server" Text='<%# Bind("CSCI") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="SWEN" SortExpression="SWEN">
                      
                      <ItemTemplate>
                         
                          <asp:DropDownList ID="ddlswen" runat="server" Text='<%# Bind("SWEN") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="EMGT" SortExpression="EMGT">
                     
                      <ItemTemplate>
                         
                          <asp:DropDownList ID="ddlemgt" runat="server" Text='<%# Bind("EMGT") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="SENG" SortExpression="SENG">
                      
                      <ItemTemplate>
                         
                          <asp:DropDownList ID="ddlseng" runat="server" Text='<%# Bind("SENG") %>'> 
                            <asp:ListItem>None</asp:ListItem>  
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            
                        </asp:DropDownList> 
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="catalogyear" HeaderText="catalogyear" SortExpression="catalogyear" />
              </Columns>
          </asp:GridView>
          <br />
          <asp:Label ID="lblmsg" runat="server"></asp:Label>
          </div>
     </div>
<asp:Button Text="Save" runat="server" ID="btnsave" OnClick="Unnamed1_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlsaveto" runat="server">
                   
                            <asp:ListItem>2017-2018</asp:ListItem>
                            <asp:ListItem>2018-2019</asp:ListItem>
                  <asp:ListItem>2019-2020</asp:ListItem>
              </asp:DropDownList>
              <asp:Button ID="btnsaveto" runat="server" Text="SAVE TO" OnClick="btnsaveto_Click" />
&nbsp;<div class="footer">
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
