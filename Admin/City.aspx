<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_AddCity, App_Web_jxorsxhx" %>
<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function val() {

        var regex = /^[a-zA-Z]{2,15}$/;
        var city = document.getElementById("ContentPlaceHolder2_txtaddct").value;
        var matchct = city.match(regex);

        if (matchct == null) {
            alert("Enter City first.!");
            return false;
        }
    }
</script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="AdminLogin.aspx">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="User.aspx">User</a></li>
                <li><a href="City.aspx" class="current">City</a></li> 
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

<div id="templatemo_content_container">
         <div id="templatemo_content">
             <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <table>
    <tr><td>
        <asp:Label ID="lbladdct" runat="server" Text="CITY"></asp:Label></td>
     <td><asp:TextBox ID="txtaddct" runat="server" required=required></asp:TextBox></td>
        </tr>
        <tr><td></td></tr>
        <tr><td align="center" colspan="2">
            <asp:Button ID="btaddct" runat="server" Cssclass="styled-button-1" Text="ADD" onclick="btaddct_Click" OnClientClick="return val()"/>
            </td>
         </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
             <asp:GridView ID="gdct" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="cityid" onrowcancelingedit="gdct_RowCancelingEdit" 
                 onrowdeleting="gdct_RowDeleting" onrowediting="gdct_RowEditing" 
                 onrowupdating="gdct_RowUpdating" BorderColor="#999999" BackColor="#CCCCCC" 
                 BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                 ForeColor="Black">
                 <Columns>
                     <asp:TemplateField HeaderText="Cityid">
                         <EditItemTemplate>
                             <asp:TextBox ID="txtctid" runat="server" Text='<%# bind("cityid") %>' 
                                 ReadOnly="True"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lblctid" runat="server" Text='<%# bind("cityid") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="CityName">
                         <EditItemTemplate>
                             <asp:TextBox ID="txtctnm" runat="server" Text='<%# bind("cityname") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lblctnm" runat="server" Text='<%# bind("cityname") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:CommandField ShowEditButton="True" ButtonType="Button"/>
                     <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
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
             </ContentTemplate>
             </asp:UpdatePanel>
 </div>
 <br /><br />
</div>
</asp:Content>

