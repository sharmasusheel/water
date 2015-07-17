<%@ page language="C#" autoeventwireup="true" inherits="UserProfile, App_Web_j5igmvxy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function profileval() {

        var regex = /^[a-zA-Z]{2,15}$/;
        var emailPat = /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/; 
        
        var fnm = document.getElementById("txtfnm").value;
        var matchfnm = fnm.match(regex);

        var lnm = document.getElementById("txtlnm").value;
        var matchlnm = lnm.match(regex);

        var age = document.getElementById("txtage").value;
        var email = document.getElementById("txtemail").value;
        var matchemail = email.match(emailPat);
        var mob = document.getElementById("txtmob").value;
        var pin = document.getElementById("txtpin").value;

        if (matchfnm == null) {
            alert("Please enter valid first-name.!");
            return false;
        }
        if (matchlnm == null) {
            alert("Please enter valid last-name.!");
            return false;
        }

        if (age >= 99 || isNaN(age) || age == "") {
            alert("Please enter valid age.!");
            return false;
        }

        if (matchemail == null) {
            alert("Pleae enter valid email.!");
            return false;
        }

        if (mob.length != 10 || mob == "" || isNaN(mob)) {
            alert("Pleae enter valid Mobile Number.!");
            return false;
        }

        if (pin.length != 6 || isNaN(pin) || pin == "") {
            alert("Pleae enter valid Pincode.!");
            return false;
        }

     }
</script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 100px;
            width: 82px;
        }
    </style>
