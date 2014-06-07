<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstitutionSignup .aspx.cs" Inherits="FrontEnd2.InstitutionSignup" %>

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
             
            </tr>
            
            
            
            <tr>
            <td width="100%"  height="3" bgcolor="#8da01a"   style="color:White ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> INSTITUTION SIGN UP</td>
            </tr>
            
            <tr>

            <td width="100%" >
            <br />
           <table  width="90%" height="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="#d8d8d8" style="opacity:0.7; ">
<th colspan="4" align="left"> <font  color="#0066ff">Account Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
    </font>&nbsp;<hr  color="#7ca2d2" /></th>

<tr style="height:40px">
      <td  width="17%"><div class="left">
          </div>
          <asp:Label ID="Label22" runat="server" Text="Admin Name:"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox1" runat="server"  style="float:left"></asp:TextBox>
            </div>
         </td>
       <td ></td>
        
       
</tr>


<tr style="height:40px">
      <td><div class ="left">
           <asp:Label ID="Label23" runat="server" Text="Email Id :"></asp:Label>
          </div>
       </td>
      
        <td  width="20%"><div class="right">
          <asp:TextBox ID="TextBox2" runat="server" style="float:left" ></asp:TextBox>
            </div>
         </td>
<td  width="27%"><div class="left">
         <asp:Label ID="Label24" runat="server" Text="Phone Number :" style="float:left"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
         <asp:TextBox ID="TextBox3" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td>
</tr>

<tr style="height:40px">
      <td><div class ="left">
           <asp:Label ID="Label25" runat="server" Text="Password :"></asp:Label>
          </div>
       </td>
      
        <td><div class="right">
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" style="float:left"></asp:TextBox>
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



</table>
</br>
                <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </ajaxToolkit:ToolkitScriptManager>
</br>

<table width="90%" height="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#d8d8d8" style="opacity:0.7; ">
<th colspan="4" align="left"> <font  color="#0066ff">Institute Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
    </font> <hr  color="#7ca2d2"/></th>

<tr style="height:40px">

<td width="17%" align="left">
    <asp:Label ID="Label5" runat="server" Text="Institute Name:"></asp:Label>
       </td>
      
        <td width="23%"><div class="right">
          <asp:TextBox ID="TextBox6" runat="server" style="float:left"></asp:TextBox>
            </div></td>
         
<td width="10%"><div class="left" align="left">
         <asp:Label ID="Label4" runat="server" Text="Type :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:DropDownList ID="DropDownList3" runat="server" Width="150px" style="float:left">
              <asp:ListItem Selected="True" Value="null">Select your category</asp:ListItem>
              <asp:ListItem>College</asp:ListItem>
              <asp:ListItem>School</asp:ListItem>
              <asp:ListItem>Training Institute</asp:ListItem>
            </asp:DropDownList>
            </div>
         </td>
</tr>
<tr style="height:40px"><td><div class="left" align="left">
           <asp:Label ID="Label6" runat="server" Text="Phone 1:"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox8" runat="server" style="float:left"></asp:TextBox>
            </div>
            </td>
         
<td width="18%"><div class="left" align="left">
         <asp:Label ID="Label7" runat="server" Text="Phone2 :" style="float:left"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox9" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class="left">
           <asp:Label ID="Label8" runat="server" Text="Website :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox10" runat="server" style="float:left"></asp:TextBox>
            </div></td>
         
<td width="18%"><div class="left">
        &nbsp;<asp:Label ID="Label9" runat="server" Text="Email id 1:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox11" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td>
        <asp:Label ID="Label10" runat="server" Text="Street :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox12" runat="server" style="float:left"></asp:TextBox>
            </div> </td>
         
<td width="18%"><div class="left">
         <asp:Label ID="Label11" runat="server" Text="Email id 2:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox13" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class="left">
           <asp:Label ID="Label12" runat="server" Text="City:"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ID="TextBox19_AutoCompleteExtender" 
                runat="server" TargetControlID="TextBox19" 
                ServiceMethod="GetCompletionList" UseContextKey="True">
            </ajaxToolkit:AutoCompleteExtender>
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
           <asp:Label ID="Label14" runat="server" Text="State :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ID="TextBox20_AutoCompleteExtender" 
                runat="server" TargetControlID="TextBox20" 
                ServiceMethod="GetCompletionList1" UseContextKey="True">
            </ajaxToolkit:AutoCompleteExtender>
            </div></td>
         
<td width="18%"><div class"left">
         <asp:Label ID="Label15" runat="server" Text="Pin :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox7" runat="server" style="float:left"></asp:TextBox>
            </div> 
            </td>
</tr>

<tr style="height:40px"><td>
    <asp:Label ID="Label16" runat="server" Text="Head of Institute :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox17" runat="server" style="float:left"></asp:TextBox>
            </div>
            </td>
         
<td width="28%"><div class="left">
         <asp:Label ID="Label17" runat="server" Text="Title of Head of Institute :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox18" runat="server" style="float:left"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class="left">
          </div>
       </td>
      
        <td width="28%"><div class="right">
            </div></td>
         
<td width="18%"><div class="left">
          </div>
       </td>
      
        <td ><div class="right">
            </div>
         </td></tr>
<tr style="height:40px">
<td>&nbsp;</td>
      
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
<td></td><td></td>
<td align="right"> <asp:Button ID="Button1" runat="server" Text="Submit" 
        BackColor="#ed830e" ForeColor="White" BorderStyle="None" 
        onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#ed830e" 
        ForeColor="White" BorderStyle="None"  />
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
            <td colspan="2"  height="3%" bgcolor="#d84132" align="right" ><font style="font-weight:bold" face="arial" color="#cccccc" size="3"  >Powered By : 5Y Technologies pvt ltd..</font>
                </td>
        </tr>    
    </table>
    </form>
</body>
</html>
