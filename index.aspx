<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home :: BBD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all"/>
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />
    <!-- Owl-Carousel-CSS -->
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"/>
    <link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet"/>
    <!-- //web-fonts -->
</head>
<body>
    <form runat="server">
        <!-- banner -->
        <div class="banner">
            <!-- header -->
            <div class="header">
                <div class="w3ls-header">
                    <!-- header-one -->
                    <div class="container">
                        <div class="w3ls-header-left">
                            <p>Free home delivery at your doorstep.</p>
                        </div>
                        <div class="w3ls-header-right">
                           <ul>
                                <li class="head-dpdn">
                                    <i class="fa fa-phone" aria-hidden="true"></i>Call us: +91-8252645378
                                </li>
                                <li class="head-dpdn">
                                    <a href="index.aspx">Home</a>
                                </li>
                                <li class="head-dpdn">
                                    <a href="Menu.aspx">Menu</a>
                                </li>
                                <li class="head-dpdn">
                                    <a href="Contact.aspx">Contact</a>
                                </li>
                                <li class="head-dpdn">
                                    <a href="Login.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
                                </li>
                                <li class="head-dpdn">
                                    <a href="SignUp.aspx"><i class="fa fa-user-plus" aria-hidden="true"></i>Signup</a>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //header-one -->
                
            </div>
            <!-- //header-end -->
            <!-- banner-text -->
            <div class="banner-text">
                <div class="container">
                    <h2>Balle Balle Dhaba
                        <br>
                        <span>Delivering Tastes</span></h2>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!-- add-products -->
        <div class="add-products">
            <div class="container">
                <div class="add-products-row">

                    <div class="w3ls-add-grids">
                        <a href="Menu.aspx">
                            <h4><span>Get<br>
                                10% Off</span></h4>
                            <h5>On order of ₹ 200 and above </h5>
                            <h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                        </a>
                    </div>

                    <div class="col-md-6">

                        <asp:Repeater ID="Order" runat="server">
                            <ItemTemplate>
                                <div class="col-md-5 switch-rightt">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">

                                            <table style="width: 100%">

                                                <tr>
                                                    <td style="text-align: center">


                                                        <asp:HiddenField ID="hfName" runat="server" Value='<%# Eval("Name") %>' />

                                                        <b>
                                                            <asp:Label ID="Label1" Style="font-size: x-large" runat="server" Text='  <%# Eval("Name") %>' /></b>
                                                    </td>
                                                </tr>
                                            </table>


                                            <br />

                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br />
                                    <br />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="col-md-5 switch-rightt">
                            <div class="switch-right-grid">
                                <div class="switch-right-grid1">

                                    <table style="width: 100%">

                                        <tr>
                                            <td style="text-align: center">

                                                <b><a href="Login.aspx" style="font-size: x-large">Order Now</a></b>
                                            </td>
                                        </tr>
                                    </table>


                                    <br />

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <br />
                            <br />
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //add-products -->
        <!-- order -->
        <div class="wthree-order">
            <img src="images/i2.jpg" class="w3order-img" alt="" />
            <div class="container">
                <h3 class="w3ls-title">How To Order Online Food</h3>
                <p class="w3lsorder-text">Get your favourite food in 3 simple steps.</p>
                <div class="order-agileinfo">

                    <div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
                        <div class="order-w3text">
                            <i class="fa fa-first-order" aria-hidden="true"></i>
                            <h5>Choose Food</h5>
                            <span>1</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
                        <div class="order-w3text">
                            <i class="fa fa-truck " aria-hidden="true"></i>
                            <h5>Order</h5>
                            <span>2</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
                        <div class="order-w3text">
                            <i class="fa fa-money" aria-hidden="true"></i>
                            <h5>Cash On Delivery</h5>
                            <span>3</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
                        <div class="order-w3text">
                            <i class="fa fa-cutlery" aria-hidden="true"></i>
                            <h5>Enjoy Food</h5>
                            <span>4</span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //order -->
        <!-- deals -->
        <div class="w3agile-deals">
            <div class="container">
                <div class="w3agile-spldishes">
                    <div class="container">
                        <h3 class="w3ls-title">Special Foods</h3>
                        <div class="spldishes-agileinfo">

                            <div class="col-md-12 spldishes-grids">
                                <!-- Owl-Carousel -->
                                <div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Lassi.jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Lassi</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Paneer Chilli(veg-starters).jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Paneer Chilli</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Lazeez Chicken.jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Lazeez Chicken</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Plain Paratha(Breads).jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Plain Paratha</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Dhaba Chicken(Non veg main course).jpg" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Dhaba Chicken</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Butter Chicken(Non-veg main course).jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Butter Chicken</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Veg Jalfrezi.jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Veg Jalfrezi</h4>

                                        </div>
                                    </a>
                                    <a href="Menu.aspx" class="item g1">
                                        <img class="lazyOwl" src="images/Sahi Paneer.jpg" title="Our latest gallery" alt="" />
                                        <div class="agile-dish-caption">
                                            <h4>Sahi Paneer</h4>

                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //deals -->
        <!-- dishes -->

        <!-- //dishes -->

        <!-- footer -->

        <div class="copyw3-agile">
            <div class="container">
                <p>&copy; Copyright 2022 - Balle Balle Dhaba Designed by Priya Prasad</p>
            </div>
        </div>
        <!-- //footer -->
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            w3ls.render();

            w3ls.cart.on('w3sb_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
        </script>
        <!-- //cart-js -->
        <!-- Owl-Carousel-JavaScript -->
        <script src="js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    items: 3,
                    lazyLoad: true,
                    autoPlay: true,
                    pagination: true,
                });
            });
        </script>
        <!-- //Owl-Carousel-JavaScript -->
        <!-- start-smooth-scrolling -->
        <script src="js/SmoothScroll.min.js"></script>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/bootstrap.js"></script>
    </form>
</body>
</html>
