<%@ page title="" language="C#" masterpagefile="~/City Employee/City Emp.master" autoeventwireup="true" inherits="City_Employee_Registration, App_Web_t35ryucl" %>
<asp:Content ID="head1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function validation() {

        var regex = /^[a-zA-Z]{2,15}$/;
        var fname = document.getElementById("ContentPlaceHolder2_txtfnm").value;
        var matchfnm = fname.match(regex);
        var lname = document.getElementById("ContentPlaceHolder2_txtlnm").value;
        var matchlnm = fname.match(regex);
        var uname = document.getElementById("ContentPlaceHolder2_txtunm").value;
        var uniqueuser = document.getElementById("ContentPlaceHolder2_hfunm").value;
        var add = document.getElementById("ContentPlaceHolder2_txtadd").value;
        var pin = document.getElementById("ContentPlaceHolder2_txtpin").value;
        var age = document.getElementById("ContentPlaceHolder2_txtage").value;
        var emailPat = /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/;
        var uniquemail = document.getElementById("ContentPlaceHolder2_hdEemail").value;
        var email = document.getElementById("ContentPlaceHolder2_txtemail").value;
        var matchemail = email.match(emailPat);
        var pass = document.getElementById("ContentPlaceHolder2_txtpass").value;
        var cnfpass = document.getElementById("ContentPlaceHolder2_txtcnfpass").value;
        var city = document.getElementById("ContentPlaceHolder2_ddlcity").value;
        var cno = document.getElementById("ContentPlaceHolder2_txtcno").value;
        var str = "true";


        if (matchfnm == null || fname == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lfnm");
            lbl.innerHTML = "*Please Enter Valid Name.!";
            str = "yes";
        }

        if (matchlnm == null || lname == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_llnm");
            lbl.innerHTML = "*Please Enter Valid Name.!";
            str = "yes";
        }

        if (uname == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lunm");
            lbl.innerHTML = "*This field is Required.!";
            str = "yes";
        }

        //        if (uniqueuser == "*Username Already Exists!!") 
        //            {
        //                str = "yes";
        //            }

        if (add == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_ladd");
            lbl.innerHTML = "*This field is Required.!";
            str = "yes";
        }


        if (pin.length != 6 || isNaN(pin) || pin == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lpin");
            lbl.innerHTML = "*Please Enter Valid Pin.!";
            str = "yes";
        }

        if (age >= 99 || isNaN(age) || age == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lage");
            lbl.innerHTML = "*Please Enter Valid Age.!";
            str = "yes";
        }

        if (matchemail == null) {
            var lbl = document.getElementById("ContentPlaceHolder2_lemail");
            lbl.innerHTML = "*Please Enter Valid Email.! ";
            document.getElementById("ContentPlaceHolder2_txtemail").focus;
            str = "yes";
        }

        if (pass.length >= 15 || pass == "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lpass");
            lbl.innerHTML = "*Please Enter Valid Password.!";
            str = "yes";
        }

        if (cnfpass.length >= 15 || cnfpass == "" || cnfpass != pass) {
            var lbl = document.getElementById("ContentPlaceHolder2_lcnfpass");
            lbl.innerHTML = "*Password Did Not Match.!";
            str = "yes";
        }

        if (cnfpass == pass && cnfpass != "") {
            var lbl = document.getElementById("ContentPlaceHolder2_lcnfpass");
            lbl.innerHTML = "*Password Matched.!";
            lbl.style.color = "Lime";
        }

        if (city == "0") {
            var lbl = document.getElementById("ContentPlaceHolder2_lddlcity");
            lbl.innerHTML = "*Please Select Valid City.!";
            str = "yes";
        }

        if (cno.length != 10 || cno == "" || isNaN(cno)) {
            var lbl = document.getElementById("ContentPlaceHolder2_lcno");
            lbl.innerHTML = "*Please Enter Valid Mobile No.!";
            str = "yes";
        }

        if (str == "yes") {
            return false;
        }

        if (str == "true" && uniqueuser == "yes" && uniquemail =="yes") {
            return true;1
        }

        else {
            return false;
        }

    }
