<%@ Page Title="Home Delivery" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Home_Delivery.aspx.cs" Inherits="Account_blank_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .box1 {
            height: 100px;
            width: 100%;
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
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:UpdatePanel ID="pnlPageRefresh" runat="server">
        <ContentTemplate>
            <div>

                <!-- breadcrumb -->
                <div class="container">
                    <ol class="breadcrumb w3l-crumbs">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li class="active">Home Delivery</li>
                    </ol>
                </div>
                <!-- //breadcrumb -->
                <!-- products -->
                <div class="products">
                    <div class="container">
                        <div class="col-md-9 product-w3ls-right">

                            <div class="products-row">
                                <asp:Panel ID="Panel2" runat="server">
                                    <div class="product-top">
                                        <h4>Add Food Item To Your Bag</h4>
                                        <ul>
                                            <li class="dropdown head-dpdn">
                                                <p>
                                                    <asp:Label ID="Label1" runat="server" Text="Date :" Style="color: #fff"></asp:Label><asp:Label ID="lblDate" runat="server" Text="" Style="color: #fff"></asp:Label>
                                                </p>

                                            </li>

                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                </asp:Panel>
                                <div class="col-md-12 product-grids">
                                    <div class="sign-up">

                                        <div class="clearfix"></div>

                                        <asp:Panel ID="Panel1" runat="server">
                                            <table>
                                                <tr>
                                                    <td>Bag Id :</td>
                                                    <td>
                                                        <asp:Label ID="lblBagId" runat="server" Text=""></asp:Label></td>
                                                </tr>

                                                <tr>
                                                    <td>Category  :</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlCategory" runat="server" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCategory" Display="Dynamic" ErrorMessage="Category required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td>Food Name :</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlFood" runat="server" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="ddlFood_SelectedIndexChanged"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlFood" Display="Dynamic" ErrorMessage="Food name required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td>Size :</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlSize" runat="server" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlSize" Display="Dynamic" ErrorMessage="Size required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td>Price :</td>
                                                    <td>
                                                        <asp:Label ID="lblPriceTag" runat="server" Text="" AutoPostBack="True"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>Quantity :</td>
                                                    <td>
                                                        <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="true" MaxLength="3" Width="40px" OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="Quantity required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td>Total Amount :</td>
                                                    <td>
                                                        <asp:Label ID="lblTotalAmount" runat="server" Text="" AutoPostBack="True"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td style="text-align: right">
                                                        <asp:Button ID="btnAddProducts" runat="server" Text="Add" ValidationGroup="q1" OnClick="btnAddProducts_Click" /></td>
                                                </tr>
                                            </table>

                                        </asp:Panel>
                                        <div class="sub_home" id="YourCart">
                                            <asp:Label ID="lblError" runat="server" Text="" Style="color: #009900"></asp:Label>
                                            <br />
                                            <br />
                                            <div class="product-top">
                                                <h4>Your Bag</h4>
                                                <ul>
                                                    <li class="dropdown head-dpdn">
                                                        <p>
                                                            <asp:Label ID="Label2" runat="server" Text="Grand Total(Rs.) :" Style="color: #fff"></asp:Label>
                                                            <asp:Label ID="lblGrandTotal" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                                                        </p>

                                                    </li>

                                                </ul>
                                                <div class="clearfix"></div>
                                            </div>
                                            <br />
                                            <br />
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="Id" EmptyDataText="  Feeling Hungry ! Please add food items to your cart and then place your order.   " OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <Columns>
                                                    <asp:BoundField DataField="Category" HeaderText="Category" />
                                                    <asp:BoundField DataField="FoodName" HeaderText="FoodName" />
                                                    <asp:BoundField DataField="Size" HeaderText="Size" />
                                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" />

                                                    <asp:CommandField ShowDeleteButton="true" />
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#000065" />
                                            </asp:GridView>
                                            <asp:GridView ID="GridView2" runat="server" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#000065" />
                                            </asp:GridView>
                                            <br />
                                            <br />
                                           <%-- <p>
                                                <asp:Label ID="Label3" runat="server" Text="Total(Rs.) :" Style="color: #fff"></asp:Label>
                                                <asp:Label ID="lblSum" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                                            </p>
                                            <p>
                                                <asp:Label ID="Label4" runat="server" Text="Discount(%) :" Style="color: #fff"></asp:Label>
                                                <asp:Label ID="lblDiscount" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                                            </p>--%>
                                        </div>

                                        <div class="sub_home">


                                            <div class="contact-grid agileits">
                                                <h4 style="text-align: center">Finish</h4>
                                                <asp:DropDownList ID="ddlAddress" runat="server" Width="100%" AutoPostBack="true"></asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlAddress" Display="Dynamic" ErrorMessage="Address required" ForeColor="Red" ValidationGroup="y1" Style="font-size: xx-small"></asp:RequiredFieldValidator>

                                                <br />
                                                <br />
                                                <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" ValidationGroup="y1" Width="100%" />
                                                <asp:Label ID="lblOrderMsg" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                                            </div>

                                            <br />
                                            <br />
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3 rsidebar">


                            <div class="row row1 scroll-pane">
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
                                                                            <th scope="col" style="width: 150px; text-align: center">Food Name
                                                                            </th>
                                                                            <th scope="col" style="width: 150px; text-align: center">Small Price
                                                                            </th>
                                                                            <th scope="col" style="width: 150px; text-align: center">Regular Price
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
                            </div>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //products -->

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
