<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_Connection, App_Web_jxorsxhx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel" <%--class="headerpanel_gdimg"--%>>
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="AdminLogin.aspx">Home</a></li>
                <li><a href="Connection.aspx" class="current">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="User.aspx">User</a></li>
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx">Area</a></li>
                <li><a href="Updatestatus.aspx">Update Status</a></li>                     
            </ul>
                    <div style="margin-right:-195px"><asp:Button ID="btnlgout" 
                    CssClass="styled-button-1" runat="server" Text="Logout" 
                onclick="btnlgout_Click" UseSubmitBehavior="false"/></div>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div id="templatemo_content_container" style="overflow:scroll">
         <div id="templatemo_content" >
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Label ID="lblnodata" Font-Size="Larger" ForeColor="Firebrick" runat="server" Text=""></asp:Label>
    <asp:GridView ID="gdadcon" runat="server" Width="1000px"
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="con_ono" 
                 onrowdeleting="gdadcon_RowDeleting" AutoGenerateColumns="False" 
                 onrowediting="gdadcon_RowEditing">
        <Columns>
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lblunm" runat="server" Text='<%# bind("con_regunm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="lbltype" runat="server" Text='<%# bind("con_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Purpose">
                <ItemTemplate>
                    <asp:Label ID="lblpur" runat="server" Text='<%# bind("con_purpose") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pin">
                <ItemTemplate>
                    <asp:Label ID="lblpin" runat="server" Text='<%# bind("con_pin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Area">
                <ItemTemplate>
                    <asp:Label ID="lblarea" runat="server" Text='<%# bind("con_area") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No. of Flores">
                <ItemTemplate>
                    <asp:Label ID="lblflore" runat="server" Text='<%# bind("con_flore") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Area( in sqm)">
                <ItemTemplate>
                    <asp:Label ID="lblarea_sp" runat="server" Text='<%# bind("con_area_sq") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# bind("con_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order No.">
                <ItemTemplate>
                    <asp:Label ID="lblono" runat="server" Text='<%# bind("con_ono") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# bind("con_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Update Status" />
            <asp:TemplateField HeaderText="Information">
                <ItemTemplate>
                    <asp:Button ID="btndetails" runat="server" Text="Details" 
                        onclick="btndetails_Click" />
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
    </ContentTemplate> </asp:UpdatePanel>
</div>
<br /><br />
</div>
</asp:Content>

