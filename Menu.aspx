<%@ Page Title="Menu :: BBD" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="FoodCollection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="index.aspx"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Menu</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!-- products -->
    <div class="products">
        <div class="container">
            <div class="col-md-12 product-w3ls-right">
                <div class="product-top">
                    <h4>Food Collection</h4>
                    <ul>
                        <li class="dropdown head-dpdn">
                            <a href="Login.aspx">Order Food</a>

                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="products-row">
                    <asp:Repeater ID="Order" runat="server" OnItemDataBound="OnItemDataBound">
                        <ItemTemplate>
                            <div class="col-md-12 switch-rightt">
                                <div class="switch-right-grid">
                                    <div class="switch-right-grid1">

                                        <table style="width: 100%; background-color: #f5eded">

                                            <tr>
                                                <td style="text-align: center">


                                                    <asp:HiddenField ID="hfName" runat="server" Value='<%# Eval("Name") %>' />

                                                    <b>
                                                        <asp:Label ID="Label1" Style="font-size: x-large" runat="server" Text='  <%# Eval("Name") %>' /></b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table style="width: 100%; background-color: #f5eded">

                                            <tr style="width: 100%; background-color: #e8e2e2">
                                                <asp:Repeater ID="rptOrders" runat="server">
                                                    <HeaderTemplate>
                                                        <table style="width: 100%; background-color: #e8e2e2">

                                                            <tr>
                                                                <br />
                                                                <th scope="col" style="width: 150px">Food Name
                                                                </th>
                                                                <th scope="col" style="width: 150px">Small Price
                                                                </th>
                                                                <th scope="col" style="width: 150px">Regular Price
                                                                </th>


                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr style="text-align: center">
                                                            <td>
                                                                <br />
                                                                <asp:Label ID="lblFoodName" runat="server" Text='<%# Eval("Name") %>' />
                                                            </td>

                                                            <td>
                                                                <br />
                                                                <asp:Label ID="lblSize" runat="server" Text='<%# Eval("Small_Price") %>' />
                                                            </td>
                                                            <td>
                                                                <br />
                                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Regular_Price") %>' />
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
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //products -->
</asp:Content>

