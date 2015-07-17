<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_User, App_Web_jxorsxhx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="AdminLogin.aspx">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="User.aspx" class="current">User</a></li>
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx">Area</a></li>
                <li><a href="Updatestatus.aspx">Update Status</a></li>                     
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
<div id="templatemo_content_container" style="overflow:scroll">
  <div id="templatemo_content">
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
    <div style="margin-left:-17px;width:120px">
    <table style="width:200px">
    <tr><td>
        <asp:LinkButton ID="adcr" runat="server" onclick="adcr_Click" ForeColor="Black" Font-Size="Large">City Resident</asp:LinkButton></td></tr>
    <tr><td></td></tr>
     <tr><td>
        <asp:LinkButton ID="adce" runat="server" onclick="adce_Click" ForeColor="Black" Font-Size="Large">City Employee</asp:LinkButton></td></tr>
     </table>


    </div>
    <div style="float:left;margin-left:180px;margin-top:-62px;border-left:5px;border-left-color:Black;border-left-style:solid">
    <br /><br />
    <div style="margin-left:50px">
    <asp:MultiView ID="mvadmin" runat="server">
        <asp:View ID="Viewcr" runat="server">
            <asp:GridView ID="gdmvcr" runat="server" BorderColor="#999999" 
                BackColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                CellSpacing="2" ForeColor="Black" DataKeyNames="reg_id" 
                onrowdeleting="gdmvcr_RowDeleting">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
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
        </asp:View>
        <asp:View ID="Viewce" runat="server">
            <asp:GridView ID="gdmvce" runat="server" BorderColor="#999999" DataKeyNames="reg_id" 
                onrowdeleting="gdmvce_RowDeleting" BackColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
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
        </asp:View>
    </asp:MultiView>
    </ContentTemplate>  </asp:UpdatePanel>
    </div>
    <br /><br />
    </div>
  </div>
<br /><br />
</div>
</asp:Content>

