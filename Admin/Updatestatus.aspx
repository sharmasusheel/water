<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_Updatestatus, App_Web_jxorsxhx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="AdminLogin.aspx" >Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="User.aspx">User</a></li>
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx">Area</a></li>
                <li><a href="Updatestatus.aspx" class="current">Update Status</a></li>                        
            </ul>  
            <div style="margin-right:-195px"><asp:Button ID="btnlgout" 
                    CssClass="styled-button-1" runat="server" Text="Logout" 
                onclick="btnlgout_Click" UseSubmitBehavior="false"/>
            </div>
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div id="templatemo_content_container">
    <div id="templatemo_content">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
    <div align="left">
        <asp:Panel ID="gdpanel" runat="server">
            <asp:Label ID="lblnodata" Font-Size="Larger" ForeColor="Firebrick" runat="server" Text=""></asp:Label>
    <asp:GridView ID="gdadviewstatus" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="ver_ono" 
        onrowediting="gdadviewstatus_RowEditing" 
                onrowdatabound="gdadviewstatus_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="Employee">
                <ItemTemplate>
                    <asp:Label ID="lblverceunm" runat="server" Text='<%# bind("emp_unm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Applicant">
                <ItemTemplate>
                    <asp:Label ID="lblverunm" runat="server" Text='<%# bind("app_unm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Service">
                <ItemTemplate>
                    <asp:Label ID="lblverser" runat="server" Text='<%# bind("ver_ser") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="lblvertype" runat="server" Text='<%# bind("ver_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order No.">
                <ItemTemplate>
                    <asp:Label ID="lblverono" runat="server" Text='<%# bind("ver_ono") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Current Status">
                <ItemTemplate>
                    <asp:Label ID="lblverstatus" runat="server" Text='<%# bind("ver_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Update">
                <ItemTemplate>
                    <asp:Label ID="lblverdoc" runat="server" Text='<%# bind("ver_doc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Starting date">
                <ItemTemplate>
                    <asp:Label ID="lblverstart" runat="server" Text='<%# bind("ver_startdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Completion date">
                <ItemTemplate>
                    <asp:Label ID="lblvercpltn" runat="server" Text='<%# bind("ver_cpltndate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Update" />
           <asp:TemplateField HeaderText="Completion date">
                <ItemTemplate>
                    <asp:Button ID="action" runat="server" Text="Action" onclick="action_Click"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </asp:Panel>
    <br /><br />
</div>
    <div align="right">
        <asp:Panel ID="Panel1" runat="server" style="padding-right:500px;padding-left:20px;padding-top:20px;float:left;border-left:5px solid Black;border-top:5px solid Black">
    <table>
    <tr><td>
        <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label></td>
        <td></td>
        <td> <asp:Label ID="lblunm" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Order No :"></asp:Label></td>
        <td></td>
        <td><asp:Label ID="lblono" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
         <tr><td><asp:Label ID="Label3" runat="server" Text="Current Status :"></asp:Label></td>
        <td></td>
        <td><asp:Label ID="lblstatus" runat="server" Text="Label"></asp:Label></td></tr>
         <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:Label ID="Label4" runat="server" Text="Update Status :"></asp:Label></td>
        <td></td>
        <td>
            <asp:DropDownList ID="ddlupdtstatus" runat="server">
                <asp:ListItem>Waiting</asp:ListItem>
                <asp:ListItem>Approved</asp:ListItem>
                <asp:ListItem>Under-Progress</asp:ListItem>
                <asp:ListItem>Complete</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>       
       <tr><td>
           <asp:Button ID="Button1" runat="server" CssClass="styled-button-1" Text="Update" onclick="Button1_Click" /></td></tr>
           <tr><td></td></tr>
           <tr><td></td></tr>
           <tr><td></td></tr>
           <tr><td>
               <asp:Label ID="lblsuccess" runat="server" Visible="False" Font-Bold="True" 
                   Font-Italic="True" Font-Size="X-Large" ForeColor="Lime"></asp:Label></td></tr>
    </table>
    </asp:Panel>
    </ContentTemplate> </asp:UpdatePanel>
</div>
<br /><br />
</div>
<br /><br />
</div>
</asp:Content>

