<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="favourites.aspx.cs" Inherits="FrontEnd2.favourites"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        html, body{height:100%; width:100%; margin:0px;}
        
        div.left{float:left;height:10px;}
div.right{margin-left:10px;height:10px}
t1
{
    height:40px
}
        
    </style>
     <script type="text/javascript">

         function ok(sender, e) {
             $find('ModalPopupExtenderLogin').hide();
             __doPostBack('LoginBtn', e);
         }
         function okJoin(sender, e) {
             $find('ModalPopupExtenderSignup').hide();
             __doPostBack('JoinBtn', e);
         }
         function OnKeyPress(args) {
             if (args.keyCode == Sys.UI.Key.esc) {
                 $find("ModalPopupExtenderLogin").hide();
             }
         }
         function body_onkeydown() {
             if (event.keyCode == 13 || event.keyCode == 27) {
                 var _defaultButtonName = getDefautButtonName(event.keyCode == 13 ? "submitButton" : "cancelButton");
                 var frm = document.forms[0];
                 if (frm && document.all(_defaultButtonName)) {
                     document.all(_defaultButtonName).click();
                 }
             }
         }

         function getDefautButtonName(className) {
             var _defaultButtonName = "";
             var children = document.getElementsByTagName("input");
             for (var i = 0; i < children.length; i++) {
                 var child = children[i];
                 var btnAction = child.buttonAction;
                 if (btnAction == className) {
                     _defaultButtonName = child.id;
                     break;
                 }
             }
             return _defaultButtonName;
         }


