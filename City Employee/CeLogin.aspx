<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_CeLogin, App_Web_t35ryucl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="templatemo_menu_panel">
        <div id="templatemo_menu_section">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick1" Interval="2000">
            </asp:Timer>
            <ul>
                <li><a href="CeLogin.aspx" class="current">Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>
                <li><a href="Profile.aspx">Profile</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li>
                <li><a href="#">About Us</a></li>
                <li>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="lbltime" runat="server" Text="" ForeColor="Red" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <asp:Label ID="lblshowserno" runat="server" Text=""></asp:Label>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div align="left">
        <div id="templatemo_content_container">
            <div id="templatemo_content">
                <div id="templatemo_content_left">
                    <div class="templatemo_post_wrapper">
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
                        <div class="templatemo_right_section">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Logout" class="styled-button-1" OnClick="Button1_Click" />
                        </div>
                                            </div>
                   
                </div>
                
            </div>
        </div>
    </div>
    
</asp:Content>
