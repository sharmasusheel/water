<%@ page title="" language="C#" masterpagefile="~/MAIN.master" autoeventwireup="true" inherits="Status, App_Web_frihkgyh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/jscript">
    function statusval() 
    {
        var rbt0 = document.getElementById("ContentPlaceHolder2_RadioButtonList1_0");
        var rbt1 = document.getElementById("ContentPlaceHolder2_RadioButtonList1_1");
        var ono = document.getElementById("ContentPlaceHolder2_txtunmstatus");
        var unm = document.getElementById("ContentPlaceHolder2_txtonostatus");
        if (rbt0.checked == false && rbt1.checked == false) 
        {
            alert("Please Select Service.!");
            return false;
        }

         }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section" style="font-size:xx-large">
           <ul style="padding-top:0px">
                <li><a href="Login.aspx">Home</a></li>
                <li><a href="#">Services</a>
                <ul>
                    <li><a href="Connection.aspx">Connection</a></li>
                    <li><a href="Complaint.aspx">Complaint</a></li>
                </ul>
                </li>
                <li><a href="Status.aspx" class="current">Status</a></li>
                <li><a href="Feedback.aspx">Feedback</a></li> 
                <li><a href="#">About US</a></li>
             </ul>
   		</div>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="templatemo_content_container">
         <div id="templatemo_content" align="center">
<div>        
<p  style="font-size:x-large;color:Black;text-align:center;text-decoration:underline"> View Service Status</p>
<hr style="background-color:Black;width:1000px;height:5px" />
<br /><br />
<div style="float:left;font-size:medium">
<table><tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Select Type Of Status"></asp:Label></td><td></td>
<td><asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem>Complaint</asp:ListItem>
    <asp:ListItem>Connection</asp:ListItem>
    </asp:RadioButtonList>
</td></tr>
<tr><td></td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="UserName :"></asp:Label></td><td></td>
    <td>
        <asp:TextBox ID="txtunmstatus" runat="server"   required=required Autocomplete="off"></asp:TextBox></td>
    </tr>
    <tr><td></td></tr>
    <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Order NO."></asp:Label></td><td></td>
        <td>
            <asp:TextBox ID="txtonostatus" runat="server" required=required MaxLength="12" Autocomplete="off"></asp:TextBox></td>
        </tr>
       <tr><td></td></tr>
       <tr><td></td></tr>
       <tr><td></td></tr>
       <tr><td></td></tr>
       <tr><td colspan="4" align="center">
           <asp:Button ID="btnstatus" runat="server" CssClass="styled-button-1" 
               Text="View Status" onclick="btnstatus_Click" OnClientClick="return statusval()" /></td></tr>
               
</table>
<br /><br />
</div>
<div style="float:right">
    <asp:Label ID="Label4" runat="server" Visible="False" Font-Bold="True" 
        Font-Italic="True" Font-Size="Large" ForeColor="#CC0000" ></asp:Label>
    <asp:GridView ID="gdstatuscon" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                    <asp:Label ID="lblunm" runat="server" Text='<%# bind("con_regunm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Of Application">
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# bind("con_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# bind("con_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:GridView ID="gdstatuscmp" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                    <asp:Label ID="lblunm" runat="server" Text='<%# bind("cmp_regunm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Of Application">
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# bind("cmp_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# bind("cmp_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</div>
</div>
</div>
</div>
</asp:Content>

