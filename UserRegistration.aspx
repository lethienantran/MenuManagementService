<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="SelfOrderManagementSystem.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel ="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h3>Create Account</h3>
    </div> 
    <table class="userTable" align="center" style="border:none">
        <tr>
            <td>
                <asp:Label ID="brandLabel" runat="server" Text="Brand:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="brandText" runat="server"></asp:TextBox>
               
            </td>
        </tr>
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
                <asp:Label ID="confirmPasswordLabel" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="confirmPasswordText" TextMode="Password" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="messageLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="button1" runat="server" Text="BACK" OnClick="button1_Click" CssClass="roundedButton" ForeColor="White" Height="45px" Width="150px" />
            </td>
            <td align="center">
            <asp:Button ID="button" runat="server" Text="REGISTER" OnClick="button_Click" CssClass="roundedButton" ForeColor="White" Height="45px" Width="150px" />
            </td>
        </tr>
        </table>
    
</asp:Content>