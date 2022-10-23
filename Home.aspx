<%@ Page Title="" Language="C#" MasterPageFile="~/SelfOrder.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SelfOrderManagementSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h3>Add/Change Items</h3>
        <table style="border: 1px solid black;">
            <tr >
                <th>
                    Category
                </th>
                <th>
                    Name
                </th>
                <th>
                    Description
                </th>
                <th>
                    Price
                </th>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="categoryText" placeholder="Enter Category" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="nameText" placeholder="Enter Name" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="descriptionText" placeholder="Enter Description" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="priceText" placeholder="Enter Price" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="addButton" runat="server" Text="ADD" CssClass="roundedButton" Font-Size="15px" ForeColor="White" OnClick="addButton_Click"/>
                    &nbsp;&nbsp;
        <asp:Button ID="deleteButton" runat="server" Text="DELETE" CssClass="roundedButton" Font-Size="15px" ForeColor="White" OnClick="deleteButton_Click"/>
    </div>
</asp:Content>
