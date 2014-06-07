<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FrontEnd2.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    &nbsp;
    <br />
    <table style="width: 297px">
        <tr>
            <td style="width: 36px">
                <asp:LinkButton ID="Loginlnk" runat="server" Width="47px">Login</asp:LinkButton></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
   <asp:Label ID="successLabel" runat="server" Width="273px" Visible="False"></asp:Label></td>
        </tr>
    </table>
    <br />
<div>
             
   <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtenderLogin" runat="server" 
             TargetControlID="Loginlnk"
             PopupControlID="LoginPanel"
             BackgroundCssClass="modalBackground"
             DropShadow="true"
             OkControlID="LoginBtn"
             OnOkScript="ok()"
             CancelControlID="CancelBtn" />
    <br />
    <br />
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
                        <asp:Label ID="Label1" runat="server" Height="23px" Text="Choose username :"></asp:Label>
                    </td>
                    <td style="width: 179px" >
                        <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30%" align="right">
                       <asp:Label ID="Label2" runat="server" Height="23px" Text="Password :"></asp:Label></td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label3" runat="server" Height="23px" Text="Confirm password :"></asp:Label>
                    </td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="Label4" runat="server" Height="23px" Text="Email address:"></asp:Label></td>
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
                        <asp:Label ID="Label5" runat="server" Height="23px" Text="Zipcode:"></asp:Label></td>
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
    </div>
    </form>
</body>
</html>
