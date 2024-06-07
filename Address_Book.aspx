<%@ Page Title="Address Book :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="Address_Book.aspx.cs" Inherits="Account_charts" %>

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
            height: 380px;
            width: 380px;
            text-align: center;
            float: left;
            margin: 10px;
            box-shadow: -5px -5px #808080;
            background: #f0eaea;
            padding-left: 5px;
            padding-right: 5px;
            font-size:xx-large;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Address Book</h3>
            <div class="about-text">
                 <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>
        <div class="box1">
            <div class="new_people">

                <b><a href="AddAddress.aspx">Add Address</a></b>
                <br />
                <br />
                
                <img src="../images/add_address.png" />
            </div>
        </div>
        <asp:Repeater ID="Address" runat="server">
            <ItemTemplate>

                <div class="box">
                    <asp:Label ID="lblId" Style="font-size: medium" Visible="false" runat="server" Text='  <%# Eval("Id") %>' />
                    <br />
                    <t style="font-size: large"><b>&nbsp;&nbsp;Full Name:</b></t>
                    <br />
                    <t style="font-size: large">&nbsp;&nbsp;<%# Eval("Fullname") %></t>
                    <br />
                    <t style="font-size: large"><b>&nbsp;&nbsp;Mobile:</b></t>
                    <br />
                    <t style="font-size: large">&nbsp;&nbsp;<%# Eval("Mobile") %></t>
                    <br />
                    <t style="font-size: large"><b>&nbsp;&nbsp;Address:</b></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<%#Eval("Address") %></t>
                    <br />
                    <t style="font-size: large"><b>&nbsp;&nbsp;Area:</b></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<%#Eval("Area") %></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<b>Landmark:</b></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<%#Eval("Landmark") %></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<b>City :</b> <%#Eval("City") %></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<b>State:</b><%#Eval("State") %></t>
                    <br />
                    <t style="font-size: medium">&nbsp;&nbsp;<b>Pin: </b><%#Eval("Pincode") %></t>
                    <br />
                    <br />
                    <table align="right">
                        <tr style="text-align: right">
                            <td style="text-align: right">&nbsp;&nbsp;<asp:LinkButton ID="lnkDelete" runat="server" OnClientClick="return confirm('Do you want to delete this Address ?');"
                                OnClick="DeleteBag"><img src="../images/Delete.png" alt="Delete "/></asp:LinkButton></td>
                        </tr>
                    </table>
                    <br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
            </div>
        </div>
    </div>
  
</asp:Content>

