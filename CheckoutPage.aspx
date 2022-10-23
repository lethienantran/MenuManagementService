<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutPage.aspx.cs" Inherits="SelfOrderManagementSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="OrderMenuStyleSheet.css" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="topNav" class="topNav" style="padding-top: 25px">
            &nbsp
            <asp:Button ID="backButton" runat="server" Text="Go Back" Class="customerButton" />
        </div>

        <div class="checkoutDiv">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="orderPriceLabel" runat="server" Text="Total: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submitOrderButton" runat="server" Text="Submit Order" />
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
