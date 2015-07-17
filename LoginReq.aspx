<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="LoginReq, App_Web_frihkgyh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
        <div id="templatemo_content">

<div>
    <asp:MultiView ID="mvloginreq" runat="server" ActiveViewIndex="0">
        <asp:View ID="vcon" runat="server">
        <div align="left" style="margin-left:50px">
        <br />
      <p style="font-size:large;color:White"> Citizens can apply for a new Water Connection related to single residence, society, mall, factory and other pursposes by methods enlisted below.</p>
        <ol style="font-size:medium;color:Black">
<li>By filling in online connection registration form from any of the computer connected to Internet, either from home/office or cyber cafe by visiting our Citizen Portal.</li>
<li>By visiting the nearest Citizen Facilitation Center (CFC) established by the Municipal Corporation belonging to any of the wards of AMC.</li>
        </ol>
        <br /><br />
        <hr style="background-color:Black;width:1000px;height:5px" />
        <br /><br />
        <p style="font-size:medium">Inorder to apply for a new connection using online connection registration form you need to LOGIN or REGISTER </p><br />
        <table>
                <tr>
                <th colspan="4">
                <b style="font-size:medium">LOG IN HERE</b>
                </th>
                </tr>
                <tr>
                <td>
                    <asp:TextBox ID="txtunm" placeholder="USER NAME" runat="server"></asp:TextBox>
                </td>
                </tr>
               <tr>
                <td>
                    <asp:TextBox ID="txtpass" placeholder="PASSWORD" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="btnlogin" CssClass="styled-button-1" runat="server" 
                        Text="Log In" onclick="btnlogin_Click"/>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="lbllogin" runat="server" Text="" Visible="false"></asp:Label>
                </td>
                </tr><tr><td></td></tr>
                <tr><td>
                    <asp:LinkButton ID="fgotpasscon" runat="server" ForeColor="red" onclick="fgotpasscon_Click" 
                        >Forgot Password??</asp:LinkButton></td></tr>

 </table>
 <br />
 <hr style="background-color:Black;width:1000px;height:5px" />
        </div>
 <br />
 <div align="left" style="margin-left:50px">
 <a href="Registration.aspx" style="font-size: x-large;text-decoration: underline;">Register Here</a><br /><br />
 <a href="Login.aspx" style="font-size: x-large;text-decoration: underline;">Go To Home</a><br /><br />
 </div>
        </asp:View>
         <asp:View ID="vcmp" runat="server">
         <div align="left" style="margin-left:50px">
        <br />
       <p style="font-size:large;color:White"> Citizens can lodge complaints related to solid waste management, drainage, storm water drain, roads & traffic, factories, license issues, water supply, pest control, buildings, encroachment, etc. by methods enlisted below,</p>
        <ol style="font-size:medium;color:Black">
<li>By filling in online complaint registration form from any of the computer connected to Internet, either from home/office or cyber cafe by visiting our Citizen Portal.</li>
<li>By visiting the nearest Citizen Facilitation Center (CFC) established by the Municipal Corporation belonging to any of the wards of AMC.</li>
        </ol>
        <br /><br />
        <hr style="background-color:Black;width:1000px;height:5px" />
        <br /><br />
        <p style="font-size:medium">Inorder to complaint using online complaint registration form you need to LOGIN or REGISTER </p><br />
        <table>
                <tr>
                <th colspan="4">
                <b style="font-size:medium">LOG IN HERE</b>
                </th>
                </tr>
                <tr>
                <td>
                    <asp:TextBox ID="txtunm2" placeholder="USER NAME" runat="server"></asp:TextBox>
                </td>
                </tr>
               <tr>
                <td>
                    <asp:TextBox ID="txtpass2" placeholder="PASSWORD" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="btnlogin2" CssClass="styled-button-1" runat="server" 
                        Text="Log In" onclick="btnlogin2_Click"/>
                </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="lbllogin2" runat="server" Text="" Visible="false"></asp:Label>
                </td>
                </tr><tr><td></td></tr>
                 <tr><td>
                     <asp:LinkButton ID="fgotpasscmp" runat="server" ForeColor="red" onclick="fgotpasscmp_Click" 
                         >Forgot Password??</asp:LinkButton></td></tr>
 </table>
 <br />
 <hr style="background-color:Black;width:1000px;height:5px" />
        </div>
        <br />
 <div align="left" style="margin-left:50px">
 <a href="Registration.aspx" style="font-size: x-large;text-decoration: underline;">Register Here</a><br /><br />
 <a href="Login.aspx" style="font-size: x-large;text-decoration: underline;">Go To Home</a><br /><br />
 </div>
        </asp:View>
    </asp:MultiView>
</div>
</div>
</div>
</asp:Content>

