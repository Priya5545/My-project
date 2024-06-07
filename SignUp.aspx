<%@ Page Title="Sign Up :: BBD" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Sign Up</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!-- sign up-page -->
    <div class="login-page about">
        <img class="login-w3img" src="images/img3.jpg" alt="">
        <div class="container">

            <h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>
            <div class="login-agileinfo">
                <div class="sign-up">
                  
                    <h5>Personal Information</h5>
                    <div class="sign-u">
                        <div class="sign-up1">
                        </div>
                        <div class="sign-up2">
                            <asp:TextBox ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="User Name required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="sign-u">
                        <div class="sign-up1">
                        </div>
                        <div class="sign-up2">
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email required " ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ValidationGroup="q1" Style="color: #FF0000; font-size: xx-small;"></asp:RegularExpressionValidator>
                        </div>
                       <div class="clearfix"></div>
                    </div>
                    <div class="sign-u">
                        <div class="sign-up1">
                        </div>
                        <div class="sign-up2">
                            <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" placeholder="Mobile Number (+91-)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Mobile required " ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone number" ControlToValidate="txtMobile" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ValidationGroup="q1" Style="color: #FF0000; font-size: xx-small;"></asp:RegularExpressionValidator>

                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <h6>Login Information</h6>
                    <div class="sign-u">
                        <div class="sign-up1">
                        </div>
                        <div class="sign-up2">

                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="sign-u">
                        <div class="sign-up1">
                        </div>
                        <div class="sign-up2">

                            <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCPassword" Display="Dynamic" ErrorMessage="Confirm Password required" ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="sub_home">
                        <div class="sub_home_left">
                            <asp:Button ID="btnSignUp" runat="server" OnClick="Register_Click" Text="Register" ValidationGroup="q1" />
                        </div>
                        <div class="sub_home_right">
                            <p>
                                <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000; font-size: xx-small;"></asp:Label>
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
              
                <p>Already have an account?  <a href="Login.aspx">Login Now!</a></p>
            </div>
        </div>
    </div>
    <!-- //sign up-page -->
</asp:Content>