<link href="css/template.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color:White">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div style="float:right;margin-top:250px;margin-right:550px;overflow:visible;position:relative">
            
            
              
         <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/updt1.gif" />
            </ProgressTemplate>
            
         </asp:UpdateProgress>
               
            
            </div>

            <div style="position:absolute;background-color:White">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div align="left" style="position:fixed;float:left;height:100%;width:200px;border-bottom:5px solid Black;border-right:5px solid Black;border-left:5px solid Black;border-top:5px solid Black; background-color: Green">
        <asp:Label ID="lblacc" runat="server" Text="My Account" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
        <br />
        <hr style="background-color:Gray;height:5px" />
        <div align="right">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Large">
        </asp:SiteMapPath>
        <hr style="background-color:Gray;height:5px" />
        <table style="text-align:right;font-size:large;color:Black"> 
        <tr><td><asp:LinkButton ID="lnk1" runat="server" ForeColor="White" onclick="lnk1_Click">General</asp:LinkButton></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:LinkButton ID="lnk2" runat="server" ForeColor="White" onclick="lnk2_Click">Edit Profile</asp:LinkButton></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:LinkButton ID="lnk3" runat="server" ForeColor="White" 
                onclick="lnk3_Click">Change Password</asp:LinkButton></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:LinkButton ID="lnk4" runat="server" ForeColor="White" 
                onclick="lnk4_Click">Connection</asp:LinkButton></td></tr>
        <tr><td></td></tr>
        <tr><td><asp:LinkButton ID="lnk5" runat="server" ForeColor="White" 
                onclick="lnk5_Click">Complaint</asp:LinkButton></td></tr>
        <tr><td>
            <asp:LinkButton ID="lnk6" runat="server" ForeColor="White" 
            onclick="lnk6_Click">Logout</asp:LinkButton></td></tr>
        <tr><td></td></tr>
         </table>
        </div>
    </div>
                
                
    <div style="background-color:White;color: #0000FF;width:83%;height:auto;margin-left:212px;position:absolute">
       <asp:MultiView ID="mvuser" runat="server" ActiveViewIndex="0">
    

            <asp:View ID="vgenp" runat="server">
                
            <div style="float:left">
            <div style="float:left;width:100%">
            <h4 align="left">General Profile</h4>
            <hr />
            <table align="left" style="text-align:right">
            <tr><td rowspan="7" style="width:100px;height:100px">
                <asp:Image ID="imgdefpro" runat="server" ImageUrl="" Width="300px" Height="300px"/>
            </td></tr>
            <tr><td rowspan="6"></td></tr>
            <tr><td>
                <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lblfnm" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label3" runat="server" Text="Last Name :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lbllnm" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label5" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lblunm" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label7" runat="server" Text="Age :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lblage" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label9" runat="server" Text="Join Date :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lbldoj" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            </table>
            <br /><br />
            </div>
           
            <div style="float:left;width:100%">
            <br /><br />
             <h4 align="left">Contact</h4>
             <hr />
             <br />
            <table align="left" style="text-align:right">
            <tr><td>
                <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label6" runat="server" Text="Mobile :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:Label ID="lblmob" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            </table>
            <br /><br />
            </div>
            <div style="float:left;width:100%">
            <br /><br />
            <h4 align="left">Address</h4>
            <hr />
            <table align="left" style="text-align:right">
            <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Location :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:TextBox ID="txtloc" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
            </td>
            </tr>
            
            <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Pincode :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:Label ID="lblpin" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="City :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
            </table>
            <br /><br />
            </div>
            </div>
    
            </asp:View>

            <asp:View ID="veditp" runat="server">
            
            <div style="float:left">
            <div style="float:left">
            <table align="left" style="text-align:right">
            <tr><td colspan="2">
                <asp:Image ID="imgpropic" Width="300px" Height="300px" runat="server"/>
            </td></tr>
            <tr><td align="left">
                <asp:FileUpload ID="fupropic" runat="server" />
            </td>
            <td rowspan="3" valign="bottom">
            <asp:Button ID="btnimgcncl" runat="server" Text="Cancel" 
                    onclick="btnimgcncl_Click" />
            </td>
            </tr>
            <tr><td align="left">
                <asp:Button ID="btnimgtry" runat="server" Text="Try it!" 
                    onclick="btnimgtry_Click" UseSubmitBehavior="false"/><br />
                    <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label>
                    </td></tr>
            <tr><td align="left">
                <asp:Button ID="btnimgsave" runat="server" Text="Save" 
                    onclick="btnimgsave_Click" UseSubmitBehavior="false" />
            </td></tr>
            </table>
            
            </div>
           <div style="float:left;width:100%">
            <br /><br />
            <h4 align="left">General Profile</h4>
            <hr />
            <table align="left" style="text-align:right">
            <tr><td rowspan="6" style="width:100px;height:100px">
                &nbsp;</td></tr>
            <tr><td rowspan="5"></td></tr>
            <tr><td>
                <asp:Label ID="Label4" runat="server" Text="First Name :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:TextBox ID="txtfnm" runat="server" required=required></asp:TextBox>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label12" runat="server" Text="Last Name :"></asp:Label>
            </td>
            <td></td>
            <td>
             <asp:TextBox ID="txtlnm" runat="server" required=required></asp:TextBox>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label14" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td></td>
            <td>
             <asp:TextBox ID="txtunm" runat="server" ReadOnly="true" required=required></asp:TextBox></td>
            </tr>
            <tr><td>
                <asp:Label ID="Label16" runat="server" Text="Age :"></asp:Label>
            </td>
            <td></td>
            <td>
            <asp:TextBox ID="txtage" runat="server" required=required Autocomplete="off"></asp:TextBox>
            </td>
            </tr>
            </table>
            <br /><br />
            </div>
            <div style="float:left;width:100%">
            <br /><br />
             <h4 align="left">Contact</h4>
             <hr />
             <br />
            <table align="left" style="text-align:right">
            <tr><td>
                <asp:Label ID="Label18" runat="server" Text="Email :"></asp:Label>
            </td>
            <td></td>
            <td>
             <asp:TextBox ID="txtemail" runat="server" required=required Autocomplete="off"></asp:TextBox>
            </td>
            </tr>
            <tr><td>
                <asp:Label ID="Label20" runat="server" Text="Mobile :"></asp:Label>
            </td>
            <td></td>
            <td>
             <asp:TextBox ID="txtmob" runat="server" required=required Autocomplete="off" MaxLength="10"></asp:TextBox>
            </td>
            </tr>
            </table>
            </div>
            <br /><br />
            <div style="float:left;width:100%">
            <br /><br />
            <h4 align="left">Address</h4>
            <hr />
            <table align="left" style="text-align:right">
            <tr>
            <td>
                <asp:Label ID="Label22" runat="server" Text="Location :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:TextBox ID="txtloc2" runat="server" TextMode="MultiLine" required=required></asp:TextBox>
            </td>
            </tr>
            
            <tr>
            <td>
                <asp:Label ID="Label23" runat="server" Text="Pincode :"></asp:Label>
            </td>
            <td></td>
            <td>
                 <asp:TextBox ID="txtpin" runat="server" required=required Autocomplete="off" MaxLength="6"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label25" runat="server" Text="City :"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:DropDownList ID="ddluserct" runat="server">
                </asp:DropDownList>            
            </td>
            </tr>
            <tr><td></td></tr>
            </table>
            <br /><br /><br /><br /><br /><br /><br /><br />
            </div>

            <div align="center" style="float:left;width:100%">    
            <table>
            <tr><td>
                <asp:Button ID="btnupdt" runat="server" Text="Update" CssClass="styled-button-1" onclick="btnupdt_Click" OnClientClick="return profileval()"/></td><td></td>
                <td>
                    <asp:Button ID="btncncl" runat="server" Text="Cancel" CssClass="styled-button-1" onclick="btncncl_Click" UseSubmitBehavior="false" /></td></tr>
            </table>
            <br /><br />
            </div>
            </div>

            </asp:View>

            
            

    
            <asp:View ID="vchngpass" runat="server">
            <div>
            
        <div>
            <table align="left" style="width:350px">
            <tr><td>Enter Your Old Password :</td><td><asp:TextBox ID="txtoldpass" runat="server" AutoComplete="off" required=required></asp:TextBox></td></tr>
            <tr><td>
                <asp:Button ID="btnverify" runat="server" Text="Verify" 
                    onclick="btnverify_Click" /></td></tr>
            <tr><td>
                <asp:Label ID="lbloldpass" runat="server" Text=""></asp:Label></td></tr>
            </table>
            <div>
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                
            <table align="left" style="width:350px;margin-top:-55px;margin-left:400px">
            <tr><td>
                <asp:Label ID="lblnwpass" runat="server" Text="Enter New Password :"></asp:Label></td><td>
                <asp:TextBox ID="txtnewpass" runat="server" AutoComplete="off" required=required></asp:TextBox></td></tr>
            <tr><td>
                <asp:Label ID="lblnwpass2" runat="server" Text="Re-Enter New Password :"></asp:Label></td><td>
                <asp:TextBox ID="txtcnfmpass" runat="server" AutoComplete="off" required=required></asp:TextBox></td></tr>
             <tr>
                <td>
                    <asp:Button ID="btnsvpass" runat="server" Text="Save" 
                        onclick="btnsvpass_Click" /></td>
             </tr>
             <tr><td>
                 <asp:Label ID="lblsvpass" runat="server" Text=""></asp:Label></td></tr>
            </table>
            </asp:Panel>
            </div> 

            </div>
            </asp:View>
 
            
            <asp:View ID="vcon" runat="server">
            
            <div>
                <asp:Label ID="lblnodata" Font-Size="Larger" Width="500px" ForeColor="Red" runat="server" Text=""></asp:Label>
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    onpageindexchanging="FormView1_PageIndexChanging" DataKeyNames="con_ono" Width="500px">
                <ItemTemplate>
                <div align="left" style="text-align:right">
                <table>
                <tr><th>Connection Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Application Date :</td>
                    <td><asp:Label ID="Label13" runat="server" Text='<%# bind("con_date") %>'></asp:Label></td>
                <tr><td>Type :</td>
                    <td><asp:Label ID="lbltype" runat="server" Text='<%# bind("con_type") %>'></asp:Label></td>
                <tr><td>Purpose :</td>
                    <td><asp:Label ID="lblpur" runat="server" Text='<%# bind("con_purpose") %>'></asp:Label></td>
                </tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%# bind("con_add") %>'></asp:TextBox></td>
                </tr>
                <tr><td>Area :</td>
                    <td><asp:Label ID="lblarea" runat="server" Text='<%# bind("con_area") %>'></asp:Label></td>
                </tr>
                <tr><td>Pin :</td>
                    <td><asp:Label ID="lblpin" runat="server" Text='<%# bind("con_pin") %>'></asp:Label></td>
                </tr>
                <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblhome" runat="server" Text='<%# bind("con_home") %>'></asp:Label></td>
                </tr>
                <tr><td>Mobile : <asp:Label ID="lblmob" runat="server" Text='<%# bind("con_mobile") %>'></asp:Label></td>
                    
                </tr>
                <tr><td>No Of Flores :</td>
                    <td><asp:Label ID="lblflores" runat="server" Text='<%# bind("con_flore") %>'></asp:Label></td>
                </tr>
                <tr><td>Area In Sqm :</td>
                    <td><asp:Label ID="lblsqm" runat="server" Text='<%# bind("con_area_sq") %>'></asp:Label></td>
                </tr>
                <tr><td>Order No. :</td>
                    <td><asp:Label ID="lblono" runat="server" Text='<%# bind("con_ono") %>'></asp:Label></td>
                </tr>
                <tr><td>Status :</td>
                    <td><asp:Label ID="lblstatus" runat="server" Text='<%# bind("con_status") %>'></asp:Label></td>
                </tr>
                </table>
                </div> <%--Div ends here--%>
               <br /><br /><br />
                <div align="right" style="text-align:right">
                <table>
                <tr><th>Applicant's Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtappadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%# bind("app_add") %>'></asp:TextBox></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>City :</td>
                    <td><asp:Label ID="lblappct" runat="server" Text='<%# bind("cityname") %>'></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>Email :</td>
                    <td><asp:Label ID="lblappeml" runat="server" Text='<%# bind("app_email") %>'></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                 <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblapphm" runat="server" Text='<%# bind("app_home") %>'></asp:Label></td>
                </tr>
            
                <tr><td>Mobile : <asp:Label ID="lblappmob" runat="server" Text='<%# bind("app_mobile") %>'></asp:Label></td>
                    <td></td>
                </tr>
                </table>
                </div> <%--Div ends here--%>
                </ItemTemplate>
                </asp:FormView>
                    <br />
                <div align="left"><asp:Button ID="btnpdfcon" CssClass="styled-button-1" 
                        runat="server" Text="Download Pdf" onclick="btnpdfcon_Click" />
                </div><br /><br />
                </div>
            
            </asp:View>

           
            <asp:View ID="vcmp" runat="server">
            
            <div>
            <asp:Label ID="lblnodata1" Font-Size="Larger" Width="500px" ForeColor="Red" runat="server" Text=""></asp:Label>
                <asp:FormView ID="FormView2" runat="server" AllowPaging="True" 
                    onpageindexchanging="FormView2_PageIndexChanging" DataKeyNames="cmp_ono" Width="500px">
                <ItemTemplate>
                <div align="left" style="text-align:right">
                <table>
                <tr><th>Complaint Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Application Date :</td>
                    <td><asp:Label ID="Label13" runat="server" Text='<%# bind("cmp_date") %>'></asp:Label></td>
                <tr><td>Category :</td>
                    <td><asp:Label ID="lblcat" runat="server" Text='<%# bind("cmp_cat") %>'></asp:Label></td>
                <tr><td>Description :</td>
                    <td><asp:Label ID="lbldes" runat="server" Text='<%# bind("cmp_des") %>'></asp:Label></td>
                </tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%# bind("cmp_add") %>'></asp:TextBox></td>
                </tr>
                <tr><td>Area :</td>
                    <td><asp:Label ID="lblarea" runat="server" Text='<%# bind("cmp_area") %>'></asp:Label></td>
                </tr>
                <tr><td>Pin :</td>
                    <td><asp:Label ID="lblpin" runat="server" Text='<%# bind("cmp_pin") %>'></asp:Label></td>
                </tr>
                <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblhome" runat="server" Text='<%# bind("cmp_home") %>'></asp:Label></td>
                </tr>
                <tr><td>Mobile : <asp:Label ID="lblmob" runat="server" Text='<%# bind("cmp_mobile") %>'></asp:Label></td>
                </tr>
                <tr><td>Order No. :</td>
                    <td><asp:Label ID="lblono" runat="server" Text='<%# bind("cmp_ono") %>'></asp:Label></td>
                </tr>
                <tr><td>Status :</td>
                    <td><asp:Label ID="lblstatus" runat="server" Text='<%# bind("cmp_status") %>'></asp:Label></td>
                </tr>
                </table>
                </div> <%--Div ends here--%>
               <br /><br /><br />
                <div align="right" style="text-align:right">
                <table>
                <tr><th>Applicant's Details : -<br /><br /></th></tr>
                <tr><td></td></tr>
                <tr><td>Address :</td>
                    <td><asp:TextBox ID="txtappadd" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%# bind("app_add") %>'></asp:TextBox></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>City :</td>
                    <td><asp:Label ID="lblappct" runat="server" Text='<%# bind("cityname") %>'></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                <tr><td>Email :</td>
                    <td><asp:Label ID="lblappeml" runat="server" Text='<%# bind("app_email") %>'></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                 <tr><td rowspan="3">Contact :</td>
                </tr>
                <tr><td>Home : <asp:Label ID="lblapphm" runat="server" Text='<%# bind("app_home") %>'></asp:Label></td>
                </tr>
            
                <tr><td>Mobile : <asp:Label ID="lblappmob" runat="server" Text='<%# bind("app_mobile") %>'></asp:Label></td>
                    <td></td>
                </tr>
                </table>
                </div> <%--Div ends here--%>
             
                </ItemTemplate>
                </asp:FormView>
                <br />
                <div align="left">
                 <asp:Button ID="btnpdfcmp" CssClass="styled-button-1" runat="server" 
                        Text="Download Pdf" onclick="btnpdfcmp_Click"/></div>
                <br />
                <br /></div>
            
            </asp:View>
        </asp:MultiView>
        </div>
        </ContentTemplate>
        <Triggers>
        <asp:PostBackTrigger ControlID="btnupdt" />
        <asp:PostBackTrigger ControlID="btnimgsave" />
        <asp:PostBackTrigger ControlID="btnimgtry" />
        </Triggers>
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
