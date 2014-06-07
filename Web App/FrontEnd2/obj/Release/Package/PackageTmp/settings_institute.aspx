<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings_institute.aspx.cs" Inherits="FrontEnd2.settings_institute" %>

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
     <form id="form1" runat="server" style="height:100%; width:100%;">
    
    <table height="100%" width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  width="75%">
            
            <table  height="100%" cellspacing="0" cellpadding="0" width= "100%">
            
            <tr >
            <td width="80%" height="90"align="left" > <img  alt=" " style="height:130px"  src="Images/pencils.jpg" /><font  size="30" face="BOOKMAN OLD STYLE" color="#d84132" >&nbsp SCHOOL PANDIT</font>
            </td>
             <td valign="top">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Icons/facebook icon.jpg"  Height="40px" Width="40px" /> 
              </td>
              <td valign="top">  <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Icons/twitter icon.jpg"  Width="40px" Height="40px" /></td>
             
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#f19331"   style="color:White ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> INSTITUTION SETTINGS</td>
            </tr>
            
             <tr> <td valign="top" > <br/>
                <asp:Label ID="Label26" runat="server" Text="Welcome User !" Width="150px" style="margin-left:50px"></asp:Label>                 
                 </td>         
           </tr>
            
            <tr>

            <td width="100%" >
            <br />
           <table  width="90%" height="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="#d8d8d8" style="opacity:0.7; ">
<th colspan="4" align="left"> <font  color="#0066ff">Account Settings</font> <hr  color="#7ca2d2" /></th>
<tr><td colspan="4" align="right"> 
                                                    <asp:Label ID="Label18" runat="server" 
                                                        
                                                        
                                                        Text="  Your Account has been updated Successfully. " Width="305px" 
                                                        ForeColor="#CC3300" Font-Bold="True" Font-Names="Calibri" 
                                                        style="margin-right:160px" Visible="False"></asp:Label>
                                                    <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" 
                                                        ImageUrl="~/Icons/blue edit_button.png" style="margin-right:5px" 
                                                        onclick="ImageButton11_Click" />
                                                    </td></tr>

<tr style="height:40px">
      <td  width="17%"><div class="left">
          </div>
          <asp:Label ID="Label22" runat="server" Text="Name:"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox1" runat="server"  style="float:left"></asp:TextBox>
            </div>
         </td>
         <td  width="17%"><div class="left">
          </div>
          <asp:Label ID="Label20" runat="server" Text="Email Id:"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox14" runat="server"  style="float:left"></asp:TextBox>
            </div>
         </td>
       
        
       
</tr>


<tr style="height:40px">
      <td><div class ="left">
           <asp:Label ID="Label23" runat="server" Text="Phone Number :"></asp:Label>
          </div>
       </td>
      
        <td  width="20%"><div class="right">
          <asp:TextBox ID="TextBox2" runat="server" style="float:left" ></asp:TextBox>
            </div>
         </td>
<td  width="27%"><div class="left">
         <asp:Label ID="Label24" runat="server" Text="Old Password:" style="float:left"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
         <asp:TextBox ID="TextBox3" runat="server" style="float:left" TextMode="Password"></asp:TextBox>
            </div>
         </td>
</tr>

<tr style="height:40px">
      <td><div class ="left">
           <asp:Label ID="Label25" runat="server" Text=" New Password :"></asp:Label>
          </div>
       </td>
      
        <td><div class="right">
          <asp:TextBox ID="TextBox4" runat="server" TextMode=" Password" style="float:left"></asp:TextBox>
            </div>
         </td>
<td width="17%" align="left"><div class="left" align="left">
    <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label></div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox5" runat="server"  TextMode="Password" style="float:left" ></asp:TextBox>
            </div>
         </td>
</tr>
<tr><td align="right" colspan="4"> <asp:Button ID="Button2" runat="server" 
        Text="Update" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None" style="margin-right:30px" 
        onclick="Button2_Click" /></td></tr>


</table>
</br>
</br>
<!-- Table 2 -->


<table width="90%" height="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#d8d8d8" style="opacity:0.7; ">
<th colspan="4" align="left"> <font  color="#0066ff">Institute Account Settings</font> <hr  color="#7ca2d2"/></th>
<tr><td colspan="4" align="right"> 
                                                    <asp:Label ID="Label19" runat="server" 
                                                        
                                                        
                                                        
                                                        Text="Institute Details are subjected to Approval.We shall contact you for the Approval shortly. " Width="400px" 
                                                        ForeColor="#CC3300" Font-Bold="True" Font-Names="Calibri" 
                                                        style="margin-right:200px" Visible="False"></asp:Label>
                                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" 
                                                        ImageUrl="~/Icons/blue edit_button.png"  style="margin-right:5px" 
                                                        onclick="ImageButton12_Click"/>
                                                    </td></tr>

