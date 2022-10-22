<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="SelfOrderManagementSystem.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text="Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="usernameText" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="passwordLabel" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="passwordText" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="logInButton" runat="server" Text="Login" />
            </td>
        </tr>
    </table>
</asp:Content>
