<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstituteHome.aspx.cs" Inherits="FrontEnd2.Layout" %>

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

.mytable
{
    border-collapse:collapse;
    border-color:Black;
    border-style:solid;
    border-width:2px;
}
        
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
<body >
     <form id="form1" runat="server" style="height:100%; width:100%;">
  
    <table height="100%" width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  width="75%">
            
            <table  height="100%" cellspacing="0" cellpadding="0" width= "100%">
            
            <tr >
            <td width="100%" height="90"align="left" > <img  alt=" " style="height:130px"  src="Images/pencils.jpg" /><font  size="30" face="BOOKMAN OLD STYLE" color="#d84132" >&nbsp SCHOOL PANDIT</font>
            </td>
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#f3942f"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> INSTITUTION </td>
            </tr>
            
            <tr>

            <td width="100%" >
                          <table class ="mytable" width="60%" border="0"  cellpadding="0" cellspacing="0" style="margin-left:200px;"   >
           
           
           <tr  height="100px" >
           <td width="10%" >
               <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/CVR logo.jpg" 
                   Height="100px" Width="100px" />
           
                          <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
           
           </td>
           <td>    
           <table border="0">
           <tr> <td align="left"  width="60%" height="2%">
               <asp:Label ID="Label2" runat="server" Text="CVR College Of Engineering" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#29496b" style="margin-left:30px"></asp:Label> 
               </td></tr>

             <tr> <td>
             <table border="0" cellpadding="0" cellspacing="0" width="100%" height="40px">
             <tr>
             <td valign="bottom"  align="right" style="margin-right:90px">
                 <asp:ImageButton ID="ImageButton11" runat="server" 
                     ImageUrl="~/Icons/like button.jpg" Height="30px" Width="30px" 
                     onclick="ImageButton11_Click" />
        
                 <asp:ImageButton ID="ImageButton12" runat="server" 
                     ImageUrl="~/Icons/addtofav.jpg" Height="30px" Width="30px" 
                     onclick="ImageButton12_Click" />
             </td>
             
              </tr>
             
             
              
              </table>
             
                 
             
             </td></tr>


           </table>
           </td>
           </tr>
           <!-- College Image row-->
           <tr width="100%" height="80%">
           <td bgcolor="#29496b" align="center" colspan="2" ><br />
               <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/cvrcollege.jpg" 
                   Height="200px" /> <br /></td>
           
           
           </tr>
       <!-- about college-->    <tr>
           <td colspan="2"  align="center" bgcolor="#eaeaea" > 
               <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Text=" " 
                   Height="200px" Width="400px"> </asp:TextBox></td>
           </tr>

      <tr>
      <td width="60%" colspan="2">
          <!-- details table-->
          <table border="0" width="100%"> 
          <tr><td  valign="top" width="100%"> <asp:Label ID="Label3" runat="server" Text="Adress :"></asp:Label> 
              <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="30px" 
                  Width="98%"></asp:TextBox></td></tr>
          <tr><td width="100%"> <asp:Label ID="Label4" runat="server" Text="Website :" Font-Names="Calibri"></asp:Label> </asp:Label> <asp:Label ID="Label15" runat="server" Text="l0"></asp:Label></td></tr>
           <tr><td><asp:Label ID="Label7" runat="server" Text="Head Of Institute  :" Font-Names="Calibri"></asp:Label> <asp:Label ID="Label10" runat="server" Text="l1"></asp:Label> </td></tr>
           <tr><td><asp:Label ID="Label5" runat="server" Text="Email Id  :" Font-Names="Calibri"></asp:Label><asp:Label ID="Label11" runat="server" Text="l2"></asp:Label> </td></tr>
           <tr><td><asp:Label ID="Label6" runat="server" Text="College Phone Number  :" Font-Names="Calibri"></asp:Label><asp:Label ID="Label12" runat="server" Text="l3"></asp:Label> </td></tr>
           <tr> <td><asp:Label ID="Label8" runat="server" Text="Contact Person  :" Font-Names="Calibri"></asp:Label><asp:Label ID="Label13" runat="server" Text="l4"></asp:Label>  </td></tr>
           <tr><td>&nbsp;</td></tr>
          
          
          </table>
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
            <td  width="100%" height="50%" style="vertical-align: top"> <table width="50%"   cellpadding="1" cellspacing="1" 
                          border="0" style="vertical-align:top;height:50% " align="right"  >
    
                 <tr>     
                  <td valign="top"> <table border="0" cellspacing="0" cellpadding="1"> <tr> <td valign="top" colspan="2"style="position:top" align="right"> 
                      <asp:ImageButton ID="ImageButton1" runat="server"  onclick="ImageButton1_Click" 
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px"  /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server"  onclick="ImageButton3_Click" 
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" />
                          </td></tr><tr><td valign="bottom">
                              <asp:ImageButton ID="ImageButton5" runat="server" onclick="ImageButton5_Click"  
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButtonlog" runat="server"   
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" 
                                  onclick="ImageButton10_Click" /></td></tr></table>  </td>
                   <td valign="top"> <table border="0" cellspacing="2" cellpadding="1"> <tr> <td height="6%" valign="top"> 
                       <asp:ImageButton ID="ImageButton2" runat="server"  onclick="ImageButton2_Click" 
                           ImageUrl="~/Icons/fav_button.JPG" ImageAlign="Right" Width="100px" /></td></tr><tr height="10px"><td >
                           <asp:ImageButton ID="ImageButton6" runat="server" onclick="ImageButton6_Click"  
                               ImageUrl="~/Icons/contact_us_button.JPG" Width="90px" Height="80px" 
                               ImageAlign="Right" /></td></tr></table>  </td>
                  </tr>
                  <tr> <td colspan="2"> <table width="100%"  cellspacing="3" border="0" cellpadding="1"  ><tr><td width="40%" align="right" valign="top"> 
                      <asp:ImageButton ID="ImageButton7" runat="server" onclick="ImageButton7_Click"  
                          ImageUrl="~/Icons/settings.jpg" Width="68px" Height="127px" /></td><td width="60%" valign="top">
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

    </form>
</body>
</html>
