<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuptable.aspx.cs" Inherits="FrontEnd2.signuptable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title></title>
<style type="text/css">
div.left{float:left;height:10px;}
div.right{margin-left:10px;height:10px}

</style></head>
<body>
    <form id="form1" runat="server">





<table  width="60%" height="100%" border="0" cellspacing="0" cellpadding="0">
<th colspan="4" align="left"> <font face="Calibri" size="2pt" color="#0066ff">Account Details</font> <hr  color="navy"/></th>

<tr style="height:40px">
      <td  width="12%"><div class="left">
          </div>
          <asp:Label ID="Label22" runat="server" Text="Username:"></asp:Label>
       </td>
      
        <td width="35%"><div class="right">
          <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
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
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
         </td>
<td  width="18%"><div class="left">
         <asp:Label ID="Label24" runat="server" Text="Phone Number :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
         </td>
</tr>

<tr style="height:40px">
      <td><div class ="left">
           &nbsp;<asp:Label ID="Label25" runat="server" Text="Password :"></asp:Label>
          </div>
       </td>
      
        <td><div class="right">
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </div>
         </td>
<td width="11%"><div class="left">
         <asp:Label ID="Label26" runat="server" Text="Confirm Password :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </div>
         </td>
</tr>



</table>
</br>
</br>

<table width="60%" height="100%" border="0" cellspacing="0" cellpadding="0">
<th colspan="4" align="left"> <font face="Calibri" size="2pt" color="#0066ff">Institute Details </font> <hr  color="navy"/></th>

<tr style="height:40px">

<td width="17%" align="left">
    <asp:Label ID="Label5" runat="server" Text="Institute Name:"></asp:Label>
       </td>
      
        <td width="23%"><div class="right">
          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </div></td>
         
<td width="10%"><div class"left" align="left">
         <asp:Label ID="Label4" runat="server" Text="Type :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:DropDownList ID="DropDownList3" runat="server" Width="150px">
            </asp:DropDownList>
            </div>
         </td>
</tr>
<tr style="height:40px"><td><div class="left" align="left">
           <asp:Label ID="Label6" runat="server" Text="Phone 1:"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </div>
         
<td width="18%"><div class"left" align="left">
         <asp:Label ID="Label7" runat="server" Text="Phone2 :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class"left">
           <asp:Label ID="Label8" runat="server" Text="Website :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </div>
         
<td width="18%"><div class"left">
         &nbsp;<asp:Label ID="Label9" runat="server" Text="Email id 1:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </div>
         </td></tr>
</tr><td>
        <asp:Label ID="Label10" runat="server" Text="Street :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </div>
         
<td width="18%"><div class"left">
         <asp:Label ID="Label11" runat="server" Text="Email id 2:"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class"left">
           <asp:Label ID="Label12" runat="server" Text="City:"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
            </asp:DropDownList>
            </div>
         
<td width="18%"><div class"left">
         <asp:Label ID="Label13" runat="server" Text="Fax :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class"left">
           <asp:Label ID="Label14" runat="server" Text="State :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
            </asp:DropDownList>
            </div>
         
<td width="18%"><div class"left">
         <asp:Label ID="Label15" runat="server" Text="Pin :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <input type="text" name="name" style="position:left"> 
            </div>
         </td></tr>


<tr><td>
    <asp:Label ID="Label16" runat="server" Text="Head of Institute :"></asp:Label>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </div>
         
<td width="28%"><div class"left">
         <asp:Label ID="Label17" runat="server" Text="Title of Head of Institute"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px"><td><div class"left">
           <asp:Label ID="Label18" runat="server" Text="Contact Person :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </div></td>
         
<td width="18%"><div class"left">
         <asp:Label ID="Label19" runat="server" Text="Phone Number :"></asp:Label>
          </div>
       </td>
      
        <td ><div class="right">
          <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </div>
         </td></tr>
<tr style="height:40px">
<td><div class"left">
           <asp:Label ID="Label20" runat="server" Text="Email ID :"></asp:Label>
          </div>
       </td>
      
        <td width="28%"><div class="right">
          <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
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
<td>
    <asp:Label ID="Label2" runat="server" Text="Upload Photo :"></asp:Label>
    </td>
<td>
    <asp:FileUpload ID="FileUpload2" runat="server" />
    </td>
</tr>
<tr style="height:40px">
<td><div class"left">
           <asp:Label ID="Label21" runat="server" Text="Notes :"></asp:Label>
          </div>
       </td>
<td colspan="3"><asp:TextBox ID="TextBox16" runat="server" 
        TextMode="MultiLine" Width="300px" Height="80px"></asp:TextBox>
    </td>
</tr>
<tr style="height:40px">
<td></td><td></td>
<td align="right"> <asp:Button ID="Button1" runat="server" Text="Submit" />
    <asp:Button ID="Button2" runat="server" Text="Reset" />
    </td>
    </tr>
</table>
    </form>

</body>
</html>