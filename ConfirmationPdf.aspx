<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="ConfirmationPdf, App_Web_frihkgyh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
        <div id="templatemo_content">

<div>
    <asp:MultiView ID="cpdf" runat="server" ActiveViewIndex="0">
        <asp:View ID="vcon" runat="server">
        <div align="left" style="margin-left:50px">
        <br />
      <p style="font-size:large;color:White">Confirmation Message.!!</p>
      <br /><br />
        <hr style="background-color:Black;width:1000px;height:5px" />
        <br /><br />
        <ul style="font-size:medium;color:Black">
<li>Your Connection Request has been submitted successfully.!!!</li>
<li>You Can <a href="ConReport.aspx" style="background-color:White">Download</a> Your Copy Of Service Details.!!!</li>
        </ul>
        <br />
        <table><tr><td>
            <asp:Button ID="bckcon" runat="server"  CssClass="styled-button-1" Text="GoTO HOME" onclick="bckcon_Click" 
                 /></td></tr></table>
       <br /><br />
 </div>
        </asp:View>
         <asp:View ID="vcmp" runat="server">
         <div align="left" style="margin-left:50px">
        <br />
      <p style="font-size:large;color:White">Confirmation Message.!!</p>
      <br /><br />
        <hr style="background-color:Black;width:1000px;height:5px" />
        <br /><br />
        <ul style="font-size:medium;color:Black">
<li>Your Complaint Request has been submitted successfully.!!!</li>
<li>You Can <a href="CompReport.aspx" style="background-color:White">Download</a> Your Copy Of Service Details.!!!</li>
        </ul>
        <br />
        <table><tr><td>
            <asp:Button ID="bckcmp" runat="server"  CssClass="styled-button-1" Text="GoTO HOME" 
                onclick="bckcmp_Click" /></td></tr></table>
       <br /><br />
 </div>
<br />
        </asp:View>
    </asp:MultiView>
</div>
</div>
</div>
</asp:Content>

