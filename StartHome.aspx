<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="StartHome.aspx.cs" Inherits="SelfOrderManagementSystem.StartHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h1>SELF ORDER <br />SERVICE</h1>
    </div>
    <table align="center">
        <tr>
            <td>
                <asp:Button ID="registerButton" runat="server" Text="REGISTER" CssClass="roundedButton" ForeColor="White" Height="45px" Width="150px" OnClick="registerButton_Click" />
                <br /><br />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Button ID="loginButton" runat="server" Text="LOGIN" CssClass="roundedButton" ForeColor="White" Height="45px" Width="150px" OnClick="loginButton_Click" />
                <br /><br />            
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="menuButton" runat="server" Text="MENU" CssClass="roundedButton" ForeColor="White" Height="45px" Width="150px" OnClick="menuButton_Click" />         
            </td>
        </tr>
    </table>
</asp:Content>
