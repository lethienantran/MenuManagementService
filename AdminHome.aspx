<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SelfOrderManagementSystem.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin: 20% auto;">
        <tr>
            <td>
                <asp:Button ID="addButton" runat="server" Text="Add" CssClass="adminHomeButton" ForeColor="White" Height="65px" Width="180px"/>
                <br /><br />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Button ID="changeButton" runat="server" Text="Change" CssClass="adminHomeButton" ForeColor="White" Height="65px" Width="180px"/>
                <br /><br />            
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="adminHomeButton" ForeColor="White" Height="65px" Width="180px"/>         
            </td>
        </tr>
    </table>
</asp:Content>
