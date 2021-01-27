<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Hướng Dẫn Mua Hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
    <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" href="css/lienhe.css">
    <link rel="stylesheet" type="text/css" href="css/hdmuahang.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
</head>

<body>
<!-- banner -->
<div class="banner_top innerpage" id="home" style="background: url(${images.img}) no-repeat 0px -221px">
    <div class="wrapper_top_w3layouts">
        <div class="header_agileits">
            <div class="logo inner_page_log">
                <h1><a class="navbar-brand" href="${pageContext.request.contextPath}${listMenu[0].link}?action=returns&id=${listMenu[0].id}"><span><c:out value="${infor.splitStr(infor.logo)[0]}"></c:out></span> <i><c:out value="${infor.splitStr(infor.logo)[1]}"></c:out></i></a></h1>
            </div>
            <!-- menu moi1 -->
            <div class="header_menu">
                <ul class="nav justify-content-center">
                    <c:forEach items="${listMenu}" var="m" >

                        <li class="nav-item">

                            <a class="nav-link" href="${pageContext.request.contextPath}${m.link}?action=returns&id=${m.id}&page=1">${m.name}</a>

                        </li>
                    </c:forEach>
                </ul>
            </div>




            <!-- sủa khúc này -->
            <div class="mobile-nav-button">
                <div class="shoecart shoecart2 cart cart box_1">
                    <a href="${pageContext.request.contextPath}/checkout?action=cart"><button class="top_shoe_cart" type="submit" name="submit" value=""><i
                            class="fa fa-cart-arrow-down" aria-hidden="true"></i></button></a>
                </div>
            </div>
            <!-- cart details -->
            <div class="top_nav_right">
                <c:if test="${sessionScope.auth == null}">
                    <a href="${pageContext.request.contextPath}/login"><button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button></a>
                </c:if>
                <c:if test="${sessionScope.auth != null}">
                    <button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button>

                    <div class="dropdown_user">
                        <ul>
                            <c:if test="${sessionScope.auth.loaiTaiKhoan == 'admin'}">
                                <li><a href="${pageContext.request.contextPath}/admin">Quản Lý Trang Web</a></li>
                            </c:if>
                            <li><a href="${pageContext.request.contextPath}/profile">Thông Tin Cá Nhân</a></li>
                            <li><a href="${pageContext.request.contextPath}/donmua">Đơn Mua</a></li>
                            <li><a href="${pageContext.request.contextPath}/sanphamdaxem">Sản Phẩm Đã Xem</a></li>
                            <li><a href="${pageContext.request.contextPath}/hdmuahang">Hướng Dẫn Mua Hàng</a></li>
                            <li><a href="${pageContext.request.contextPath}/logout">Đăng Xuất</a></li>
                        </ul>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <!-- //cart details -->
    <!-- search -->
    <div class="search_w3ls_agileinfo">
        <div class="cd-main-header">
            <ul class="cd-header-buttons">
                <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
            </ul>
        </div>
        <div id="cd-search" class="cd-search">
            <form action="#" method="post">
                <input name="Search" type="search" placeholder="Tìm kiếm...">
            </form>
        </div>
    </div>
    <!-- //search -->
    <div class="clearfix"></div>
    <!-- /banner_inner -->
    <div class="services-breadcrumb_w3ls_agileinfo">
        <div class="inner_breadcrumb_agileits_w3">

            <ul class="short">
                <li><a href="index.html">Trang Chủ</a><i>|</i></li>
                <li>Hướng Dẫn Mua Hàng</li>
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

