<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bg.aspx.cs" Inherits="Account_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login :: BBD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="keywords" content="Balle Balle Dhaba, Dhaba, Dhaba Bangalore, BBD, myballeballedhaba.com, balleballedhaba.com, dhaba bangalore, myballeballe, balle, balleballe" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="Portal/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="Portal/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="Portal/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <!-- lined-icons -->
    <link rel="stylesheet" href="Portal/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
    <!-- chart -->
    <script src="Portal/js/Chart.js"></script>
    <!-- //chart -->
    <!--animate-->
    <link href="Portal/css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="Portal/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <!----webfonts--->
    <link href='/../fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!-- Meters graphs -->
    <script src="Portal/js/jquery-1.10.2.min.js"></script>
    <!-- Placed js at the end of the document so the pages load faster -->

</head>
<body class="sign-in-up">
    <form id="form1" runat="server">
        <section>
            <div id="page-wrapper" class="sign-in-wrapper">
                <div class="graphs">
                    <div class="sign-in-form">
                        <div class="sign-in-form-top">
                            <p><span>Admin Portal</span></p>
                        </div>
                        <div class="signin">
                            <div class="log-input">
                                <div class="log-input-left">

                                    <asp:TextBox ID="txtUserId" runat="server" placeholder="User Id"></asp:TextBox>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="log-input">
                                <div class="log-input-left">
                                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login to your account" Width="100%" OnClick="btnLogin_Click" />
                                    <asp:Label ID="lblError" runat="server" Text="" style="color: #FF0000; font-size: x-small"></asp:Label>
                                </div>                               
                                
                                <div class="clearfix"></div>
                            </div>

                            <br />
                        </div>
                      
                    </div>
                </div>
            </div>
            <!--footer section start-->
            <footer>
                <p> Copyright 2018 - <a href="http://www.myballeballedhaba.com" target="_blank" rel="nofollow">Balle Balle Dhaba</a> Designed by Priya Prasad</p>
            </footer>
            <!--footer section end-->
        </section>

        <script src="Portal/js/jquery.nicescroll.js"></script>
        <script src="Portal/js/scripts.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="Portal/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
