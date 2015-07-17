<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="Connection, App_Web_frihkgyh" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function convalidation()
     {
         var tor0 = document.getElementById("ContentPlaceHolder2_rbttype_0");
         var tor1 = document.getElementById("ContentPlaceHolder2_rbttype_1");
         var tor2 = document.getElementById("ContentPlaceHolder2_rbttype_2");
         var tor3 = document.getElementById("ContentPlaceHolder2_rbttype_3");
        var wcp = document.getElementById("ContentPlaceHolder2_txtpurpose").value;
        var add = document.getElementById("ContentPlaceHolder2_txtapp_add").value;
        var city = document.getElementById("ContentPlaceHolder2_ddlapp_city").value;
        var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
        var email = document.getElementById("ContentPlaceHolder2_txtapp_email").value;
        var matchemail = email.match(emailPat);
        var cnomob = document.getElementById("ContentPlaceHolder2_txtapp_mobile").value;

        var poi0 = document.getElementById("ContentPlaceHolder2_ckpoi_0");
        var poi1 = document.getElementById("ContentPlaceHolder2_ckpoi_1");
        var poi2 = document.getElementById("ContentPlaceHolder2_ckpoi_2");
        var poi3 = document.getElementById("ContentPlaceHolder2_ckpoi_3");
        var poi4 = document.getElementById("ContentPlaceHolder2_ckpoi_4");

        var por0 = document.getElementById("ContentPlaceHolder2_ckpor_0");
        var por1 = document.getElementById("ContentPlaceHolder2_ckpor_1");
        var por2 = document.getElementById("ContentPlaceHolder2_ckpor_2");
        var por3 = document.getElementById("ContentPlaceHolder2_ckpor_3");
        var por4 = document.getElementById("ContentPlaceHolder2_ckpor_4");

        var padd = document.getElementById("ContentPlaceHolder2_txtcon_add").value;
        var parea = document.getElementById("ContentPlaceHolder2_ddlcon_area").value;
        var ppin = document.getElementById("ContentPlaceHolder2_txtcon_pin").value;
        var cnomob = document.getElementById("ContentPlaceHolder2_txtcon_mobile").value;
        var flores = document.getElementById("ContentPlaceHolder2_txtcon_flore").value;
        var area_sqm = document.getElementById("ContentPlaceHolder2_txtcon_area_sq").value;
        var str = "true";



        if (tor0.checked == false && tor1.checked == false && tor2.checked == false && tor3.checked == false) {
            var lbl = document.getElementById("ContentPlaceHolder2_lbltor");
            lbl.innerHTML = "*Required.!";
            str = "yes";
         
        }
           if (wcp == "") 
        {
            var lbl = document.getElementById("ContentPlaceHolder2_lblwcp");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (add == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lbladd");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (city == "0") {
            var lbl = document.getElementById("ContentPlaceHolder2_lblcity");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (matchemail == null) {
            var lbl = document.getElementById("ContentPlaceHolder2_lblemail");
            lbl.innerHTML = "*Please Enter Valid Email.!";
            str = "yes";
        }
        if (cnomob.length != 10 || cnomob == "" || isNaN(cnomob)) {
            var lbl = document.getElementById("ContentPlaceHolder2_lblmob");
            lbl.innerHTML = "*Please Enter Valid Mobile No.!";
            str = "yes";
        }
        if (poi0.checked == false && poi1.checked == false && poi2.checked == false && poi3.checked == false && poi4.checked == false) {
            var lbl = document.getElementById("ContentPlaceHolder2_lblpoi");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (por0.checked == false && por1.checked == false && por2.checked == false && por3.checked == false && por4.checked == false) {
            var lbl = document.getElementById("ContentPlaceHolder2_lblpor");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (padd == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_plbladd");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (parea == "0") {
            var lbl = document.getElementById("ContentPlaceHolder2_plblarea");
            lbl.innerHTML = "*Required.!";
            str = "yes";
        }
        if (ppin.length != 6 || isNaN(ppin) || ppin == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_plblpin");
            lbl.innerHTML = "*Please Enter Valid Pin.!";
            str = "yes";
        }
        if (cnomob.length != 10 || cnomob == "" || isNaN(cnompb)) {
            var lbl = document.getElementById("ContentPlaceHolder2_plblmob");
            lbl.innerHTML = "*Please Enter Valid Mobile No.!";
            str = "yes";
        }
        if (flores == "" || isNaN(flores) || flores.length != 20)
         {
             var lbl = document.getElementById("ContentPlaceHolder2_plblflore");
             lbl.innerHTML = "**Please Enter Valid No.!";
            str = "yes";
        }
        if (area_sqm == "" || isNaN(area_sqm)) 
        {
            var lbl = document.getElementById("ContentPlaceHolder2_plblarea_sq");
            lbl.innerHTML = "**Please Enter Valid No.!";
            str = "yes";
        }
        if (str == "yes") {
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
                <li><a href="#" class="current">Services</a>
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
<div id="templatemo_content_container" style="width:1500px;height:800px">
<div id="templatemo_content">
<hr style="background-color:Black;width:1000px;height:5px" />
<p  style="font-size:x-large;color:Black;text-align:center;text-decoration:underline">Connection-Form</p>
<hr style="background-color:Black;width:1000px;height:5px" />
<br /><br />
<div id="wrapper" style="width:1410px">
<div class="left" style="margin-left:80px;height:800px">
<table width="480px" style="text-align:left">
<tr>
 <td align="left">
    <asp:Label ID="Label1" runat="server" Text="Type Of Request" Font-Underline="True" Font-Bold="True" Font-Italic="True"></asp:Label>
 </td>
 <td style="font-family:Calibri">
        <asp:RadioButtonList ID="rbttype" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem>Single Residence</asp:ListItem>
            <asp:ListItem>Society</asp:ListItem>
            <asp:ListItem>Mall</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:RadioButtonList>
     </td>
     
     <td><asp:Label ID="lbltor" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
</tr>
<tr>
<td>
    <asp:Label ID="Label15" runat="server" Text="Water Connection Purpose" Font-Underline="True" Font-Bold="True" Font-Italic="True"></asp:Label>
</td>
<td align="left">
    <asp:TextBox ID="txtpurpose" runat="server" TextMode="MultiLine"></asp:TextBox>
  </td>

     <td><asp:Label ID="lblwcp" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
 </tr>
</table>
<br />
<table style="text-align:left"> 
 <tr>
     <th>
         <asp:Label ID="Label13" runat="server" Text="Applicant's Details" Font-Underline="True" Font-Bold="True" Font-Italic="True"></asp:Label>
            </th>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr>
            <td>
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtapp_add" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            
     <td><asp:Label ID="lbladd" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td >
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
            
     <td><asp:Label ID="lblmob" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            </table>
            <br />

<table style="width:800px;height:200px;text-align:left">
            <tr><th>
                <asp:Label ID="Label18" runat="server" Text="Valid Documents" 
                    Font-Overline="False" Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </th></tr>
            <tr><td>
                <asp:Label ID="Label16" runat="server" Text="Proof Of Identity"></asp:Label></td>
               <td style="font-family:Calibri">
                   <asp:CheckBoxList ID="ckpoi" runat="server" 
                       RepeatDirection="Horizontal">
                       <asp:ListItem>Driving License</asp:ListItem>
                       <asp:ListItem>Ration Card</asp:ListItem>
                       <asp:ListItem>Voting ID</asp:ListItem>
                       <asp:ListItem>Pan Card</asp:ListItem>
                       <asp:ListItem>Passport Card</asp:ListItem>
                  </asp:CheckBoxList>
               </td> 
               </tr> 
               <tr>      
                <td></td>
                    <td><asp:Label ID="lblpoi" runat="server" Text="" ForeColor="Yellow"></asp:Label></td></tr>
               <tr>
                <td>
                 <asp:Label ID="Label17" runat="server" Text="Proof Of Residence"></asp:Label>
                </td>
                <td style="font-family:Calibri">
                    <asp:CheckBoxList ID="ckpor" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Driving Licence</asp:ListItem>
                        <asp:ListItem>Passport Card</asp:ListItem>
                        <asp:ListItem>Election Card</asp:ListItem>
                        <asp:ListItem>Electricity Bill</asp:ListItem>
                        <asp:ListItem>Telephone Bill</asp:ListItem>
                    </asp:CheckBoxList>
                </td></tr>
                <tr><td></td>
               <td><asp:Label ID="lblpor" runat="server" Text="" ForeColor="Yellow"></asp:Label></td></tr>
</table>
</div>
<div class="right" style="margin-left:350px;text-align:left">
<table>
            <tr><td></td>
            </tr>
            <tr>
            <th>
            <asp:Label ID="Label3" runat="server" Text="Property Details" Font-Overline="False" Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </th>
            <td></td>
            </tr>
            <tr><td></td>
            </tr>
            
            <tr>
            <td>
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtcon_add" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
     <td><asp:Label ID="plbladd" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="Label5" runat="server" Text="Area"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcon_area" runat="server">
                </asp:DropDownList>
            </td><td>
                <asp:Label ID="plblarea" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            
            </tr>
            <tr><td><asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label></td>
            <td><asp:TextBox ID="txtcon_pin" runat="server" Autocomplete="off" MaxLength="6"></asp:TextBox></td>
            
     <td><asp:Label ID="plblpin" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcon_city" runat="server" Text="Ahmedabad" ReadOnly="True"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td rowspan="2">
            <asp:Label ID="Label7" runat="server" Text="Contact No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcon_home" runat="server" TextMode="SingleLine" placeholder="HOME (Optional)" Autocomplete="off"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
                <asp:TextBox ID="txtcon_mobile" runat="server" TextMode="SingleLine" placeholder="MOBILE (Required)" MaxLength="10" Autocomplete="off"></asp:TextBox>
            </td>
            <td><asp:Label ID="plblmob" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="NO. Of Floors"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcon_flore" runat="server" Autocomplete="off"></asp:TextBox>
                </td>
                <td style="width:500px"><asp:Label ID="plblflore" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Area (In Sq M)"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtcon_area_sq" runat="server" Autocomplete="off"></asp:TextBox></td>
                    <td style="width:500px"><asp:Label ID="plblarea_sq" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>
                </tr>
</table>
<br />
<br />
<div align="left">
    <asp:Label ID="Label19" runat="server" Text="Declaration" Font-Overline="False" Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
<br />
<br />
<div>
I hereby declare that all the information furnished by me is true to the best of my knowledge and if any discrepancies are found , I
will be responsible for disconnection of services by the AMC without any prior notice and any other legal action taken by AMC.<br />
<%--2. I declare that there is no dispute on property and there is no stay from any court of law against obtaining water/ sewerage
connection.<br />
3. I further undertake that in case of any dispute about the ownership of the property i will absolve AMC from any legal battle in the
court of law as the water connection applied for is related to supply of potable water and not to decide the ownership of property.<br />
4. I further undertake to pay the charges as and when demanded by AMC, and in the event of non-payment, AMC will be at liberty to
disconnect the services being provided by AMC.<br />--%>
</div>
<br />
<asp:CheckBox ID="cki_agree" runat="server" Checked="true" Text="I Agree"/>
<br />
    <asp:Label ID="lbli_agree" runat="server" Text="YOU MUST HAVE TO AGREE WITH TERMS & CONDITIONS" Visible="false"></asp:Label>
<br />
<table align="center">
            <tr>
            <td>
                <asp:Button ID="bt_submit" Cssclass="styled-button-1" runat="server" 
                    Text="Submit" OnClientClick="return convalidation()" onclick="bt_submit_Click"  />
            </td>
             <td>
                <input type="reset" class="styled-button-1" value="Cancle" UseSubmitBehavior="false"/>
            </td>
            </tr>
            
</table>
<br />
</div>
</div>
</div>
</div>
</div>
</asp:Content>

