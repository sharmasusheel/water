<%@ page title="" language="C#" masterpagefile="~/Admin/MainAdmin.master" autoeventwireup="true" inherits="Admin_AdminLogin, App_Web_jxorsxhx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="AdminLogin.aspx" class="current">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <<li><a href="User.aspx">User</a></li>
                <li><a href="City.aspx">City</a></li> 
                <li><a href="Area.aspx">Area</a></li> 
                <li><a href="Updatestatus.aspx">Update Status</a></li> 
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
                    <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Logout" class="styled-button-1" onclick="Button1_Click" />
                </div>
               </div> 
	    </div> 
       </div>
      </div>
     </div>
</asp:Content>

