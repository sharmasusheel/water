<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="Complaint, App_Web_frihkgyh" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function cmpvalidation() {
        var cc= document.getElementById("ContentPlaceHolder2_ddlcmp_cat").value;
        var cd = document.getElementById("ContentPlaceHolder2_txtcmp_des").value;
        var add = document.getElementById("ContentPlaceHolder2_txtcmp_add").value;
        var area = document.getElementById("ContentPlaceHolder2_ddlcmp_area").value;
        var pin = document.getElementById("ContentPlaceHolder2_txtcmp_pin").value;
        var cnomob = document.getElementById("ContentPlaceHolder2_txtcmp_mobile").value;
        var cadd = document.getElementById("ContentPlaceHolder2_txtapp_add").value;
        var city = document.getElementById("ContentPlaceHolder2_ddlapp_city").value;
        var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
        var email = document.getElementById("ContentPlaceHolder2_txtapp_email").value;
        var matchemail = email.match(emailPat);
        var ccnomob = document.getElementById("ContentPlaceHolder2_txtapp_mobile").value;
        str = "true";
        if (cc == "0") {
            var lbl = document.getElementById("ContentPlaceHolder2_lblcc");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (cd == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lblcd");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (add == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lbladd");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (area== "0") {
            var lbl = document.getElementById("ContentPlaceHolder2_lblarea");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (pin == "" || pin.length != 6 || isNaN(pin)) 
        {
            var lbl = document.getElementById("ContentPlaceHolder2_lblpin");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (cnomob == "" || cnomob.length != 10 || isNaN(cnomob)) 
        {
            var lbl = document.getElementById("ContentPlaceHolder2_lblcnomob");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (cadd == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lblcadd");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (city == "0")
         {
             var lbl = document.getElementById("ContentPlaceHolder2_lblcity");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (matchemail == null)
         {
             var lbl = document.getElementById("ContentPlaceHolder2_lblemail");
            lbl.innerHTML = "*Please Enter Valid Email.!";
            str = "yes";
        }
 
        if (ccnomob == "" || ccnomob.length != 10 || isNaN(ccnomob)) {
            var lbl = document.getElementById("ContentPlaceHolder2_lblccnomob");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }

         if (str == "yes") 
     {
            return false;
      }

        if (str == "true") 
        {
            return true; 
        }
       
    }

    
</script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section" style="font-size:xx-large">
           <ul style="padding-top:0px">
                <li><a href="Login.aspx">Home</a></li>
                <li><a href="#"  class="current">Services</a>
                <ul>
                    <li><a href="Connection.aspx">Connection</a></li>
                    <li><a href="Complaint.aspx">Complaint</a></li>
                </ul>
                </li>
                <li><a href="UserProfile.aspx">Profile</a></li>
                <li><a href="Status.aspx">Status</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="#">About US</a></li>     
            </ul>
            <div style="margin-right:-195px"><asp:Button ID="btnlgout" 
                    CssClass="styled-button-1" runat="server" Text="Logout" 
                    onclick="btnlgout_Click" UseSubmitBehavior="false"/></div>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
         <div id="templatemo_content">
         <hr style="background-color:Black;width:1000px;height:5px" />
<p  style="font-size:x-large;color:Black;text-align:center;text-decoration:underline">Complaint-Form</p>
<hr style="background-color:Black;width:1000px;height:5px" />
<br /><br />

                <div id="wrapper">
                 <div class="left">
             
            <table style="text-align:left">
            <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Complaint Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcmp_cat" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Sewage Water</asp:ListItem>
                    <asp:ListItem>Water leakage</asp:ListItem>
                    <asp:ListItem>Water Shortage</asp:ListItem>
                    <asp:ListItem>Water Drainage</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td><asp:Label ID="lblcc" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Complaint Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcmp_des" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblcd" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            </table>
            <br />
            <br />
            <br />
            <table style="text-align:left">
            <tr>
            <th>
            <asp:Label ID="Label3" runat="server" Text="Specify Location Of Complaint" Font-Overline="False" Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </th>
            </tr>
            <tr>
            <td>
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtcmp_add" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td><asp:Label ID="lbladd" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="Label5" runat="server" Text="Area"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcmp_area" runat="server">
                </asp:DropDownList>
            </td>
            <td><asp:Label ID="lblarea" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
             </tr>
            <tr><td><asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label></td>
            <td><asp:TextBox ID="txtcmp_pin" runat="server" Autocomplete="off" MaxLength="6"></asp:TextBox></td>
            <td><asp:Label ID="lblpin" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

            </tr>
            <tr>
            <td>
            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcmp_city" runat="server" Text="Ahmedabad" ReadOnly="True"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td rowspan="2">
            <asp:Label ID="Label7" runat="server" Text="Contact No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcmp_home" runat="server" TextMode="SingleLine" placeholder="HOME (Optional)" Autocomplete="off"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
                <asp:TextBox ID="txtcmp_mobile" runat="server" TextMode="SingleLine" placeholder="MOBILE (Required)" MaxLength="10" Autocomplete="off"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblcnomob" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

            </tr>
            </table>
        </div>
        <div class="right">
        <br /><br />
            <table style="text-align:left">
            <tr>
            <th>
                <asp:Label ID="Label13" runat="server" Text="Complainant's Details" Font-Underline="True" Font-Bold="True" Font-Italic="True"></asp:Label>
            </th>
            </tr>
            <tr>
            <td>
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtapp_add" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblcadd" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

            </tr>
            <tr>
            <td>
            <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlapp_city" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblcity" runat="server" Text="" ForeColor="Yellow"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtapp_email" runat="server" Autocomplete="off"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblemail" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

            </tr>
            <tr>
            <td rowspan="2">
            <asp:Label ID="Label12" runat="server" Text="Contact No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtapp_home" runat="server" TextMode="SingleLine" placeholder="HOME (Optional)" Autocomplete="off"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
                <asp:TextBox ID="txtapp_mobile" runat="server" TextMode="SingleLine" placeholder="MOBILE (Required)" MaxLength="10" Autocomplete="off"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblccnomob" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

            </tr>
            </table>
            <br />
            <br />
            <br />
            <table align="center">
            <tr>
            <td>
                <asp:Button ID="btsubmit" Cssclass="styled-button-1" runat="server" 
                    Text="Submit" onclick="btsubmit_Click" OnClientClick=" return cmpvalidation()"/>
            </td>
             <td>
                <asp:Button ID="btcancel" Cssclass="styled-button-1" runat="server" Text="Cancel"  UseSubmitBehavior="false"/>
            </td>
            </tr>
            </table>
            </div>
      </div>  
    </div> 
</div>
</asp:Content>

