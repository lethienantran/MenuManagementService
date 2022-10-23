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
        <div class="topNav">
            &nbsp
            <asp:Button ID="backButton" runat="server" Text="Go Back" Class="customerButton" OnClick="backButton_Click" />
        </div>
        <div class ="PriceSummaryTable"> 
            <asp:Label ID="totalPrice" runat="server" style="font-size: 35px;" Text="Total: $"></asp:Label>
            <asp:Button ID="submitOrderButton" runat="server" style="font-size: 20px;" Text="Submit Order" class="submitOrderButton" OnClick="submitOrderButton_Click"/>
        </div>

        <%-- 
        <div class="centerDiv">
            <asp:Table ID="Table1" runat="server" class="doubleCheckTable">
                
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
                    <asp:TableCell>LAST</asp:TableCell>
                </asp:TableRow>


            </asp:Table>  
        </div>
        

        <div class="checkoutDiv">
            <table class="checkOutTable">
                <tr>
                    <td>
                        <asp:Label ID="orderPriceLabel" runat="server" Text="Total: " Style="color:Black; font-size: 30px; text-align:right"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >
                        <br/>
                        <asp:Button ID="submitOrderButton" runat="server" Text="Submit Order" class ="checkOutButton"  />
                    </td>
                </tr>
            </table>
        </div>
            --%>

    </form>
</body>
</html>
