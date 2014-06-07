<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageUploadDemo.aspx.cs" Inherits="FrontEnd2.ImageUploadDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="346px"></asp:TextBox>
        <br />
    
    </div>
    </form>
</body>
</html>