</script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <ul>
                <li><a href="Home.aspx">`Home</a></li>
                <li><a href="Connection.aspx">Connection</a></li>
                <li><a href="Complaint.aspx">Complaints</a></li>  
                <li><a href="Registration.aspx" class="current">Registration</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="#">About US</a></li>                     
            </ul>  
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
<div id="templatemo_content">
    
<div id="wrapper" style="width:1410px">
    <br /><br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table align="center" style="text-align:left">
    <tr><td>
  <asp:Label ID="ldlsuccess" runat="server" Text="" Visible="false" ForeColor="Black" Font-Size="Large"></asp:Label></td></tr>
  <tr><td></td></tr>
  <tr><td></td></tr>
    <tr>
    <th>
        <asp:Label ID="Label12" runat="server" Text="Registration Form" Font-Underline="True" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label></th></tr>
        
    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr><td></td></tr> 
    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr><td></td></tr> 
    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr><td>
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtfnm" runat="server"></asp:TextBox></td>
            <td></td>
        <td><asp:Label ID="lfnm" runat="server" ForeColor="Yellow"></asp:Label></td>
        </tr>
       <tr><td></td></tr>
       
        <tr><td>
            <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtlnm" runat="server"></asp:TextBox></td>
                <td></td>
        <td><asp:Label ID="llnm" runat="server" ForeColor="Yellow"></asp:Label></td>
            </tr>
              <tr><td></td></tr>

            <tr><td>
                <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtunm" runat="server" AutoPostBack="True" 
                        ontextchanged="txtunm_TextChanged" Autocomplete="off"></asp:TextBox></td>
                        <td></td>
        <td><asp:Label ID="lunm" runat="server" ForeColor="Yellow"></asp:Label></td></tr>
                      <tr> <td></td> <td>
                            <asp:Label ID="lbluniqueemp" runat="server" Text=""></asp:Label>
                            <asp:HiddenField ID="hfunm" runat="server" />
                            </td></tr>
   
                
                  <tr><td></td></tr>

                  <tr><td>
                      <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
                     <td>
                         <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                         <td></td>
        <td><asp:Label ID="ladd" runat="server" ForeColor="Yellow"></asp:Label></td> 
                      </tr>
                      <tr><td></td></tr>
                      <tr><td>
                          <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txtpin" runat="server" Autocomplete="off" MaxLength="6"></asp:TextBox></td>
                          <td></td>
        <td><asp:Label ID="lpin" runat="server" ForeColor="Yellow"></asp:Label></td>
                      
                      </tr>
                   <tr><td></td></tr>
                        <tr><td>
                            <asp:Label ID="Label11" runat="server" Text="Age"></asp:Label></td>
                     <td>
                            <asp:TextBox ID="txtage" runat="server" Autocomplete="off"></asp:TextBox></td>
                            <td></td>
        <td><asp:Label ID="lage" runat="server" ForeColor="Yellow"></asp:Label></td>
                       </tr>
                       <tr><td></td></tr>
                    <tr><td>
                        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" ontextchanged="txtemail_TextChanged" 
                                AutoPostBack="True" Autocomplete="off"></asp:TextBox></td>
                            <td></td>
        <td><asp:Label ID="lemail" runat="server" ForeColor="Yellow"></asp:Label></td>
                        </tr>
                          <tr><td>
                              <asp:HiddenField ID="hdEemail" runat="server" />
                              </td></tr>

                          <tr><td>
                              <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label></td>
                              <td>
                                  <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox></td>
                                  <td></td>
        <td><asp:Label ID="lpass" runat="server" ForeColor="Yellow"></asp:Label></td>
                               </tr>
                                 <tr><td></td></tr>

                               <tr><td>
                                   <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label></td>
                                   <td>
                                       <asp:TextBox ID="txtcnfpass" runat="server" TextMode="Password"></asp:TextBox></td>
                                       <td></td>
        <td><asp:Label ID="lcnfpass" runat="server" ForeColor="Yellow"></asp:Label></td>
                                   </tr>
                                     <tr><td></td></tr>
                                     <tr><td>
                                         <asp:Label ID="Label8" runat="server" Text="City"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="ddlcity" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                        <td></td>
        <td><asp:Label ID="lddlcity" runat="server" ForeColor="Yellow"></asp:Label></td>
                                        </tr>
                                         <tr><td></td></tr>
                                                 <tr><td></td></tr>
                                                   <tr><td>
                                                       <asp:Label ID="Label10" runat="server" Text="Contact No."></asp:Label></td>
                                                      <td>
                                                          <asp:TextBox ID="txtcno" runat="server" Autocomplete="off" MaxLength="10"></asp:TextBox></td> 
                                                          <td></td>
                                                            <td><asp:Label ID="lcno" runat="server" ForeColor="Yellow"></asp:Label></td>
                                                       </tr>
                                                <tr><td></td></tr>

    </table>
    </ContentTemplate>
    </asp:UpdatePanel>
    <br /><br /><br />
    <table align="center">
            <tr>
            <td>
                <asp:Button ID="Button2" CssClass="styled-button-1"  runat="server" 
                    Text="Submit" onclick="Button2_Click" OnClientClick="return validation()"/>
            </td>
            <td></td>
             <td>
                 <asp:Button ID="btncncl" CssClass="styled-button-1" runat="server" 
                     Text="Cancle" onclick="btncncl_Click1"  UseSubmitBehavior="false"/>
            </td>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr> <tr><td></td></tr>
            <tr><td></td></tr>  
            </table>
            <br />
</div>
</div>
</div>
</asp:Content>

