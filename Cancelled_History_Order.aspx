<%@ Page Title="Cancelled Order History :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Cancelled_History_Order.aspx.cs" Inherits="Account_charts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .box {
            height: 380px;
            width: 380px;
            text-align: left;
            float: left;
            margin: 10px;
            box-shadow: -5px -5px #808080;
            background: #eee0c9;
            padding-left: 5px;
            padding-right: 5px;
        }

        .box1 {
            height: 100px;
            width: 380px;
            text-align: left;
            float: left;
            margin: 10px;
            box-shadow: -5px -5px #808080;
            background: #f0eaea;
            padding-left: 5px;
            padding-right: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Cancelled Order History</h3>
            <div class="about-text">
                <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                <div class="switches">
                    <asp:Repeater ID="Order" runat="server" OnItemDataBound="OnItemDataBound">
                        <ItemTemplate>
                            <div class="col-md-12 switch-rightt">
                                <div class="switch-right-grid">
                                    <div class="switch-right-grid1">

                                        <table style="width: 100%; background-color: #f5eded">

                                            <tr>
                                                <td style="width: 33.3%">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Bag Id :</b></t>
                                                    <asp:HiddenField ID="hfbagId" runat="server" Value='<%# Eval("BagId") %>' />
                                                    <asp:Label ID="lblBagId" Style="font-size: medium" runat="server" Text='  <%# Eval("BagId") %>' />
                                                </td>
                                                <td style="width: 33.3%; text-align: center">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Payable Amount:</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%#Eval("TotalSum") %></t>
                                                </td>
                                                <td style="width: 33.3%; text-align: center">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Order Placed :</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%# Eval("Date") %>&nbsp;&nbsp;</t>
                                                </td>
                                            </tr>
                                        </table>
                                        <table style="width: 100%; background-color: #f5eded">
                                            <tr>
                                                <td style="width: 100%">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Ship To:</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%#Eval("Address") %></t>
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr style="width: 100%; background-color: #e8e2e2">
                                                <asp:Repeater ID="rptOrders" runat="server">
                                                    <HeaderTemplate>
                                                        <table style="width: 100%; background-color: #e8e2e2">
                                                            <tr>
                                                                <th colspan="6" scope="colgroup" style="text-align: center">Order Details<br />
                                                                    <br />
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <th scope="col" style="width: 150px">Food Name
                                                                </th>
                                                                <th scope="col" style="width: 150px">Category
                                                                </th>
                                                                <th scope="col" style="width: 150px">Size
                                                                </th>
                                                                <th scope="col" style="width: 150px">Price
                                                                </th>
                                                                <th scope="col" style="width: 150px">Quantity
                                                                </th>
                                                                <th scope="col" style="width: 150px">Total Amount
                                                                </th>

                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>

                                                                <asp:Label ID="lblFoodName" runat="server" Text='<%# Eval("FoodName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblSize" runat="server" Text='<%# Eval("Size") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblTotalAmount" runat="server" Text='<%# Eval("TotalAmount") %>' />
                                                            </td>

                                                        </tr>

                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                            <table style="width: 100%; background-color: #e8e2e2">
                                                <tr>
                                                    <td>
                                                        <br />

                                                        <div class="clearfix"></div>
                                                    </td>
                                                </tr>
                                            </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>

                                            </tr>
                                        </table>
                                        <table style="background-color: lightgrey; width: 100%">

                                            <tr>
                                                <td style="text-align: center">
                                                    <img src="../images/cacnelled.png" /></td>


                                            </tr>

                                        </table>
                                        <br />

                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <br />
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>
        </div>
    </div>

</asp:Content>

