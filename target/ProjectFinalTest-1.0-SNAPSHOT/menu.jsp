<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<head>
<title>Sản Phẩm Chính</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="cssadmin/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link rel="stylesheet" href="cssadmin/search.css">
<link rel="stylesheet" href="cssadmin/mainproduct.css">
<link href="cssadmin/style.css" rel='stylesheet' type='text/css' />
<link href="cssadmin/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->

<!-- font-awesome icons -->
<link href="cssadmin/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<script src="jsadmin/jquery2.0.3.min.js"></script>
</head>
<body>
<%
    User user = (User)session.getAttribute("auth");
    if(user == null || !user.accept("admin"))
        response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="${pageContext.request.contextPath}/admin" class="logo">
        DYB Admin
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="nav notify-row" id="top_menu">
    <!--  notification start -->
    <ul class="nav top-menu">
        <!-- notification dropdown start-->
        <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                <i class="fa fa-bell-o"></i>
                <span class="badge bg-warning">3</span>
            </a>
            <ul class="dropdown-menu extended notification">
                <li>
                    <p>Thông Báo</p>
                </li>
                <li>
                    <div class="alert alert-info clearfix">
                        <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                        <div class="noti-info">
                            <a href="alldonhang.html" > 15 đơn hàng đang chờ xác nhận.</a>
                            
                        </div>
                    
                    </div>
                </li>
                <li>
                    <div class="alert alert-danger clearfix">
                        <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                        <div class="noti-info">
                            <a href="index.html"> Đang có hơn 50 người đang online.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="alert alert-success clearfix">
                        <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                        <div class="noti-info">
                            <a href="index.html"> Doanh thu đạt 8.000.000.</a>
                        </div>
                    </div>
                </li>

            </ul>
        </li>
        <!-- notification dropdown end -->
    </ul>
    <!--  notification end -->
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="imagesadmin/admin.png">
                <span class="username">DYB Admin</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="${pageContext.request.contextPath}/listnews?action=returns&id=1&page=1"><i class="fa fa-arrow-circle-right"></i>Cửa Hàng</a></li>
                <li><a href="${pageContext.request.contextPath}/profile"><i class=" fa fa-suitcase"></i>Cá Nhân</a></li>
                <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-key"></i> Đăng Xuất</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a  href="${pageContext.request.contextPath}/admin">
                        <i class="fa fa-dashboard"></i>
                        <span>Thống Kê</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a  href="javascript:;">
                        <i class="fa fa-home"></i>
                        <span>Trang Chủ</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="dstin.html">Tất Cả Tin</a></li>
                    </ul>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/display-order">
                        <i class="fa fa-building"></i>
                        <span>Tất Cả Đơn Hàng</span>
                    </a>

                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-product-hunt"></i>
                        <span>Sản Phẩm</span>
                    </a>
                    <ul class="sub">
                        <li><a href="${pageContext.request.contextPath}/list-product-manager">Tất Cả Sản Phẩm</a></li>
                        <li><a href="${pageContext.request.contextPath}/display-product-add">Thêm Sản Phẩm</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a   href="javascript:;">
                        <i class=" fa fa-user"></i>
                        <span>Tài Khoản</span>
                    </a>
                    <ul class="sub">
                        <li><a   href="${pageContext.request.contextPath}/load-all-account">Tất Cả Tài Khoản</a></li>
                        <li><a class="active" href="${pageContext.request.contextPath}/display-account-add">Thêm Tài Khoản</a></li>
                    </ul>
                </li>


                <li>
                    <a class="active" href="${pageContext.request.contextPath}/load-data-menu">
                        <i class="fa fa-shopping-bag"></i>
                        <span>Menu</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/load-data-category">
                        <i class="fa fa-shopping-basket"></i>
                        <span>Danh Mục</span>
                    </a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/display-product-other">
                        <i class="fa fa-suitcase"></i>
                        <span>Mặt Hàng Khác</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a  href="javascript:;">
                        <i class="fa fa-desktop"></i>
                        <span>Giao Diện </span>
                    </a>
                    <ul class="sub">
                        <li><a  href="hinhanh.html">Hình Ảnh</a></li>
                        <li><a  href="${pageContext.request.contextPath}/load-data-infor">Thông Tin</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a  href="javascript:;">
                        <i class="fa fa-percent"></i>
                        <span>Mã Giảm Giá </span>
                    </a>
                    <ul class="sub">
                        <li><a  href="${pageContext.request.contextPath}/display-load-discount">Tất Cả Mã Giảm Giá</a></li>
                    </ul>
                </li>
            </ul>             </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper" >
<%--		<div class="wthree-font-awesome">--%>
			<div class="grid_3 grid_4 w3_agileits_icons_page">
					<div class="icons">
						<h2 class="w3ls_head">Menu</h2>
						<div class="content_Promain">
							<div class="content_Prosub ">
								<div class="proright">
										<div class="proright_table">
											<div class="table_content_1">
												
											</div>
											<div class="table_content" style="max-height: 500px;">
												<table class="table table-bordered table1" >
                                                    <thead>
                                                    <tr class="active">
                                                        <th class="p p1">
                                                            STT
                                                        </th>
                                                        <th>Mã Sản Phẩm</th>
                                                        <th class="p p2">
                                                            Tên Sản Phẩm
                                                        </th>
                                                       <th>Thứ Tự Hiển Thị</th>
                                                        <th class="p p4"> 
                                                            Ngày Thêm
                                                        </th>
                                                        <th class="p p5">
                                                            Sửa
                                                        </th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${listmenu}" var="m" varStatus="loop">
													<tr>

														<td>
															${loop.index}
                                                        </td>
                                                        <td>${m.id}</td>
														<td>
															${m.name}
														</td>
                                                        <td>
                                                                ${m.orderMenu}
                                                        </td>
														<td>
															${m.date}
														</td>
														<td>
                                                            <a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-edit i-edit-menu"></i></a>
														</td>
													</tr>
                                                    </c:forEach>
                                                </tbody>
												</table>
                                            </div>
										</div>
								</div>
							</div>
						</div>
					</div>
			</div>
<%--		</div>--%>
		
</section>

</section>

<!--main content end-->
</section>
<!-- modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Chỉnh Sửa Sản Phẩm Chính</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="content">
                  <div class="rowadd row1">
                      <label  >Mã Sản Phẩm:</label>
                      <input class="id-menu-show" type="number" value="" readonly>
                  </div>
                  <div class="rowadd row2">
                      <label >Tên Sản Phẩm:</label>
                      <input class="name-menu-show" type="text" value="">
                  </div>
                  <div class="rowadd row1">
                      <label  >Thứ Tự Hiển Thị:</label>
                      <input data-dataorder = "" class="orther-menu-show" type="number" value="">
                  </div>
                  <div class="rowadd row1">
                      <label  >Ngày Thêm:</label>
                      <input class="date-menu-show" type="text" value="" readonly>
                  </div>
              </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                  <button type="button" data-dismiss="modal" class="btn btn-primary btn-save-menu">Lưu</button>
            </div>
      </div>
    </div>
</div>
<!-- End modal -->
<script src="jsadmin_ajax/Menu/EditMenu.js"></script>
<script src="jsadmin/bootstrap.js"></script>
<script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsadmin/scripts.js"></script>
<script src="jsadmin/jquery.slimscroll.js"></script>
<script src="jsadmin/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="jsadmin/jquery.scrollTo.js"></script>
<script src="jsadmin/search.js"></script>
<%--	sweetalert--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
