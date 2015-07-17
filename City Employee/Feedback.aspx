<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_Feedback, App_Web_t35ryucl" %>
<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function feedback() {
        var name = document.getElementById("ContentPlaceHolder2_txtnm").value;
        var regex = /^[a-zA-Z]{2,15}$/;
        var matchnm = name.match(regex);
        var emailPat = /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/;  // /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/
        var email = document.getElementById("ContentPlaceHolder2_txtemail").value;
        var matchemail = email.match(emailPat);

        if (matchnm == null) {
            alert("Please Enter Valid Name");
            return false;
        }

        if (matchemail == null) {
            alert("Please Enter Valid Email");
            return false;
        }

    }
</script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="CeLogin.aspx">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>
                <li><a href="Feedback.aspx" class="current">Feedback</a></li> 
                <li><a href="#">About US</a></li>                     
            </ul>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
<div id="templatemo_content">
<div align="center" style="width:600px;height:100%;background-color:Black;overflow:hidden;margin-top:-20px;margin-left:320px">    
<%--<div id="wrapper" style="width:1410px;height:400px">--%>
    <br /><br /><br /><br />
    <table align="center" style="text-align:left">
    <tr>
    <th><asp:Label ID="Label3" runat="server" Text="Feedback & Support" Font-Underline="True" Font-Bold="True" Font-Italic="True"></asp:Label>
    </th>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtnm" runat="server" required=required></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtemail" runat="server" required=required></asp:TextBox>
    </td>
    </tr>

    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtcmt" runat="server" TextMode="MultiLine" required=required></asp:TextBox>
    </td>
    </tr>
    </table>
    <br /><br /><br />
<table align="center">
            <tr>
            <td>
                <asp:Button ID="btnsubmit" Cssclass="styled-button-1" runat="server" 
                    Text="Submit" onclick="btnsubmit_Click" OnClientClick="return feedback()"/>
            </td>
             <td>
                <asp:Button ID="btncncl" Cssclass="styled-button-1" runat="server" Text="Cancel" 
                     onclick="btncncl_Click" UseSubmitBehavior="false" />
            </td>
            </tr>
</table>
<br /><br />
<asp:Label ID="lblsuccess" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

