<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_results.aspx.cs" Inherits="FrontEnd2.ListDemo" %>

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
            <td width="100%"  height="3" bgcolor="#8da01a"   style="color:white ;font-size:larger;"> <font face="Lucida Console"style="margin-left:40px" /> Search Results</td>
            </tr>
            
            <tr>

            <td width="100%" >
                
    <div>
    
        <br />
    
        <br />
&nbsp;&nbsp; <font face="Lucida Console" size="5" color="#254463" style="letter-spacing:1.5" /><label  for="Search" style="margin-left:270px">SEARCH<br />
    <asp:TextBox ID="TextBox1" runat="server" Width="532px" style="margin-left:80px"></asp:TextBox>
    </label>
        </font>
        <br />
        <br />
        <font face="Calibri" color="#254463" style="font-weight:bold;margin-left:170px"/>Category<font 
            face="Calibri" color="#254463" style="font-weight:bold;"/><font face="Calibri" color="#254463" style="font-weight:bold"/><asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
        >
        <asp:ListItem Selected="True" Value="null">Select a category</asp:ListItem>
        <asp:ListItem>School</asp:ListItem>
        <asp:ListItem>College</asp:ListItem>
        <asp:ListItem>Training Institute</asp:ListItem>
    </asp:DropDownList>
    <font style="font-weight:bold;margin-left:120px" face="Calibri" color="#254463" />City</font><font 
            style="font-weight:bold;" face="Calibri" color="#254463" /><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
            TargetControlID="TextBox2" UseContextKey="True" ServiceMethod="GetCompletionList">
             </ajaxToolkit:AutoCompleteExtender>
    <ajaxToolkit:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1">
</ajaxToolkit:ToolkitScriptManager>
    <asp:ImageButton ID="search_image" runat="server"  height="50px" Width="90px" 
        ImageUrl="~/Images/searchlogo.JPG" onclick="search_image_Click" style="margin-left:320px"/>
        </font></font></font></font><br />
        <br />
        <br />
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
    
           
             </td>
            </tr>
            
            <tr>

            <td width="100%" >
                
                &nbsp;</td>
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
                      <asp:ImageButton ID="ImageButton1" runat="server"   
                          ImageUrl="~/Icons/search_button.JPG" Height="70px" ImageAlign="Top" 
                          Width="150px" /></td></tr><tr> </br> <td ><table  border="0" cellpadding="0" cellspacing="5"><tr><td align="right">
                          <asp:ImageButton ID="ImageButton3" runat="server"   
                              ImageUrl="~/Icons/about_us_button.JPG" Width="85px" ImageAlign="Right" /></td></tr><tr><td valign="bottom">
                              <asp:ImageButton ID="ImageButton5" runat="server"   
                                  ImageUrl="~/Icons/ins_button.JPG" Width="110px"  /></td></tr></table></td><td height="5%"> 
                              <asp:ImageButton ID="ImageButton4" runat="server"   
                                  ImageUrl="~/Icons/login_button.JPG" Width="50px" Height="120px" /></td></tr></table>  </td>
                   <td valign="top"> <table border="0" cellspacing="2" cellpadding="1"> <tr> <td height="6%" valign="top"> 
                       <asp:ImageButton ID="ImageButton2" runat="server"   
                           ImageUrl="~/Icons/fav_button.JPG" ImageAlign="Right" Width="100px" /></td></tr><tr height="10px"><td >
                           <asp:ImageButton ID="ImageButton6" runat="server"   
                               ImageUrl="~/Icons/contact_us_button.JPG" Width="90px" Height="80px" 
                               ImageAlign="Right" /></td></tr></table>  </td>
                  </tr>
                  <tr> <td colspan="2"> <table width="100%"  cellspacing="3" border="0" cellpadding="1"  ><tr><td width="40%" align="right" valign="top"> 
                      <asp:ImageButton ID="ImageButton7" runat="server"   
                          ImageUrl="~/Icons/custom_app_button.JPG" Width="68px" Height="150px" /></td><td width="60%" valign="top">
                          <asp:ImageButton ID="ImageButton8" runat="server"   
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

