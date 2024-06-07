<%@ Page Title="Add Bag :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="AddBag.aspx.cs" Inherits="Account_blank_page" %>

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
    <!-- //banner -->
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Bag</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!-- products -->
    <div class="products">
        <div class="container">
            <div class="col-md-12 product-w3ls-right">
                <div class="product-top">
                    <h4>Bag</h4>
                    <ul>
                        <li class="dropdown head-dpdn">
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="Date :" Style="color: #fff"></asp:Label><asp:Label ID="lblDate" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                            </p>

                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="products-row">
                    <div class="sign-up">
                        <div class="sign-u">
                            <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                            <br />
                            <br />
                            <div class="clearfix"></div>
                        </div>
                        <asp:Panel ID="Panel1" runat="server">
                            <table>
                                <tr>
                                    <td>Bag Id :</td>
                                    <td>
                                        <asp:Label ID="lblBagId" runat="server" Text=""></asp:Label></td>
                                    <td style="text-align: right; width:50%">
                                        <asp:Button ID="btnAdd" runat="server" Text="Add" ValidationGroup="q1" OnClick="btnAdd_Click" /></td>
                                </tr>

                            </table>
                            <div class="clearfix"></div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <div class="clearfix"></div>
                            <table>
                                <tr>
                                    <td>Bag Id :</td>
                                    <td>
                                        <asp:Label ID="lblViewBagId" runat="server" Text=""></asp:Label></td>
                                    <td style="text-align: right;width:50%">
                                        <asp:Button ID="btnProceed" runat="server" Text="Proceed" OnClick="btnProceed_Click" /></td>
                                </tr>

                            </table>
                        </asp:Panel>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //products -->





</asp:Content>
