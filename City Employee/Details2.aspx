<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_Details2, App_Web_t35ryucl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
<div id="templatemo_content">
                 <hr style="background-color:Black;width:1000px;height:5px" />
                <div align="left" style="text-align:right">
                <table>
                <tr><th style="font-family:Calibri;font-size:large">Complaint Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Application Date :</td>
                    <td><asp:Label ID="lbldate" runat="server" Text=""></asp:Label></td></tr>
                <tr><td>Category :</td>
                    <td><asp:Label ID="lblcat" runat="server" Text=""></asp:Label></td></tr>
                <tr><td>Description :</td>
                    <td><asp:Label ID="lbldes" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text=""></asp:TextBox></td>
                </tr>
                <tr><td>Area :</td>
                    <td><asp:Label ID="lblarea" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Pin :</td>
                    <td><asp:Label ID="lblpin" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblhome" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Mobile : <asp:Label ID="lblmob" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Status :</td>
                    <td><asp:Label ID="lblstatus" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Order No. :</td>
                    <td><asp:Label ID="lblono" runat="server" Text=""></asp:Label></td>
                </tr>
                </table>
                </div> <%--Div ends here--%>
               <br />
                 <hr style="background-color:Black;width:1000px;height:5px" />
               <br /><br />
                <div align="right" style="text-align:right">
                 <hr style="background-color:Black;width:1000px;height:5px" />
                <br />
                <table>
                <tr><th style="font-family:Calibri;font-size:large">Applicant's Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Applicant :</td>
                    <td><asp:Label ID="lblappunm" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtappadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text=""></asp:TextBox></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>City :</td>
                    <td><asp:Label ID="lblappct" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>Email :</td>
                    <td><asp:Label ID="lblappeml" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                 <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblapphm" runat="server" Text=""></asp:Label></td>
                </tr>
            
                <tr><td>Mobile : <asp:Label ID="lblappmob" runat="server" Text=""></asp:Label></td>
                    <td></td>
                </tr>
                </table>
                <br /><br /><br />
                <div align="center">
                    <asp:Button ID="btnback" runat="server" CssClass="styled-button-1" Text="Back" 
                        onclick="btnback_Click"/></div>
                </div> <%--Div ends here--%>
                <br /><br />
                </div>
                </div>
</asp:Content>

