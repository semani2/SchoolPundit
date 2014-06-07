<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FrontEnd2.Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        html, body{height:100%; width:100%; margin-left: 0px;
            margin-top: 0px;
            margin-bottom: 0px;
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
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            </tr>
            
            
            
            <tr>
             <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> SEARCH</td>
            </tr>
            
            <tr>

            <td width="100%"  > <table height="60%" border="0" cellspacing="0" cellpadding="0" width="100%" >
<tr style="height:8%">
<td align="center" colspan="2" style="vertical-align:bottom"><label  for="Search"><font face="Lucida Console" size="5" color="#254463" style="letter-spacing:1.5" />SEARCH</label></td>

</tr>
<tr style="height:20%"><td  colspan="2"align ="center" >
    <asp:TextBox ID="TextBox1" runat="server" Width="700px"></asp:TextBox>
    </td>
</tr>
<tr style="height:15%">
<td width="50%" ><font face="Calibri" color="#254463" style="font-weight:bold;margin-left:170px"/>Category
    <font face="Calibri" color="#254463" style="font-weight:bold"/>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
        >
        <asp:ListItem Selected="True" Value="null">Select a category</asp:ListItem>
        <asp:ListItem>School</asp:ListItem>
        <asp:ListItem>College</asp:ListItem>
        <asp:ListItem>Training Institute</asp:ListItem>
    </asp:DropDownList>
    </td>
<td align="center">
    <font style="font-weight:bold;margin-right:100px" face="Calibri" color="#254463" />City   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
            TargetControlID="TextBox2" UseContextKey="True" ServiceMethod="GetCompletionList">
             </ajaxToolkit:AutoCompleteExtender>
    <ajaxToolkit:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1">
</ajaxToolkit:ToolkitScriptManager>
</td>
</tr>
<tr style="height:20%"><td align="center" colspan="2">
    <asp:ImageButton ID="search_image" runat="server"  height="50px" Width="90px" 
        ImageUrl="~/Images/searchlogo.JPG" onclick="search_image_Click" />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />


    <br />
 <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="58px" Width="72px" ImageUrl='<%# Eval("ins_logo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >

                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("ins_name") %>' style="text-decoration:none" NavigateUrl='<%# Eval("ins_id") %>' ></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                        &nbsp;,<asp:Label ID="Label4" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                        &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("no_of_likes") %>'></asp:Label>
                        <asp:Image ID="Image2" runat="server" Height="24px" 
                            ImageUrl="~/Images/like.png" Width="27px" />
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

    </table></td>
            </tr>
            </table>
            </td>

            <td  width="25%">
            <table height="100%"  width="100%" cellspacing="0" cellpadding="0" border="0" >
            <tr>
            <td  width="100%" height="50%" style="vertical-align: top">  <table width="50%"   cellpadding="1" cellspacing="1" 
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