</script>
</head>
<body onkeydown="body_onkeydown()">

     <form id="form1" runat="server" style="height:100%; width:100%;background-image: url('Images/5y_overlay.png');
            background-repeat:no-repeat;background-position:center;">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <table height="100%" width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  width="75%">
            
            <table  height="100%" cellspacing="0" cellpadding="0" width= "100%">
            
            <tr >
            <td width="100%" height="90"align="left" > <img  alt=" " style="height:130px"  src="Images/pencils.jpg" /><font  size="30" face="BOOKMAN OLD STYLE" color="#d84132" >&nbsp SCHOOL PANDIT</font>
            </td>
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> FAVOURITES</td>
            </tr>
            
            <tr>

            <td width="100%" >
           <p>    
               <asp:Label ID="Label1" runat="server" Text="NO FAVOURITES HAVE BEEN ADDED ! Please Click on login to add fav" 
                   Visible="False"></asp:Label>
                </p>
                <p>    
                <asp:LinkButton ID="Loginlnk" runat="server" Width="47px">Login</asp:LinkButton>
             
   <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtenderLogin" runat="server" 
             TargetControlID="Loginlnk"
             PopupControlID="LoginPanel"
             BackgroundCssClass="modalBackground"
             DropShadow="true"
             OkControlID="LoginBtn"
             OnOkScript="ok()"
             CancelControlID="CancelBtn" />
   <asp:Label ID="successLabel" runat="server" Width="273px" Visible="False"></asp:Label>
                </p>
                <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none" Width="278px" Font-Names="@MS PGothic">
       
            <table style="width: 270px">
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label6" runat="server" Height="23px" Text="UserName :"></asp:Label>
                    </td>
                    <td style="width: 179px" >
    <asp:TextBox ID="TextBox1" runat="server" Width="75%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label7" runat="server" Height="23px" Text="Password :"></asp:Label>
                    </td>
                    <td style="width: 179px">
                        <asp:TextBox ID="TextBox2" runat="server" Width="75%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 94px">
                    </td>
                    <td style="width: 179px">
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Cancel" Width="52px" buttonAction="submitButton" />
                        <asp:Button ID="Button2" runat="server" Text="Log In" OnClick="LoginBtn_Click" buttonAction="cancelButton" /></td>
                </tr>
            </table>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </asp:Panel>
                <p>    
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="64px" Width="73px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Label"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" 
                                        Text="Label"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    &nbsp;,&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image2" runat="server" Height="23px" 
                                        ImageUrl="~/Icons/remove.png" Width="27px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </p>
           
             </td>
            </tr>
            
            <tr>

            <td width="100%" >
                &nbsp;</td>
            </tr>
            </table>
            </td>

            <td  width="25%">
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            <td  width="100%" height="50%" style="vertical-align: top"> <table width="50%"   cellpadding="1" cellspacing="1" 
                          border="0" style="vertical-align:top;height:50% " align="right"  >
    
                 <tr>     
                  <td valign="top"> <table border="0" cellspacing="0" cellpadding="1"> <tr> <td valign="top" colspan="2"style="position:top" align="right"> 
                      <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click"   
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px" /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server" onclick="ImageButton3_Click"  
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" /></td></tr><tr><td valign="bottom">
                              <asp:ImageButton ID="ImageButton5" runat="server" onclick="ImageButton5_Click"   
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButton4" runat="server" onclick="ImageButton4_Click"  
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" /></td></tr></table>  </td>
                   <td valign="top"> <table border="0" cellspacing="2" cellpadding="1"> <tr> <td height="6%" valign="top"> 
                       <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  
                           ImageUrl="~/Icons/fav_button.JPG" ImageAlign="Right" Width="100px" /></td></tr><tr height="10px"><td >
                           <asp:ImageButton ID="ImageButton6" runat="server"  onclick="ImageButton6_Click" 
                               ImageUrl="~/Icons/contact_us_button.JPG" Width="90px" Height="80px" 
                               ImageAlign="Right" /></td></tr></table>  </td>
                  </tr>
                  <tr> <td colspan="2"> <table width="100%"  cellspacing="3" border="0" cellpadding="1"  ><tr><td width="40%" align="right" valign="top"> 
                      <asp:ImageButton ID="ImageButton7" runat="server" onclick="ImageButton7_Click"  
                          ImageUrl="~/Icons/custom_app_button.JPG" Width="68px" Height="150px" /></td><td width="60%" valign="top">
                          <asp:ImageButton ID="ImageButton8" runat="server" onclick="ImageButton8_Click"  
                              ImageUrl="~/Icons/download_app_button.JPG" Width="140px" 
                              ImageAlign="Right" /></td></tr></table>  </td> </tr>
                  
                        </table>
            </td>
            </tr>
            <tr><td height="25%">
            </td></tr>
            <tr><td height="15%" ><img style="margin-right:0.5cm" border="0" align="right" src="Images/logo.PNG" alt=" " width="40%" height="40%" /></td></tr>
            </table>
            </td>
        </tr>
        <tr>
            <td colspan="2"  height="3%" bgcolor="#d84132" align="right" ><font style="font-weight:bold" face="arial" color="#cccccc" size="3"  >Powered By : 5Y Technologies pvt ltd.</font>
                </td>
        </tr>
    </table>
     <asp:Panel ID="LoginPanel" runat="server" CssClass="modalPopup" Style="display: none" Width="278px" Font-Names="@MS PGothic">
       
            <table style="width: 270px">
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label10" runat="server" Height="23px" Text="UserName :"></asp:Label>
                    </td>
                    <td style="width: 179px" >
    <asp:TextBox ID="loginId" runat="server" Width="75%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label9" runat="server" Height="23px" Text="Password :"></asp:Label>
                    </td>
                    <td style="width: 179px">
                        <asp:TextBox ID="pwd" runat="server" Width="75%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 94px">
                    </td>
                    <td style="width: 179px">
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="CancelBtn" runat="server" Text="Cancel" Width="52px" buttonAction="submitButton" />
                        <asp:Button ID="LoginBtn" runat="server" Text="Log In" OnClick="LoginBtn_Click" buttonAction="cancelButton" /></td>
                </tr>
            </table>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </asp:Panel>
    </form>
       
</body>
</html>