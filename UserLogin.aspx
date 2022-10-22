<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="SelfOrderManagementSystem.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h3>Log In</h3>
    </div>
    <table class="userTable" align="center">
        <tr>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text="Username:"></asp:Label>
                &nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="usernameText" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        
        <tr>
            <td>   
                <asp:Label ID="passwordLabel" runat="server" Text="Password:"></asp:Label>
                &nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="passwordText" TextMode="Password" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CssClass="roundedButton" />
            </td>
        </tr>
    </table>
</asp:Content>
