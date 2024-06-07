<%@ Page Title="Contact :: BBD" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- breadcrumb -->
    <div class="container">
        <ol class="breadcrumb w3l-crumbs">
            <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
            <li class="active">Contact Us</li>
        </ol>
    </div>
    <!-- //breadcrumb -->
    <!-- contact -->
    <div id="contact" class="contact cd-section">
        <div class="container">
            <h3 class="w3ls-title">Contact us</h3>
            <p class="w3lsorder-text">We'd like to hear from you. </p>
            <div class="contact-row agileits-w3layouts">
                <div class="col-xs-6 col-sm-6 contact-w3lsleft">
                    <div class="contact-grid agileits">
                        <h4>DROP US A LINE </h4>
                        <form action="#" method="post">
                            <div class="sign-u">
                                <div class="sign-up1">
                                </div>
                                <div class="sign-up2">
                                    <asp:TextBox ID="txtUserName" runat="server" placeholder="Your Name"></asp:TextBox>
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
                            <div class="sign-u">
                                <div class="sign-up1">
                                </div>
                                <div class="sign-up2">
                                    <asp:TextBox ID="txtMessage" runat="server" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMessage" Display="Dynamic" ErrorMessage="Message required " ForeColor="Red" ValidationGroup="q1" Style="font-size: xx-small"></asp:RequiredFieldValidator>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="sub_home">
                                <div class="sub_home_left">
                                    <asp:Button ID="btnSignUp" runat="server" OnClick="Register_Click" Text="Register" ValidationGroup="q1" />
                                </div>
                                <div class="sub_home_right">
                                    <p>
                                        <asp:Label ID="lblError" runat="server" Text="" Style="color: #FF0000"></asp:Label>
                                    </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>


                        </form>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 contact-w3lsright">

                    <div class="address-row">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Visit Us</h5>
                            <p>Balle Balle Dhaba, Agara Main Road, Babusapalya, Kalyan Nagar, Opp Sethna Tower, Bengaluru, Karnataka, Pincode-560043 </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="address-row">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Hours Of Operation</h5>
                            <p>Morning Time 11:30 AM - 03:00 PM</p>
                            <p>Evening Time 06:30 PM - 12:30 AM</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="address-row w3-agileits">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Mail Us</h5>
                            <p><a href="mailto:info@balleballedhaba.com">info@balleballedhaba.com</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="address-row">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Call Us</h5>
                            <p>+91-8884021333</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- map -->
        <div class="map agileits">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15548.668332970065!2d77.6514812!3d13.0250298!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x629980dbf3732a1b!2sBalle+Balle+Dhaba!5e0!3m2!1sen!2sin!4v1527928799789"></iframe>
        </div>
        <!-- //map -->
    </div>
    <!-- //contact -->
</asp:Content>

