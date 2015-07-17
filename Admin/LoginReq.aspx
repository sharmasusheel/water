<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_LoginReq, App_Web_ddyx4edz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
<div id="templatemo_content" align="center">
<div style=" vertical-align:top">
<table>
<tr><td>
    <asp:Label ID="Label1" runat="server" Text="You Need To Login First!" Font-Bold="True" Font-Italic="False" ForeColor="#000066" Font-Names="Calibri" Font-Size="20px"></asp:Label>
</td></tr>
</table> 
</div>
<hr style="width:1500px;margin-left:-100px"/>
<br />
<br />
<div style="vertical-align:bottom">
<table>
                <tr>
                <th colspan="4">
                <b>LOG IN HERE</b>
                </th>
                </tr>
                <tr>
                <td>
                    <asp:TextBox ID="txtunm" placeholder="USER NAME" runat="server" required=required></asp:TextBox>
                </td>
                </tr>
               <tr>
                <td>
                    <asp:TextBox ID="txtpass" placeholder="PASSWORD" runat="server" required=required></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="btnlogin" CssClass="styled-button-1" runat="server" 
                        Text="Log In" onclick="btnlogin_Click" />
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="lbllogin" runat="server" Text="" Visible="false"></asp:Label>
                </td>
                </tr>
 </table>
 </div>
 <br /><br />
 </div>
</div>
</asp:Content>