<!-- //banner -->
<!-- top Products -->
<div class="ads-grid_shop">
    <div class="shop_inner_inf">

        <h2 class="head">Hướng Dẫn Mua Hàng</h2>
        <h4 class="head-1">Mua Hàng Tại DYB Store Rất Đơn Giản. Các Bước Như Sau</h4>

        <div class="hd-box">
            <div class="hdbox-left">
                <h3>Bước 1</h3>
                <h4>Thêm Sản Phẩm Vào Giỏ Hàng</h4>
                <p>Chọn kích thước, màu sắc, và số lượng nếu cần. Một số sản phẩm hỗ trợ các khuyến nghị về kích
                    cỡ. Chỉ cần nhấn vào "Xem mô tả sản phẩm";</p>
                <i class="fa fa-long-arrow-down"></i>
                <p>Nhấn Thêm Vào Giỏ Hàng </p>
            </div>
            <div class="hdbox-right">
                <img src="images/hdb1.png" alt="">
            </div>
        </div>

        <div class="hd-box">
            <div class="hdbox-left">
                <h3>Bước 2</h3>
                <h4>Thanh Toán Sau Khi Chọn Hàng.</h4>
                <p>Nhấn vào nút "Thanh Toán" để xem các mặt hàng đã được thêm vào. Nếu cần sửa, thì cũng có
                    thể sửa đổi;</p>
                <i class="fa fa-long-arrow-down"></i>
                <p>Nếu đơn hàng đúng, hãy nhấn vào "Thanh Toán".</p>
            </div>
            <div class="hdbox-right">
                <img src="images/hdb2.png" alt="">
                <img src="images/hdb22.png" alt="">
            </div>
        </div>

        <div class="hd-box">
            <div class="hdbox-left">
                <h3>Bước 3</h3>
                <h4>Đăng Nhập Vào Tài Khoản DYB Store Để Thanh Toán</h4>
                <p>Nếu bạn có tài khoản DYB Store, hãy điền vào form "Đăng nhập" hoặc đăng nhập trực tiếp qua
                    tài khoản Google hoặc tài khoản Facebook ;</p>
                <i class="fa fa-long-arrow-down"></i>
                <p>Nếu không, vui lòng điền vào form "Đăng Ký" và đăng ký tài khoản của bạn qua email.</p>
                <h4>Lưu Ý:</h4>
                <p> Chúng tôi sẽ bắt đầu xử lý đơn đặt hàng của bạn khi nhận được thanh toán của bạn và
                    bạn sẽ nhận được email xác nhận đơn hàng.</p>
                <p>Bạn có thể kiểm tra trạng thái của đơn hàng và xem trạng thái của gói trong "Đơn hàng
                    của tôi" sau khi đăng nhập.</p>
            </div>
            <div class="hdbox-right">
                <img src="images/hdb3.png" alt="">
            </div>
        </div>

        <!--                <div class="Ly-box">-->
        <!--                    <h4>Lưu Ý:</h4>-->
        <!--                    <ul>-->
        <!--                        <li>-->
        <!--                            <p> Chúng tôi sẽ bắt đầu xử lý đơn đặt hàng của bạn khi nhận được thanh toán của bạn và-->
        <!--                                bạn sẽ nhận được email xác nhận đơn hàng.</p>-->
        <!--                        </li>-->
        <!--                        <li>-->
        <!--                            <p>Bạn có thể kiểm tra trạng thái của đơn hàng và xem trạng thái của gói trong "Đơn hàng-->
        <!--                                của tôi" sau khi đăng nhập.</p>-->
        <!--                        </li>-->
        <!--                    </ul>-->
        <!--                </div>-->

    </div>
</div>


<!-- /newsletter-->


<div class="clearfix"></div>
</div>
<!-- //newsletter-->
<!-- footer -->
<div class="footer_agileinfo_w3">
    <div class="footer_inner_info_w3ls_agileits">
        <div class="footer_content_in">
            <div class="col-md-3 footer-left">
                <h2><a href="index.html"><span>DYB</span> Store </a></h2>
                <ul class="social-nav model-3d-0 footer-social social two">
                    <li>
                        <a href="#" class="facebook">
                            <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="twitter">
                            <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="instagram">
                            <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="pinterest">
                            <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9 footer-right">
                <div class="sign-grds">
                    <div class="col-md-4 sign-gd">
                        <h4>Thông tin của chúng tôi</h4>
                        <ul>
                            <li><a href="index.html">Trang Chủ</a></li>
                            <li><a href="trousersShop.html">Quần</a></li>
                            <li><a href="shop.html">Áo</a></li>
                            <li><a href="accessories.html">Phụ Kiện</a></li>
                            <li><a href="giamgia.html">Giảm Giá</a></li>
                            <li><a href="contact.html">Liên Hệ</a></li>
                        </ul>
                    </div>

                    <div class="col-md-5 sign-gd-two">
                        <h4>Thông tin cửa hàng</h4>
                        <div class="address">
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Số Điện Thoại</h6>
                                    <p>+1 234 567 8901</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Địa Chỉ Email</h6>
                                    <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Địa Chỉ</h6>
                                    <p> Đại học Nông Lâm, phường Linh Trung, quận Thủ Đức, TP. HCM, Việt Nam.

                                    </p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 sign-gd flickr-post">
                        <h4>Chứng nhận</h4>
                        <img src="images/dathongbao.png" alt="" style="width: 230px;">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <p class="copy-right-w3ls-agileits">&copy 2020 DYB Store. All rights reserved | Design by <a
                    href="index.html">DYBTeam</a></p>
        </div>
    </div>
</div>
</div>
<!-- //footer -->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    shoe.render();

    shoe.cart.on('shoe_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) { }
        }
    });
</script>
<!-- //cart-js -->
<!-- /nav -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>

<!-- //nav -->
<!-- script for responsive tabs -->
<script src="js/easy-responsive-tabs.js"></script>
<!--search-bar-->
<script src="js/search.js"></script>
<!--//search-bar-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!-- //end-smoth-scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>

</html>