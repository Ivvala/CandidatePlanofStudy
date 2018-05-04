<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentfirstcps.aspx.cs" Inherits="CandidatePlanofStudy.studentfirstcps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HiddenField ID="hidenfieldmajor" runat="server" Visible="False"></asp:HiddenField>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="CPS "></asp:Label>
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
        <asp:Label ID="Label24" runat="server" Text="REQUIRED FOUNDATION COURSES"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSourcefound" DataTextField="coursename" DataValueField="coursename">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSourcefound" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" SelectCommand="SELECT [coursename] FROM [catalog] WHERE (([CENG] = @CENG) OR ([CINF] = @CINF) OR ([CSCI] = @CSCI) OR([EMGT] = @EMGT) OR ([SENG] = @SENG) OR ([SWEN] = @SWEN))">
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
        <asp:Label ID="Label25" runat="server" Text="All classes completed at UHCL will count toward the over all grade point average "></asp:Label>
        <asp:Label ID="Label26" runat="server" Text="DEGREE REQUIREMENTS - TOTAL:36 hours"></asp:Label>
        <br />
        <asp:Label ID="Label27" runat="server" Text="no more then 9 hours of graduate SWEN  classes may be applied to the SWEN  degree if taken admission to the program see SWEN web page"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourcecore" runat="server" ConnectionString="<%$ ConnectionStrings:cpsdb %>" SelectCommand="SELECT [rubric], [courseid], [coursename] FROM [catalog] WHERE ([SWEN] = @SWEN)">
            <SelectParameters>
                <asp:Parameter DefaultValue="C" Name="SWEN" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Core Requirements"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label87" runat="server" Text="Faculty Initial changes"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridViewcore" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecore">
            <Columns>
                <asp:BoundField DataField="rubric" HeaderText="rubric" SortExpression="rubric" />
                <asp:BoundField DataField="courseid" HeaderText="courseid" SortExpression="courseid" />
                <asp:BoundField DataField="coursename" HeaderText="coursename" SortExpression="coursename" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:TextBox ID="TextBox127" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label28" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox133" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

        <asp:TextBox ID="TextBox128" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label29" runat="server" Text="3"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox134" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox129" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label30" runat="server" Text="3"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox135" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox130" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label31" runat="server" Text="3"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox136" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox131" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label32" runat="server" Text="3"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox137" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox132" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label33" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox138" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

    
        <br />
        <asp:SqlDataSource ID="SqlDatasourceelective" runat="server" ConnectionString="<%$ ConnectionStrings:coursecatalogdb %>" SelectCommand="SELECT * FROM [course] WHERE (([elective] = @elective) AND ([major] = @major))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="elective" Type="Int32" />
                <asp:Parameter DefaultValue="Software Engineering" Name="major" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="Completion Option Extended Course Work"></asp:Label>

        <br />
        <br />

        <asp:TextBox ID="TextBox139" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox140" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox141" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label34" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label41" runat="server" Text="5x3x-6x3x"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label48" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
                
        <asp:TextBox ID="TextBox188" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br />


        <asp:TextBox ID="TextBox144" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox143" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox142" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label35" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label42" runat="server" Text="5x3x-6x3x"></asp:Label><asp:Label ID="Label49" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
                
        <asp:TextBox ID="TextBox189" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br /><br />


        <asp:TextBox ID="TextBox146" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox147" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox148" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label36" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label43" runat="server" Text="4x3x-6x3x"></asp:Label><asp:Label ID="Label50" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox85" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;<br /><br />


        <asp:TextBox ID="TextBox149" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox150" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox151" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label37" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label44" runat="server" Text="5x3x-6x3x"></asp:Label><asp:Label ID="Label51" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox152" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br /><br />


        <asp:TextBox ID="TextBox153" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox154" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox155" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label38" runat="server" Text="SWEN Technical elective"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label45" runat="server" Text="5x3x-6x3x"></asp:Label><asp:Label ID="Label52" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox156" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br /><br />

        <asp:TextBox ID="TextBox157" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox158" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox159" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label39" runat="server" Text="SWEN Technical elective"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label46" runat="server" Text="5x3x-6x3x"></asp:Label><asp:Label ID="Label53" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox160" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br /><br />


        <asp:TextBox ID="TextBox164" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox163" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox162" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label40" runat="server" Text="SWEN Technical elective"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label47" runat="server" Text="4x3x-6x3x"></asp:Label>
        <asp:Label ID="Label54" runat="server" Text="3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox161" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;<br /><br />
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Thiesis"></asp:Label>
        <br />

        <asp:TextBox ID="TextBox165" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox166" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox167" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label76" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>
        <asp:Label ID="Label77" runat="server" Text="5x3x-6x3x"></asp:Label>
        <asp:Label ID="Label78" runat="server" Text="3"></asp:Label>

        <asp:TextBox ID="TextBox187" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />


        <asp:TextBox ID="TextBox169" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox170" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox171" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label79" runat="server" Text="SENG/CSCI/SWEN"></asp:Label>
        <asp:Label ID="Label80" runat="server" Text="5x3x-6x3x"></asp:Label>
        <asp:Label ID="Label81" runat="server" Text="3"></asp:Label>

        <asp:TextBox ID="TextBox186" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />


        <asp:TextBox ID="TextBox190" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox192" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox180" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <asp:Label ID="Label61" runat="server" Text="SWEN Technical elective"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label62" runat="server" Text="4x3x-6x3x"></asp:Label>
        <asp:Label ID="Label63" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox185" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />


        <asp:TextBox ID="TextBox173" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox174" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox179" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <asp:Label ID="Label64" runat="server" Text="SWEN Technical elective"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label65" runat="server" Text="4x3x-6x3x"></asp:Label>
        <asp:Label ID="Label66" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox184" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />


        <asp:TextBox ID="TextBox191" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox175" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox178" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <asp:Label ID="Label67" runat="server" Text="SWEN Technical elective"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label68" runat="server" Text="4x3x-6x3x"></asp:Label>
        <asp:Label ID="Label69" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox183" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox176" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label82" runat="server" Text="SWEN 6839 Master Thesis"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label85" runat="server" Text="Instruction Packet required before proposal"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label83" runat="server" Text="3"></asp:Label>

        <asp:TextBox ID="TextBox182" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />


        <asp:TextBox ID="TextBox177" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label84" runat="server" Text="SWEN 6839 Master Thesis"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label86" runat="server" Text="http://www.uhcl.edu.csc"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label74" runat="server" Text="4x3x-6x3x"></asp:Label>
        <asp:Label ID="Label75" runat="server" Text="3"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox181" runat="server" Enabled="False" ReadOnly="True" ></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="cpsstudentname" runat="server" Text="Student Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label89" runat="server" Text="Your final cps will be e-mail to  your student account"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="cpsfacultyname" runat="server" Text="Faculty Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" Text="Date"></asp:Label>
        <br />

        <p>IMPORTANT INFORMATION:
            *CHANGES: All subsequent substitutions of the classes listed above must be approved before enorlling in the substitute class. the faculty advisor indicates the substitution and initials the change on the cps(on a print copy on the electronic copy located in the network folder).Faculty sends the updated final cps(e-mail or hardcopy) to cse academic advising .
            a combined maximum of 6 hours of independent study/coop/internship may apply to the degree(if allowed for this degree)

        </p>
    
    </div>
        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
    </form>

</body>
</html>
