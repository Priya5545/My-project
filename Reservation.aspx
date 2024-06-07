<%@ Page Title="Table Reservation :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Account_blank_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../Calendar/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="../Calendar/Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="../Calendar/Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="../Calendar/Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=Date.ClientID %>").dynDateTime({

                daFormat: "%l;%M %p, %e %m,  %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Reserve your table</h3>
            <div class="about-text">
                <table>
                    <tr>
                        <td>Today&#39;s Date:</td>
                        <td>
                            <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Select Date  :</td>
                        <td>
                            <asp:TextBox ID="Date" runat="server" AutoPostBack="True"></asp:TextBox>

                            <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC00" BorderWidth="2px">
                                <SelectedDayStyle BackColor="#FFCC00" />
                            </asp:Calendar>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Pick date</asp:LinkButton>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Date" Display="Dynamic" ErrorMessage="Reservation Date required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Select Time:</td>
                        <td>
                            <asp:DropDownList ID="ddlTime" runat="server" Width="100%">
                                <asp:ListItem Text="--Select Time--" Value=""></asp:ListItem>
                                <asp:ListItem Text="11:30 AM" Value="11:30 AM"></asp:ListItem>
                                <asp:ListItem Text="12:00 PM" Value="12:00 PM"></asp:ListItem>
                                <asp:ListItem Text="12:30 PM" Value="12:30 PM"></asp:ListItem>
                                <asp:ListItem Text="01:00 PM" Value="01:00 PM"></asp:ListItem>
                                <asp:ListItem Text="01:30 PM" Value="01:30 PM"></asp:ListItem>
                                <asp:ListItem Text="02:00 PM" Value="02:00 PM"></asp:ListItem>
                                <asp:ListItem Text="02:30 PM" Value="02:30 PM"></asp:ListItem>
                                <asp:ListItem Text="06:30 PM" Value="06:30 PM"></asp:ListItem>
                                <asp:ListItem Text="07:00 PM" Value="07:00 PM"></asp:ListItem>
                                <asp:ListItem Text="07:30 PM" Value="07:30 PM"></asp:ListItem>
                                <asp:ListItem Text="08:00 PM" Value="08:00 PM"></asp:ListItem>
                                <asp:ListItem Text="08:30 PM" Value="08:30 PM"></asp:ListItem>
                                <asp:ListItem Text="09:00 PM" Value="09:00 PM"></asp:ListItem>
                                <asp:ListItem Text="09:30 PM" Value="09:30 PM"></asp:ListItem>
                                <asp:ListItem Text="10:00 PM" Value="10:00 PM"></asp:ListItem>
                                <asp:ListItem Text="10:30 PM" Value="10:30 PM"></asp:ListItem>
                                <asp:ListItem Text="11:00 PM" Value="11:00 PM"></asp:ListItem>
                                <asp:ListItem Text="11:30 PM" Value="11:30 PM"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlTime" Display="Dynamic" ErrorMessage="Reservation Time required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>

                    </tr>
                    <tr>
                        <td>No. of Guests :</td>
                        <td>
                            <asp:TextBox ID="txtMale" runat="server" placeholder="Male"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMale" Display="Dynamic" ErrorMessage="Number(0,1,2..)  of Male Guest required. " ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtFemale" runat="server" placeholder="Female"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFemale" Display="Dynamic" ErrorMessage="Number(0,1,2..)  of Female Guest required. " ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="text-align: center">
                        <td colspan="2"><asp:Button ID="btnReserve" runat="server" Text="Reserve" ValidationGroup="q1" OnClick="Reservation_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label></td>
                    </tr>
                </table>

                <div class="clearfix"></div>
            </div>

        </div>
    </div>

    
</asp:Content>

