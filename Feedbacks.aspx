<%@ Page Title="Feedbacks :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Feedbacks.aspx.cs" Inherits="Account_blank_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="Dashboard.aspx"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Feedbacks</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!--  about-page -->
    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Give your valuable feedbacks</h3>
            <div class="about-text">
                <table>
                    <tr>
                        <td>Bag Id :</td>
                        <td>
                            <asp:DropDownList ID="ddlBagId" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBagId_SelectedIndexChanged"></asp:DropDownList>
                            <asp:Label ID="lblBagId" runat="server" Visible="false" Text=""></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlBagId" Display="Dynamic" ErrorMessage="Bag Id required." ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Rate :"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="ddlRate" runat="server">
                                <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                                <asp:ListItem Value="5 star" Text="5 star"></asp:ListItem>
                                <asp:ListItem Value="4 star" Text="4 star"></asp:ListItem>
                                <asp:ListItem Value="3 star" Text="3 star"></asp:ListItem>
                                <asp:ListItem Value="2 star" Text="2 star"></asp:ListItem>
                                <asp:ListItem Value="1 star" Text="1 star"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlRate" Display="Dynamic" ErrorMessage="Rate required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Comments :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="q1" Width="100%" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblError" runat="server" Text="" Style="color: #669900"></asp:Label></td>
                    </tr>
                </table>

                <div class="clearfix"></div>
            </div>

        </div>
    </div>




</asp:Content>

