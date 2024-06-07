<%@ Page Title="Dashboard :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Account_charts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .box1 {
            height: 100px;
            width: 200px;
            text-align: center;
            float: left;
            margin: 10px;
            box-shadow: -5px -5px #808080;
            background: #f0eaea;
            padding-left: 5px;
            padding-right: 5px;
            font-size:x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--  about-page -->
    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1" >Dashboard</h3>
            <div class="about-text">
                <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                <div class="box1">
                    <div class="new_people">

                        <b><a href="AddBag.aspx">Home Delivery</a></b>
                        <br />
                        <img src="../images/home_delivery.png"/>
                    </div>
                </div>
                <div class="box1">
                    <div class="new_people">

                        <b><a href="Reservation.aspx">Table Reservation</a></b>
                        <br />
                        <img src="../images/table_reservation.png"/>
                    </div>
                </div>
                <div class="box1">
                    <div class="new_people">

                        <b><a href="History.aspx">History</a></b>
                        <br />
                        <img src="../images/history.png"/>
                    </div>
                </div>
                <div class="box1">
                    <div class="new_people">

                        <b><a href="Address_Book.aspx">Address Book</a></b>
                        <br />
                        <img src="../images/Address_Book.png"/>
                    </div>

                </div>
                <div class="box1">
                    <div class="new_people">

                        <b><a href="Feedbacks.aspx">Feedbacks</a></b>
                        <br />
                        <img src="../images/Feedbacks.png"/>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>

        </div>
    </div>

</asp:Content>

