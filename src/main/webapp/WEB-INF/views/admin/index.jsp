<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preadmin.dreamstechnologies.com/html/crypto/template1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jun 2024 03:23:56 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link rel="shortcut icon" type="image/x-icon"
			href="/assets2/img/favicon.ico">
		<title>Cryptocurrency - Bootstrap 5 Admin Template</title>
		<link rel="stylesheet" type="text/css"
			href="/assets2/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="/assets2/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" type="text/css"
			href="/assets2/plugins/fontawesome/css/all.min.css">
		<link rel="stylesheet" type="text/css"
			href="/assets2/css/select2.min.css">
		
		<link rel="stylesheet"
			href="/assets2/plugins/datatables/datatables.min.css">
		
		<link rel="stylesheet" href="/assets2/plugins/feather/feather.css">
		
		<link rel="stylesheet"
			href="/assets2/plugins/daterangepicker/daterangepicker.css">
		<link rel="stylesheet" type="text/css" href="/assets2/css/style.css">
</head>
<body>
	<div class="main-wrapper">

		<div class="header">
			<div class="header-left">
				<a href="index.html" class="logo"> <img
					src="/assets2/img/logo-icon.png" width="40" height="40" alt>
					<span>LocShop</span>
				</a>
			</div>
			<div class="left-right-menu">
				<a id="toggle_btn" class="left-chev" href="javascript:void(0);"><i
					class="fas fa-chevron-left"></i></a>
			</div>
			<a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i
				class="fas fa-bars"></i></a>
			<div class="header-nav-blk">
				<h4>Dashboard</h4>
				<span>My Activity</span>
			</div>
			<ul class="nav user-menu user-menu-group float-end">
				<li class="top-liv-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit">
							<img src="/assets2/img/icon/search-icon.svg" alt>
						</button>
					</form>
				</li>
				<li class="nav-item dropdown has-arrow user-profile-list"><a
					href="#" class="dropdown-toggle nav-link user-link"
					data-bs-toggle="dropdown"> <span class="user-img"><img
							class="rounded-circle" src="/assets2/img/profile/user-03.jpg"
							width="40" alt="Admin"> <span class="status online"></span>
					</span>
						<div class="user-names">
							<h5>Jim Carry</h5>
							<span>Administrator</span>
						</div>
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">My Profile</a> <a
							class="dropdown-item" href="edit-profile.html">Edit Profile</a> <a
							class="dropdown-item" href="settings.html">Settings</a> <a
							class="dropdown-item" href="login.html">Logout</a>
					</div></li>
			</ul>
			<div class="dropdown mobile-user-menu float-end">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="profile.html">My Profile</a> <a
						class="dropdown-item" href="edit-profile.html">Edit Profile</a> <a
						class="dropdown-item" href="settings.html">Settings</a> <a
						class="dropdown-item" href="login.html">Logout</a>
				</div>
			</div>
		</div>


		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="active"><a class="active" href="/admin/index"><img
								src="/assets2/img/icon/menu-icon-01.svg" alt="img"> <span>Dashboard</span></a>
						</li>
						<li class="submenu"><a href="/account/index"><img
								src="/assets2/img/icon/menu-icon-09.svg" alt="img"> <span>
									Accounts </span></a>
						</li>
						<li class="submenu"><a href="/category/index"><img
								src="/assets2/img/icon/menu-icon-08.svg" alt="img"> <span>
									Category </span></a>
						</li>
						<li class="submenu"><a href="#"><img
								src="/assets2/img/icon/menu-icon-11.svg" alt="img"> <span>
									Reports </span></a>
						</li>

						<li class="menu-title">UI Elements</li>

						<li class="submenu"><a href="#"><i class="fas fa-edit"></i>
								<span> Forms</span></a>
						</li>
							
						<li class="submenu"><a href="#"><i class="fas fa-table"></i>
								<span> Tables</span></a>
						</li>
					<div class="logout-btn">
						<a href="login.html" class="btn btn-primary"><img
							src="/assets2/img/icon/lock-out.svg" class="me-2" alt>Logout</a>
					</div>
				</div>
			</div>
		</div>


		<div class="page-wrapper bg-wrapper">
			<div class="content">
				<div class="row">
					<div class="col-sm-12">
						<div class="welcome-header">
							<div class="row">
								<div
									class="col-xl-6 col-lg-5 col-md-5 d-flex align-items-center">
									<div class="wel-come-name">
										<h4>
											Welcome , <span>Jim Carey</span>
										</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
						    <div class="col-md-1">
						        <div class="dash-widget-blk">
						            <ul>
						                <li>
						                    <div class="premium-box box-blue">
						                        <img src="/assets2/img/icon/menu-icon-07.svg" alt>
						                    </div>
						                    <div class="premium-name-blk title-blue">
						                        <h4>Category</h4>
						                        <h3>${categoryCount}</h3>
						                    </div>
						                </li>
						            </ul>
						        </div>
						    </div>
						    <div class="col-md-1">
						        <div class="dash-widget-blk">
						            <ul>
						                <li>
						                    <div class="premium-box box-blue">
						                        <img src="/assets2/img/icon/menu-icon-11.svg" alt>
						                    </div>
						                    <div class="premium-name-blk title-blue">
						                        <h4>Products</h4>
						                        <h3>${productCount}</h3>
						                    </div>
						                </li>
						            </ul>
						        </div>
						    </div>
						    <div class="col-md-1">
						        <div class="dash-widget-blk">
						            <ul>
						                <li>
						                    <div class="premium-box box-blue">
						                        <img src="/assets2/img/icon/menu-icon-09.svg" alt>
						                    </div>
						                    <div class="premium-name-blk title-blue">
						                        <h4>Accounts</h4>
						                        <h3>${accountCount}</h3>
						                    </div>
						                </li>
						            </ul>
						        </div>
						    </div>
						</div>
					</div>
				</div>
				
				
				
				<div class="row">
					<div class="col-xl-4">
						<div class="buy-form">
							<div class="border-watch">
								<div class="row">
									<div class="col d-flex align-items-center">
									    <div class="watch-head d-flex justify-content-between w-100">
									        <h4>Categories</h4>
									        <h4>${page.number+1}/${page.totalPages}</h4>
									    </div>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<table class="datatable table  custom-table">
									<thead>
										<tr>
											<th>ID</th>
											<th style="min-width: 110px;">Name</th>
											<th style="min-width: 110px;">Image</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="item" items="${page.content}" varStatus="loop">
										<tr>
											<td>${item.id}</td>
											<td>${item.name}</td>
											<td><img src='/assets/images/${item.image}'alt='img' style='max-width: 30px; max-height: 30px;'/></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link" href="/admin/index?page=0">First</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page=${(page.number-1<0)?0:page.number-1}">Previous</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page=${(page.number+1>page.totalPages-1)?page.totalPages-1:page.number+1}">Next</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page=${page.totalPages-1}">Last</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-xl-8">
						<div class="buy-form">
							<div class="border-watch">
								<div class="row">
									<div class="col d-flex align-items-center">
									    <div class="watch-head d-flex justify-content-between w-100">
									        <h4>Accounts</h4>
									        <h4>${page2.number+1}/${page2.totalPages}</h4>
									    </div>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<table class="datatable table  custom-table">
									<thead>
										<tr>
											<th style="min-width: 110px;">Username</th>
											<th style="min-width: 110px;">Role</th>
											<th style="min-width: 110px;">Email</th>
											<th style="min-width: 110px;">FullName</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="item" items="${page2.content}" varStatus="loop">
										<tr>
											<td>${item.username}</td>
											<td>${item.admin?"Admin":"User"}</td>
											<td>${item.email}</td>
											<td>${item.fullname}</td>
										</tr>
									</c:forEach>	
									</tbody>
								</table>
							</div>
							<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link" href="/admin/index?page2=0">First</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page2=${(page2.number-1<0)?0:page2.number-1}">Previous</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page2=${(page2.number+1>page2.totalPages-1)?page2.totalPages-1:page2.number+1}">Next</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page2=${page2.totalPages-1}">Last</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl">
						<div class="buy-form">
							<div class="border-watch">
								<div class="row">
									<div class="col d-flex align-items-center">
									    <div class="watch-head d-flex justify-content-between w-100">
									        <h4>Products</h4>
									        <h4>${page3.number+1}/${page3.totalPages}</h4>
									    </div>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<table class="datatable table  custom-table">
									<thead>
										<tr>
											<th>ID</th>
											<th style="min-width: 110px;">Date</th>
											<th style="min-width: 110px;">Image</th>
											<th style="min-width: 110px;">Name</th>
											<th style="min-width: 110px;">Price</th>
											<th style="min-width: 110px;">Category</th>
											<th style="min-width: 110px;">Qty</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="item" items="${page3.content}" varStatus="loop">
										<tr>
											<td>${item.id}</td>
											<td>${item.createDate}</td>
											<td><img src='/assets/images/product/${item.image}'alt='img' style='max-width: 30px; max-height: 30px;'/></td>
											<td>${item.name}</td>
											<td>${item.price}</td>
											<td>${item.categories.name}</td>
											<td>${item.qty}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link" href="/admin/index?page3=0">First</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page3=${(page3.number-1<0)?0:page3.number-1}">Previous</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page3=${(page3.number+1>page3.totalPages-1)?page3.totalPages-1:page3.number+1}">Next</a></li>
										<li class="page-item"><a class="page-link" href="/admin/index?page3=${page3.totalPages-1}">Last</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script data-cfasync="false"
		src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="/assets2/js/jquery-3.6.0.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/js/popper.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/js/bootstrap.bundle.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/js/feather.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/plugins/apexchart/apexcharts.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/apexchart/chart-data.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/plugins/datatables/jquery.dataTables.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/datatables/datatables.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/js/select2.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/amchart/js/core.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/amchart/js/charts.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/amchart/js/animated.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/amchart/js/am-charts.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/plugins/moment/moment.min.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script src="/assets2/plugins/daterangepicker/daterangepicker.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/js/jquery.slimscroll.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>

	<script src="/assets2/js/app.js"
		type="dddc354883220bfa7599394d-text/javascript"></script>
	<script
		src="../../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js"
		data-cf-settings="dddc354883220bfa7599394d-|49" defer></script>
		
<script type="text/javascript">
$(document).ready(function() {
    $('.pagination a').on('click', function(e) {
        e.preventDefault();
        var url = $(this).attr('href');
        $.ajax({
            type: 'GET',
            url: url,
            success: function(data) {
                $('#table-container').html(data); // Cập nhật nội dung bảng
            }
        });
    });
});
</script>
	
	
</body>

<!-- Mirrored from preadmin.dreamstechnologies.com/html/crypto/template1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jun 2024 03:24:08 GMT -->
</html>