<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignup.aspx.cs" Inherits="FrontEnd2.UserSignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        html, body{height:100%; width:100%; margin:0px;}
        
         div.left{float:left;height:10px;}
         div.right{margin-left:10px;height:10px}
       textbox
       {
           float:left
       }
        
    </style>
</head>
<body>
     <form id="form1" runat="server" style="height:100%; width:100%">
    
    <table height="100%" width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
               <td  width="75%">
            
                      <table  height="100%" cellspacing="0" cellpadding="0" width= "100%">
            
                         <tr >
                             <td width="100%" height="90"align="left" > <img  alt=" " style="height:130px"  src="Images/pencils.jpg" /><font  size="30" face="BOOKMAN OLD STYLE" color="#d84132" >&nbsp SCHOOL PANDIT</font>
                               </td>
                          </tr>
            
            
            
                        <tr>
                           <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> USER SIGNUP</td>
                         </tr>
            
 <tr>

                              <td width="100%"  >
                                     <table height="45%" border="0" cellspacing="0" cellpadding="0" width="70%" bgcolor="#d8d8d8" style="opacity:0.5; ">
                                        
                                          <th colspan="4" align="left"> <font  color="#0066ff">User Details</font> <hr  color="#7ca2d2" /></th>
  
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



<tr style="height:40px">
            <td width="17%" align="left">
    <asp:Label ID="Label8" runat="server" Text="Password:"></asp:Label><sup> <font color="red">*</font></sup>
       </td>
        
        <td width="17%"><div class="right">
          <asp:TextBox ID="TextBox6" runat="server" style="float:left" TextMode="Password"></asp:TextBox>
            </div></td>

            <td width="10%"><div align="left">
         <asp:Label ID="Label9" runat="server" Text="Confirm Password :"></asp:Label><sup> <font color="red">*</font></sup>
          </div>
           </td>
           <td ><div class="right">
          <asp:TextBox ID="TextBox7" runat="server" style="float:left" TextMode="Password"></asp:TextBox>
            </div>
         </td>
</tr>

<tr>

<td colspan="4" style="vertical-align:center"  align="right">

    <asp:Label ID="Label10" runat="server" style="margin-left:100px"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None" onclick="Button1_Click"   />

<td>

    <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None" style="margin-right:65px" />

         </table>
            
         </td>
        </tr>




            </table>
            </td>
           

            <td  width="20%">
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            
            
            
            
            <td  width="20%" height="50%" style="vertical-align: top" valign="top"> 
                      
                      <table width="50%"   cellpadding="1" cellspacing="1" 
                          border="0" style="vertical-align:top;height:50% " align="right"  >
    
                 <tr>     
                  <td valign="top"> <table border="0" cellspacing="0" cellpadding="1"> <tr> <td valign="top" colspan="2"style="position:top" align="right"> 
                      <asp:ImageButton ID="ImageButton1" runat="server"   
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px" onclick="ImageButton1_Click" /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server" onclick="ImageButton3_Click"  
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" /></td></tr><tr><td valign="bottom">
                              <asp:ImageButton ID="ImageButton5" runat="server" onclick="ImageButton5_Click"  
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButton4" runat="server" onclick="ImageButton4_Click"  
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" /></td></tr></table>  </td>
                   <td valign="top"> <table border="0" cellspacing="2" cellpadding="1"> <tr> <td height="6%" valign="top"> 
                       <asp:ImageButton ID="ImageButton2" runat="server" onclick="ImageButton2_Click"  
                           ImageUrl="~/Icons/fav_button.JPG" ImageAlign="Right" Width="100px" /></td></tr><tr height="10px"><td >
                           <asp:ImageButton ID="ImageButton6" runat="server" onclick="ImageButton6_Click"   
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
        
        <tr>
        
        <td colspan="2"  height="3%" bgcolor="#d84132" align="right" ><font  face="arial" color="#cccccc" size="3"  >Powered By : 5Y Technologies pvt ltd</font>
      
         </td>
           
        </tr>

        </td>
  </tr>
  </table>
    
    </form>
</body>
</html>
