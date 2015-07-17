<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_Home, App_Web_t35ryucl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="Home.aspx" class="current">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="Registration.aspx">Registration</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="#">About US</a></li>                     
            </ul>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div align="left">
<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                
                  
            </div> 
        <div>
            <div id="templatemo_content_right" style="height:300px;margin-left:100px">
				
            	<div class="templatemo_right_section">
                
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
                    <asp:TextBox ID="txtpass" placeholder="PASSWORD" runat="server" required=required TextMode="Password"></asp:TextBox>
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
                <tr><td></td></tr>
                <tr><td>
                    <a href="Forget password.aspx" style="color:Red">Forget Password??</a></td></tr>
                </table>
                
                </div>
               </div>
	    </div> 
       </div>
      </div>
     </div>
</asp:Content>

