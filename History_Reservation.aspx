<%@ Page Title="Table Reservation History :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="History_Reservation.aspx.cs" Inherits="Account_charts" %>

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
            <h3 class="w3ls-title w3ls-title1">Table Reservation History</h3>
            <div class="about-text">

                <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>

                <div class="switches">
                    <asp:Repeater ID="Order" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 switch-rightt">
                                <div class="switch-right-grid">
                                    <div class="switch-right-grid1">
                                        <br />
                                        <table style="width: 100%; background-color: #f5eded">
                                            <tr>
                                                <td style="width: 33.33%">
                                                    <br />
                                                    <asp:Label ID="lblId" Visible="false" runat="server" Style="font-size: medium" Text='<%# Eval("Id") %>'></asp:Label>
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Reservation Date :</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%# Eval("Reservation_Date") %></t>
                                                </td>
                                                <td style="width: 33.33%">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Reservation Time :</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%# Eval("Reservation_Time") %></t>
                                                </td>
                                                <td style="width: 33.33%; text-align: center">
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Reserved On :</b></t>
                                                    <t style="font-size: medium">&nbsp;&nbsp;<%# Eval("Reserved_on") %></t>
                                                </td>
                                            </tr>
                                        </table>

                                        <table style="width: 100%; background-color: #f5eded">
                                            <tr>
                                                <td>
                                                    <br />
                                                    <t style="font-size: medium"><b>&nbsp;&nbsp;Guests:&nbsp;&nbsp;</b></t>
                                                    <t style="font-size: medium">Male :&nbsp;&nbsp;<%#Eval("Male_Guest") %>&nbsp;&nbsp;</t>
                                                    <t style="font-size: medium">Female :&nbsp;&nbsp;<%#Eval("Female_Guest") %>&nbsp;&nbsp;</t>
                                                    <br />
                                                    <br />
                                                </td>

                                            </tr>

                                        </table>
                                        <table style="background-color: lightgrey; width: 100%">

                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:LinkButton ID="lnkDelete" runat="server" OnClientClick="return confirm('Do you want to cancel this reservation?');"
                                                        OnClick="CancelBag"><img src="../images/cancel.png" alt="Cancel "/></asp:LinkButton></td>

                                            </tr>

                                        </table>
                                        <br />


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

