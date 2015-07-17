<%@ page language="C#" autoeventwireup="true" inherits="Forget_password, App_Web_j5igmvxy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:Black">
    <table>
    <tr><td>
        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Enter Your Email:"></asp:Label></td><td></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" required=required type=email Autocomplete="off"></asp:TextBox></td></tr>
            <tr><td></td></tr>
            <tr><td> <asp:Button ID="Button1" runat="server" Text="Send" 
                    onclick="Button1_Click" style="width: 56px" /></td></tr>
            <tr><td></td></tr>
            </table>
            <br /><br />
            <table>
             <tr><td><asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td></tr>
             <tr><td>  <asp:Label ID="lblerror1" runat="server" ForeColor="Red" Text=""></asp:Label></td></tr>
             </table>
            
    </div>
    </form>
</body>
</html>
