<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstitutionLogin.aspx.cs" Inherits="FrontEnd2.InstitutionLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        html, body{height:100%; width:100%; margin:0px;}
        
        
        
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />    
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
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> INSTITUTION LOGIN</td>
            </tr>
            
            <tr>

            <td width="100%"  >
            <table border="0" cellspacing="0" cellpadding="0" width="60%" bgcolor="#4b637a"style="opacity:0.7;
  height:36%">
            <tr> <td width="100%" height= "100%" style="vertical-align: top" >
            <p><font  face ="Calibri"  color="white" /><pre>                     Please Enter your email id/Mobile Number </pre> </p>
               <pre>          <asp:TextBox ID="TextBox3" runat="server"  Width="50%" Height="20px"></asp:TextBox></pre>
                
           
         <p><font  face ="Calibri"  color="white" /> <pre>                     Password</pre> </p>
           <pre>          <asp:TextBox ID="TextBox1" runat="server"  Width="50%"  Height="20px" 
                    TextMode="Password"></asp:TextBox></pre>
           <asp:LinkButton ID="Loginlnk" runat="server" style="text-decoration: none;color:white;margin-left:75px" top="30px"> <font size="2.5pt" face="Calibri" color="white" />Forgot Password?</asp:LinkButton>
              <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtenderLogin" runat="server" 
             TargetControlID="Loginlnk"
             PopupControlID="LoginPanel"
             BackgroundCssClass="modalBackground"
             DropShadow="true"
             OkControlID="LoginBtn"
             OnOkScript="ok()"
             CancelControlID="CancelBtn" />  <br />  <br />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
          <br />
               <p align="left"> <asp:Button ID="Button1" runat="server" Text="Sign up!" BorderStyle="None" 
                    style="background-color:#20354a;margin-left:75px" ForeColor="White" 
                       onclick="Button1_Click" />
               
                
               <asp:Button ID="Button2" runat="server" Text="Login" BorderStyle="None" 
                    style="background-color:#20354a;margin-left:200px" ForeColor="White" 
                       onclick="Button2_Click" />
         
       
          
                <asp:Button ID="Button3" runat="server" Text="Cancel" BorderStyle="None" 
                    style="background-color:#20354a" ForeColor="White" onclick="Button3_Click" /></p>










            </td>
            </tr>
            </table>
            
             </td>
            </tr>
            </table>
            </td>

            <td  width="25%">
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            <td  width="100%" height="50%" style="vertical-align: top" valign="top"> 

             <table width="50%"   cellpadding="1" cellspacing="1" 
                          border="0" style="vertical-align:top;height:50% " align="right"  >
    
                 <tr>     
                  <td valign="top"> <table border="0" cellspacing="0" cellpadding="1"> <tr> <td valign="top" colspan="2"style="position:top" align="right"> 
                      <asp:ImageButton ID="ImageButton1" runat="server" 
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px" onclick="ImageButton1_Click" /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server"  
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" 
                              onclick="ImageButton3_Click" /></td></tr><tr><td valign="bottom">
                              <asp:ImageButton ID="ImageButton5" runat="server" 
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px" onclick="ImageButton5_Click"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButton4" runat="server"   
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" onclick="ImageButton4_Click" /></td></tr></table>  </td>
                   <td valign="top"> <table border="0" cellspacing="2" cellpadding="1"> <tr> <td height="6%" valign="top"> 
                       <asp:ImageButton ID="ImageButton2" runat="server"   
                           ImageUrl="~/Icons/fav_button.JPG" ImageAlign="Right" Width="100px" 
                           onclick="ImageButton2_Click" /></td></tr><tr height="10px"><td >
                           <asp:ImageButton ID="ImageButton6" runat="server"   
                               ImageUrl="~/Icons/contact_us_button.JPG" Width="90px" Height="80px" 
                               ImageAlign="Right" onclick="ImageButton6_Click" /></td></tr></table>  </td>
                  </tr>
                  <tr> <td colspan="2"> <table width="100%"  cellspacing="3" border="0" cellpadding="1"  ><tr><td width="40%" align="right" valign="top"> 
                      <asp:ImageButton ID="ImageButton7" runat="server"   
                          ImageUrl="~/Icons/settings.jpg" Width="68px" Height="127px" onclick="ImageButton7_Click" /></td><td width="60%" valign="top">
                          <asp:ImageButton ID="ImageButton8" runat="server"   
                              ImageUrl="~/Icons/download_app_button.JPG" Width="140px" 
                              ImageAlign="Right" onclick="ImageButton8_Click" /></td></tr></table>  </td> </tr>
                  
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
     <asp:Panel ID="LoginPanel" runat="server" CssClass="modalPopup" Style="display: none" Width="400px" Height="250px"  Font-Names="@MS PGothic">
       
            <table >
            
                
                <tr>
                    <td  align="right">

                        <asp:Label ID="Label10" runat="server"  Text="Please enter your email-id ! your password will be mailed "></asp:Label>
                    </td>
                    </tr>
                    <tr>
                    <td  >
    <asp:TextBox ID="loginId" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                       
                    </td>
                    <td style="width: 179px">
                        
                </tr>
                <tr>
                <asp:Label ID="status" runat="server" Text="Label" Visible="false"></asp:Label></tr>
                <tr>
                    <td style="width: 94px">
                    </td>
                    <td style="width: 179px">
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="CancelBtn" runat="server" Text="Cancel" Width="52px" buttonAction="submitButton" />
                        <asp:Button ID="LoginBtn" runat="server" Text="Go" OnClick="LoginBtn_Click" buttonAction="cancelButton" /></td>
                </tr>
            </table>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </asp:Panel>
    <br />
    <asp:Panel ID="SignUpPanel" runat="server" CssClass="modalSignUp" Style="display: none" Width="539px"  Font-Names="@MS PGothic">
        <span style="color: #cc0000"><strong><span style="color: dimgray">Welcome to ModalPopupExtender.com<br />
        </span></strong><br />
        </span>
            To begin, please complete the registration form below. Note that this content
        is
            only available to users located in the United States.If you already have an account, you can also <span style="color: dimgray"><span>
                login</span> </span>
            above.
        <br />
            <table style="width: 452px; height: 177px;" Align="center">
                <tr>
                    <td colspan="2" style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label3" runat="server" Height="23px" Text="Choose username :"></asp:Label>
                    </td>
                    <td style="width: 179px" >
                        <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30%" align="right">
                       <asp:Label ID="Label4" runat="server" Height="23px" Text="Password :"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label11" runat="server" Height="23px" Text="Confirm password :"></asp:Label>
                    </td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label12" runat="server" Height="23px" Text="Email address:"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtEmailAddress" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label6" runat="server" Height="23px" Text="First Name:"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label7" runat="server" Height="23px" Text="Last Name :"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtLastName" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label13" runat="server" Height="23px" Text="Zipcode:"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtZipcode" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 30%; height: 18px">
                        <asp:Label ID="Label8" runat="server" Height="23px" Text="Gender:"></asp:Label></td>
                    <td style="width: 179px; height: 18px">
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" Height="19px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td style="width: 104px; height: 26px;">
                    </td>
                    <td style="width: 179px; height: 26px;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="CancelBtn2" runat="server" Text="Cancel" Width="52px" />
          <asp:Button ID="JoinBtn" runat="server" Text="Join" OnClick="JoinBtn_Click" /></td>
                </tr>
            </table>
        &nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      
       
    </asp:Panel>
    </form>
</body>
</html>
