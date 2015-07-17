<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_Complaint, App_Web_t35ryucl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="CeLogin.aspx" >Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx" class="current">Complaints</a></li>  
                <li><a href="Profile.aspx">Profile</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="#">About US</a></li>                     
            </ul>
                    <div style="margin-right:-195px"><asp:Button ID="btnlgout" 
                    CssClass="styled-button-1" runat="server" Text="Logout" 
                onclick="btnlgout_Click" UseSubmitBehavior="false" /></div>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div id="templatemo_content_container">
<div id="templatemo_content" style="text-align:center">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
        <asp:Label ID="lblcmpnodata" runat="server" Font-Size="Larger" Text="" ForeColor="Firebrick"></asp:Label>
    <asp:GridView ID="gdcecmp" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" 
        DataKeyNames="cmp_ono" onrowediting="gdcecmp_RowEditing" 
        onrowdatabound="gdcecmp_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lblunm" runat="server" Text='<%# bind("cmp_regunm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="lblcat" runat="server" Text='<%# bind("cmp_cat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="lbldes" runat="server" Text='<%# bind("cmp_des") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pin">
                <ItemTemplate>
                    <asp:Label ID="lblpin" runat="server" Text='<%# bind("cmp_pin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Area">
                <ItemTemplate>
                    <asp:Label ID="lblarea" runat="server" Text='<%# bind("cmp_area") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# bind("cmp_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order No.">
                <ItemTemplate>
                    <asp:Label ID="lblono" runat="server" Text='<%# bind("cmp_ono") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# bind("cmp_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </ItemTemplate>
            </asp:TemplateField>
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
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <br />
    <br />
    </ContentTemplate>
    </asp:UpdatePanel>
</div>
</div>
</asp:Content>

