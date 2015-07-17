<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_Area, App_Web_jxorsxhx" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function val() {

        var regex = /^[a-zA-Z]{2,15}$/;
        var area = document.getElementById("ContentPlaceHolder2_txtaddar").value;
        var matchar = area.match(regex);
        var pin = document.getElementById("ContentPlaceHolder2_txtpinar").value;

        if (pin.length != 6 || isNaN(pin) || pin == "") {
            alert("Enter Valid Pincode");
            return false;
        }

        if (matchar == null) {
            alert("Enter Area first.!");
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
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx" class="current">Area</a></li> 
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
        <asp:Label ID="lblpinar" runat="server" Text="Pincode"></asp:Label></td>
       <td>
           <asp:TextBox ID="txtpinar" runat="server" required=required></asp:TextBox></td> 
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
    <tr><td>
        <asp:Label ID="lbladdar" runat="server" Text="Area"></asp:Label></td>
     <td><asp:TextBox ID="txtaddar" runat="server" required=required></asp:TextBox></td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td align="center" colspan="2">
            <asp:Button ID="btaddar" runat="server" Cssclass="styled-button-1" Text="ADD" 
                onclick="btaddar_Click" OnClientClick="return val()" />
            </td>
         </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
             <asp:GridView ID="gdar" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="pin"  BorderColor="#999999" 
                 onrowcancelingedit="gdar_RowCancelingEdit" onrowdeleting="gdar_RowDeleting" 
                 onrowediting="gdar_RowEditing" onrowupdating="gdar_RowUpdating" 
                 BackColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                 CellSpacing="2" ForeColor="Black">
                 <Columns>
                     <asp:TemplateField HeaderText="Pincode">
                         <EditItemTemplate>
                             <asp:TextBox ID="txtpinar" runat="server" Text='<%# bind("pin") %>' 
                                ></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lblpinar" runat="server" Text='<%# bind("pin") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="AreaName">
                         <EditItemTemplate>
                             <asp:TextBox ID="txtarnm" runat="server" Text='<%# bind("arnm") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lblarnm" runat="server" Text='<%# bind("arnm") %>'></asp:Label>
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

