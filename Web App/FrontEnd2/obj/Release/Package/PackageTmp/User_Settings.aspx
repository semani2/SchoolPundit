<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Settings.aspx.cs" Inherits="FrontEnd2.Settings" %>

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
            </td>
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> User Settings</td>
            </tr>
            
            <tr>
<!-- MAIN DATA START -->
            <td width="100%" >
           
            <table height="45%" border="0" cellspacing="0" cellpadding="0" width="70%" bgcolor="#d8d8d8" style="opacity:0.5; ">
                                        
                                          <th colspan="4" align="left"> 
                                              <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                              <font  color="#0066ff">
                                              <br />
                                              Profile Settings</font> <hr  color="#7ca2d2" /> </th>
                                                <tr><td colspan="4" align="right"> <asp:Button ID="Button2" runat="server"
Text="Edit" style="text-decoration:underline" BorderStyle="None" Width="50px" Font-Size="Medium" ForeColor="#000099" 
                                                        onclick="Button2_Click"></asp:Button>  </td></tr>
                                                <tr style="height:40px">
                                                   <td width="17%" align="left">
                                                    <asp:Label ID="Label5" runat="server" Text="First Name:"></asp:Label><sup> <font color="red">*</font></sup>
                                                    </td>
        
                                                    <td width="28%"><div class="right">
                                                     <asp:TextBox ID="TextBox1" runat="server" style="float:left"></asp:TextBox>
                                                     </div></td>

                                                     <td width="23%"><div  align="left">
                                                      <asp:Label ID="Label4" runat="server" Text="Last Name :"></asp:Label><sup> <font color="red">*</font></sup>
                                                      </div>
                                                       </td>
                                                       
                                                       <td ><div class="right">
                                                         <asp:TextBox ID="TextBox9" runat="server" style="float:left"></asp:TextBox>
                                                           </div>
                                                             </td>
                                                  </tr>

             
<tr style="height:40px">
            <td width="17%" align="left">
    <asp:Label ID="Label2" runat="server" Text="Email Id 1:"></asp:Label><sup> <font color="red">*</font></sup>
       </td>
        
        <td width="23%"><div class="right">
          <asp:TextBox ID="TextBox2" runat="server" style="float:left"></asp:TextBox>
            </div></td>

            <td width="10%"><div  align="left">
         <asp:Label ID="Label3" runat="server" Text="Email Id 2:"></asp:Label>
          </div>
           </td>
           <td ><div class="right">
          <asp:TextBox ID="TextBox3" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td>
</tr>




<tr style="height:40px">
            <td width="17%" align="left">
    <asp:Label ID="Label6" runat="server" Text="Phone1:"></asp:Label><sup> <font color="red">*</font></sup>
       </td>
        
        <td width="23%"><div class="right">
          <asp:TextBox ID="TextBox4" runat="server" style="float:left"></asp:TextBox>
            </div></td>

            <td width="10%"><div  align="left">
         <asp:Label ID="Label7" runat="server" Text="Phone 2:"></asp:Label>
          </div>
           </td>
           <td ><div class="right">
          <asp:TextBox ID="TextBox5" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td>
</tr>





<tr>
<br />
<td><asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label> </td>
<td colspan="4" style="vertical-align:center"  align="right">

    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None"  style="margin-right:50px" 
        onclick="Button1_Click" /> </td>



         </table>
            








           <!-- END OF DATA -->
             </td>
            </tr>

            <!-- Start Data 2-->
            <tr> <td width="100%" >
           
            <table height="45%" border="0" cellspacing="0" cellpadding="0" width="70%" bgcolor="#d8d8d8" style="opacity:0.5; ">
                                        
                                          <th colspan="4" align="left"> <font  color="#0066ff">Account Settings</font> <hr  color="#7ca2d2" /></th>
                                                  <tr><td align="right" colspan="4"> &nbsp;</td></tr>
                                                <tr style="height:40px">
                                                   <td width="17%" align="left">
                                                    <asp:Label ID="Label1" runat="server" Text="Old Password:"></asp:Label><sup> <font color="red">*</font></sup>
                                                    </td>
        
                                                    <td width="28%"><div class="right">
                                                     <asp:TextBox ID="TextBox8" runat="server" style="float:left"></asp:TextBox>
                                                     </div></td>
                                                    </tr>
                                                    <tr>
                                                     <td width="23%"><div  align="left">
                                                      <asp:Label ID="Label10" runat="server" Text="New Password :"></asp:Label><sup> <font color="red">*</font></sup>
                                                      </div>
                                                       </td>
                                                       
                                                       <td ><div class="right">
                                                         <asp:TextBox ID="TextBox10" runat="server" style="float:left"></asp:TextBox>
                                                           </div>
                                                             </td>
                                                  </tr>

                                                   <tr style="height:40px">
                                                   <td width="17%" align="left">
                                                    <asp:Label ID="Label17" runat="server" Text="Confirm Password:"></asp:Label><sup> <font color="red">*</font></sup>
                                                    </td>
        
                                                    <td width="28%"><div class="right">
                                                     <asp:TextBox ID="TextBox17" runat="server" style="float:left"></asp:TextBox>
                                                     </div></td>
                                                    </tr>


<tr>
<td> <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label></td>

<td colspan="4" style="vertical-align:center"  align="right">

    <asp:Button ID="Button3" runat="server" Text="Update" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None" style="margin-right:50px" 
        onclick="Button3_Click" /></td>

       


         </table>
            </td></tr>

            <!--End of data -->
            </table>
            </td>

            <td  width="25%">
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            <td  width="100%" height="50%" style="vertical-align: top"> <table width="50%"   cellpadding="1" cellspacing="1" 
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
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px" 
                                  onclick="ImageButton5_Click"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButton4" runat="server"   
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" 
                                  onclick="ImageButton4_Click" /></td></tr></table>  </td>
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
                          ImageUrl="~/Icons/settings.jpg" Width="68px" Height="127px" 
                          onclick="ImageButton7_Click" /></td><td width="60%" valign="top">
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