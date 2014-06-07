<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteDemo.aspx.cs" Inherits="FrontEnd2.AutoCompleteDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtMovie" runat="server"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
            TargetControlID="txtMovie" UseContextKey="True" ServiceMethod="GetCompletionList">
        </ajaxToolkit:AutoCompleteExtender>
    <ajaxToolkit:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1">
</ajaxToolkit:ToolkitScriptManager>
    </div>
    </form>
</body>
</html>
