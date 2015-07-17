<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="Home, App_Web_frihkgyh" %>

<asp:Content ID="cnt" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_menu_panel"><h2>USER PORTAL</h2>
    	<div id="templatemo_menu_section" style="font-size:xx-large">
    
           <ul style="padding-top:0px">
                <li><a href="Home.aspx" class="current">Home</a></li>
                <li><a href="#">Services</a>
                <ul>
                    <li><a href="Connection.aspx">Connection</a></li>
                    <li><a href="Complaint.aspx">Complaint</a></li>
                </ul>
                </li>
                <li><a href="Status.aspx">Status</a></li>
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
				
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div class="post_title">
                    	INTRODUCTION</div>
                    <div class="post_info">
                    </div>
                    <div class="post_body">
                        <img src="images/homelogo.jpg" alt="INTRODUCTION" border="1" height="170px" />
                      <p style="font-family:Calibri;color:Black">Ahmedabad was constituted through an Act of ahmedabad Legislative Assembly on 6th April 1998. It has been meeting the needs of potable water in the NationalCapital Territory of ahmedabad for more than five decades. Ahmedabad has been able to supply pure and wholesome filtered water to the capital city of India which has grown phenomally to the present population of more than 160 lakh. Ahmedabad is committed for the augmentation of water supply in Ahmedabad and has taken many steps in this direction.Ahmedabad has ensured average availability of 50 gallons per capital per day of filtered water through an efficient network of water treatment plants, booster pumping stations and about 9000 kms of water mains & distribution system.</p>
                      
                    </div>
              
                </div>
                </div> <!-- End of a post-->
                
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div class="post_title">
                    	Map Of City</div>
                    <div class="post_info">
            
                    </div>
                    <div class="post_body">
                        <img id="multizoom1" alt="map of ahmedabad" border="0" src="images/map.jpg" class="targetarea"style="width:525px;height:480px" />
                    </div>
              <div class="post_comment">
                    </div>
                </div>
                </div>  <!-- End of a post-->
                
            </div> <!-- end of content left -->
        <div >
            <div id="templatemo_content_right" style="height:600px">
         
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
                    <asp:TextBox ID="txtpass" placeholder="PASSWORD"  runat="server" required=required TextMode="Password"></asp:TextBox>
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
                <tr><td></td></tr>
                <tr><td>
                    <asp:LinkButton ID="fgotpass" runat="server" ForeColor="red" 
                        onclick="fgotpass_Click">Forgot Password??</asp:LinkButton></td></tr>
                    
                </table>
               
                </div>
                <a href="Registration.aspx">Registration  Form</a>
                <div class="templatemo_right_section">
                	   
                </div>
                
              
                
                <div class="templatemo_right_section">
	                </div>
                
            </div> <!-- end of right content -->
	    </div> <!-- end of content -->
       </div>
      </div>
     </div>
</asp:Content>

