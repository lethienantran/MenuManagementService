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

        <div class="centerDiv">
            <asp:Table ID="Table1" runat="server" class="checkoutTable">
                
                <asp:TableHeaderRow>
                    <asp:TableCell style="width: 65%" class="headerCell"> Item</asp:TableCell>
                    <asp:TableCell style="width: 20%;" class="headerCell">Quantity</asp:TableCell>
                    <asp:TableCell style="width: 20%;" class="headerCell">Price</asp:TableCell>
                </asp:TableHeaderRow>

                <asp:TableRow>
                    <asp:TableCell style="border: 1px solid black">Big Mac</asp:TableCell>
                    <asp:TableCell style="border: 1px solid black">2</asp:TableCell>
                    <asp:TableCell style="border: 1px solid black">$10.00</asp:TableCell>
                </asp:TableRow>


                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Test</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>LAST</asp:TableCell>
                </asp:TableRow>


            </asp:Table>  
        </div>

        <div class="checkoutDiv">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="orderPriceLabel" runat="server" Text="Total: " Style="color:Black; font-size: 20px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br/>
                        <asp:Button ID="submitOrderButton" runat="server" Text="Submit Order" class ="customerButton"/>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