<tr style="height:40px">

<td width="17%" align="left">
    <asp:Label ID="Label5" runat="server" Text="Institute Name:"></asp:Label>
       </td>
      
        <td width="23%"><div class="right">
          <asp:TextBox ID="TextBox6" runat="server" style="float:left" Height="18px" 
                Width="199px"></asp:TextBox>
            </div></td>
         
<td width="10%"><div class="left" align="left">
        
          </div>
       </td>
      
        <td ><div class="right">
            </div>
         </td>
</tr>
<tr style="height:40px"><td><div class="left" align="left">
           <asp:Label ID="Label6" runat="server" Text="Phone 1:"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox8" runat="server" style="float:left" Height="19px" 
                Width="169px"></asp:TextBox>
            </div>
            </td>
         
<td width="18%"><div class="left" align="left">
         <asp:Label ID="Label7" runat="server" Text="Phone2 :" style="float:left"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox9" runat="server" style="float:left" Height="21px" 
                Width="184px"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class="left">
           <asp:Label ID="Label8" runat="server" Text="Website :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox10" runat="server" style="float:left" Height="19px" 
                Width="185px"></asp:TextBox>
            </div></td>
         
<td width="18%"><div class="left">
         &nbsp;<asp:Label ID="Label9" runat="server" Text="Email id 1:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox11" runat="server" style="float:left" Height="24px" 
                Width="187px"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td>
        <asp:Label ID="Label10" runat="server" Text="Street :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox12" runat="server" style="float:left" Height="19px" 
                Width="193px"></asp:TextBox>
            </div> </td>
         
<td width="18%"><div class="left">
         <asp:Label ID="Label11" runat="server" Text="Email id 2:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox13" runat="server" style="float:left" Height="21px" 
                Width="187px"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class="left">
          </div>
         <asp:Label ID="Label15" runat="server" Text="Pin :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox7" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td>
<td width="18%"><div class="left">
         <asp:Label ID="Label13" runat="server" Text="Fax :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox15" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class"left">
          </div>
       </td>
      
        <td width="28%"><div class="right">
            </div></td>
         
<td width="18%"><div class"left">
          </div>
       </td>
      
        <td width="28%"><div class="right">
            </div> 
            </td>
</tr>

<tr style="height:40px"><td>
    <asp:Label ID="Label16" runat="server" Text="Head of Institute :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox17" runat="server" style="float:left" Height="24px" 
                Width="194px"></asp:TextBox>
            </div>
            </td>
         
<td width="28%"><div class="left">
         <asp:Label ID="Label17" runat="server" Text="Title of Head of Institute :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox18" runat="server" style="float:left" Height="19px" 
                Width="189px"></asp:TextBox>
            </div>
         </td></tr>


      
        <td width="28%"><div class="right">
            </div></td>
<td>
   
    </td>
</tr>
<tr style="height:40px">
<td>
    <asp:Label ID="Label1" runat="server" Text="Upload Logo :"></asp:Label>
    </td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Upload Photo :" ></asp:Label>
    </td>
<td align="left">
    <asp:FileUpload ID="FileUpload2" runat="server"  />
    </td>
</tr>
<tr style="height:40px">
<td><div class="left">
           <asp:Label ID="Label21" runat="server" Text="Notes :"></asp:Label>
          </div>
       </td>
<td colspan="3"><asp:TextBox ID="TextBox16" runat="server" 
        TextMode="MultiLine" Width="300px" Height="80px" style="float:left"></asp:TextBox>
    </td>
</tr>
<tr style="height:40px">
<td colspan="4" align="right"> <asp:Button ID="Button1" runat="server" Text="Update" 
        BackColor="#ed830e" ForeColor="White" BorderStyle="None" 
        style="margin-right:30px" onclick="Button1_Click" />
    
    </td>
    </tr>
</table>

   
            </td>
            </tr>
            </table>
            </td>
            <td>
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            <td  width="100%" height="40%" style="vertical-align: top"> <table width="50%"   cellpadding="1" cellspacing="1" 
                          border="0" style="vertical-align:top;height:50% " align="right"  >
    
                 <tr>     
                  <td valign="top"> <table border="0" cellspacing="0" cellpadding="1"> <tr> <td valign="top" colspan="2"style="position:top" align="right"> 
                      <asp:ImageButton ID="ImageButton1" runat="server"   
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px" onclick="ImageButton1_Click" /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server"   
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" /></td></tr><tr><td valign="bottom">
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