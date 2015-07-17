<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="Login, App_Web_frihkgyh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section" style="font-size:xx-large">
           <ul style="padding-top:0px">
                <li><a href="Login.aspx" class="current">Home</a></li>
                <li><a href="#">Services</a>
                <ul>
                    <li><a href="Connection.aspx">Connection</a></li>
                    <li><a href="Complaint.aspx">Complaint</a></li>
                </ul>
                </li>
                <li><a href="UserProfile.aspx">Profile</a></li>
                <li><a href="Status.aspx">Status</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="About.aspx">About US</a></li>     
            </ul>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div align="left">
<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
                <div class="templatemo_post_wrapper" style="height:500px">
                 <div class="templatemo_post">
                    <div class="post_title">
                    	INTRODUCTION</div>
                    <div class="post_body">
                      <p style="font-family:Calibri;color:Black;font-size:medium">
                      <br /> Ahmedabad is the fastest growing city in the world and the best city to live in India according to recent reports, which shows the incredibility of the city.
It is the financial capital of the most developed state (Gujarat) of India in recent times under the leadership of our chief minister Shri Narendra Modi.
<br /><br />Ahmedabad is also known as Amdavad by fellow Amdavadis. 
<br /><br />Ahmedabad was once known as the city of mills or the Manchester of India due to its exquisite mill culture. Ahmedabad is now flooded with malls, multiplexes, premiere institutesand all forms of development.<br />
It has many khao galis (Street Food Joints) like Manekchowk, Vastrapur etc.<br /><br />
Ahmedabad has many beautiful lakes like Kankaria Lake, Vastrapur Lake, Chandlodia talao etc.<br /><br />
AMC has also initiated the Sabarmati Riverfront Project with an objective of environmental improvement with provision of slum rehabilitation for poor living on the river banks.
Ahmedabad has India’s first revolving restaurant “Patang” which is a treat to watch whenever you pass from Ashram Road.
<br /><br />Ahmedabad’s Bus Rapid Transit System (BRTS) is the most successful initiative of its kind in India. <br /><br />
                      </p>
                      
                         </div>
              
                </div>
                </div> 
                
            </div> 
        <div>
            <div id="templatemo_content_right" style="height:500px">
            
            	
            	<div class="templatemo_right_section" >
                    <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Logout" class="styled-button-1" onclick="Button1_Click" />
                </div>
                
                            
            </div> <!-- end of right content -->
	    </div> <!-- end of content -->
       </div>
      </div>
     </div>
</asp:Content>

