<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDisplay.aspx.cs" Inherits="SelfOrderManagementSystem.CustomerDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin-top:20%">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="startOrderButton" runat="server" Text="Start Order" style="border-radius: 10px; background-color: #f75340; border-style: none; font-size: 30px; color:white" />
        </div>
    </form>
</body>
</html>
