
<%@ Page Title="Login :: BBD" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Login</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!-- login-page -->
    <div class="login-page about">
        <img class="login-w3img" src="images/img3.jpg" alt="">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Login to your account</h3>
            <div class="login-agileinfo">
                <form action="#" method="post">
                   
                     <asp:TextBox ID="txtUserId" runat="server" placeholder="User Id"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                   
                    <div class="wthreelogin-text">
                        <ul>
                            
                            <li><a href="#">Forgot password?</a> </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                  
                     <asp:Button ID="btnLogin" runat="server" Text="Login" Width="100%"  OnClick="btnLogin_Click"/>
                    <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000; font-size: x-small"></asp:Label>
                </form>
                <p>Don't have an Account? <a href="SignUp.aspx">Sign Up Now!</a></p>
            </div>
        </div>
    </div>
    <!-- //login-page -->
    <br />
    <br />
</asp:Content>

