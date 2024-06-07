<%@ Page Title="Add Address :: BBD" Language="C#" MasterPageFile="~/Account/MasterPage.master" AutoEventWireup="true" CodeFile="AddAddress.aspx.cs" Inherits="Account_charts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="about">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Add a new address</h3>
            <div class="about-text">
                <table>
                    <tr>
                        <td>Full Name :</td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Full Name required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Mobile number required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone number" ControlToValidate="txtMobile" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ValidationGroup="q1" Style="color: #FF0000; font-size: xx-small;"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td>Pincode :</td>
                        <td>
                            <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPincode" Display="Dynamic" ErrorMessage="Pincode required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Address :</td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Area :</td>
                        <td>
                            
                            <asp:DropDownList ID="ddlArea" runat="server" Font-Bold="False" >
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlArea" Display="Dynamic" ErrorMessage="Area required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Landmark :</td>
                        <td>
                            <asp:TextBox ID="txtLandmark" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLandmark" Display="Dynamic" ErrorMessage="Landmark required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>City :</td>
                        <td>Bangalore</td>
                    </tr>
                    <tr>
                        <td>State :</td>
                        <td>Karnataka</td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="btnAddAddress" runat="server" Text="Add Address" OnClick="btnAddAddress_Click" ValidationGroup="q1" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

