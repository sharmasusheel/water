<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_Adminhome, App_Web_jxorsxhx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
      <h2> ADMIN PORTAL</h2>
           <ul>
                <li><a href="Adminhome.aspx" class="current">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="User.aspx">User</a></li>
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx">Area</a></li>
                <li><a href="Updatestatus.aspx">Update Status</a></li>
            </ul>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="templatemo_content_container">
    <div id="templatemo_content" align="center">
            <br /><br />
            <table>
                <tr>
                <th colspan="4">
                <b>LOG IN HERE</b>
                </th>
                </tr>
                <tr>
                <td>
                    <asp:TextBox ID="txtunm" placeholder="USER NAME" runat="server" required=required Autocomplete="off"></asp:TextBox>
                </td>
                </tr>
               <tr>
                <td>
                    <asp:TextBox ID="txtpass" placeholder="PASSWORD" runat="server" required=required TextMode="Password"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="btnlogin" CssClass="styled-button-1" runat="server" 
                        Text="Log In" onclick="btnlogin_Click" />
                </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                <td>
                    <asp:Label ID="lbllogin" runat="server" Text="" Visible="false"></asp:Label>
                </td>
                </tr>
                </table>
     </div>
     <br /><br />
</div>
</asp:Content>

