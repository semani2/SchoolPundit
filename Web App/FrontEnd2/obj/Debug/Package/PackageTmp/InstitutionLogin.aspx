<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstitutionLogin.aspx.cs" Inherits="FrontEnd2.InstitutionLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        html, body{height:100%; width:100%; margin:0px;}
        
        
        
    </style>
</head>
<body>
     <form id="form1" runat="server" style="height:100%; width:100%;background-image: url('Images/5y_overlay.png');
            background-repeat:no-repeat;background-position:center;">
    
    <table height="100%" width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  width="75%">
            
            <table  height="100%" cellspacing="0" cellpadding="0" width= "100%">
            
            <tr >
            <td width="100%" height="90"align="left" > <img  alt=" " style="height:130px"  src="Images/pencils.jpg" /><font  size="30" face="BOOKMAN OLD STYLE" color="#d84132" >&nbsp SCHOOL PANDIT</font>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
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
           <asp:LinkButton ID="LinkButton2" runat="server" style="text-decoration: none;color:white;margin-left:75px" top="30px"> <font size="2.5pt" face="Calibri" color="white" />Forgot Password?</asp:LinkButton>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
                          ImageUrl="~/Icons/custom_app_button.JPG" Width="68px" Height="150px" onclick="ImageButton7_Click" /></td><td width="60%" valign="top">
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
    </form>
</body>
</html>
