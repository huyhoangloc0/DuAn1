<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
				<div class="buy-form">
					<div class="row">
						<div class="col-sm-12">
							<h4 class="page-title">Create Invoice</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<form:form action="/account/index" modelAttribute="account" method="post">
								<div class="row">
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="username">Username <span class="text-danger">*</span></form:label> 
											<form:input class="form-control" type="text" path="username"/>
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="activated">Activated </form:label> 
											<form:input class="form-control" type="text" path="activated"/>
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="admin">Role</form:label> 
											<form:input class="form-control" type="text" path="admin"/>
										</div>
									</div>
									

								</div>
								<div class="row">
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="email">Email</form:label> 
											<form:input class="form-control" type="text" path="email"/>
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="fullname">Fullname</form:label> 
											<form:input class="form-control" type="text" path="fullname"/>
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group bg-hover">
											<form:label path="password">Password</form:label> 
											<form:input class="form-control" type="text" path="password"/>
										</div>
									</div>
								</div>
								<div class="row">
										<div class="col-sm-6 col-md-3">
											<div class="form-group bg-hover">
												<form:label path="photo">Photo</form:label> 
												<form:input class="form-control" type="text" path="photo"/>
											</div>
										</div>
								</div>
								<div class="text-center m-t-20">
									<button class="btn btn-grey submit-btn m-r-10" formaction="/account/create" formmethod="post">Save & Send</button>
									<button class="btn btn-primary submit-btn">Save</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="page-wrapper">
			<div class="content">
				<div class="buy-form">
					<div class="row">
						<div class="col-sm-5 col-4">
							<h4 class="page-title">Invoices</h4>
						</div>
						<div class="col-sm-7 col-8 text-end m-b-30">
							<a href="create-invoice.html" class="btn btn-primary btn-rounded"><i
									class="fas fa-plus"></i> Create New Invoice</a>
						</div>
					</div>
					<form action="/account/index" method="post">
						<div class="row align-items-center">
						
						    <div class="col-sm-6 col-md-3">
						        <input type="text" class="form-control" name="username" id="searchInput" value="${username}" placeholder="Enter your search term">
						    </div>
						    <div class="col-sm-6 col-md-3">
						       <button type="submit" class="btn btn-success btn-block m-auto">Search</button>
						    </div>
						</div>
						</form>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table mb-0">
									<thead>
										<tr>
											<th scope="col">Username</th>
											<th scope="col">Activated</th>
											<th scope="col">Role</th>
											<th scope="col">Email</th>
											<th scope="col">FullName</th>
											<th scope="col">Password</th>
											<th scope="col">Photo</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="item" items="${categories}" varStatus="loop">
										<tr>
											<th scope="row">${item.username}</th>
											<td>${item.activated?"Hiện":"Ẩn"}</td>
											<td>${item.admin?"Admin":"User"}</td>
											<td>${item.email }</td>
											<td>${item.fullname }</td>
											<td>${item.password }</td>
											<td>${item.photo }</td>
											<td class="text-right">				
												<a class="btn btn-primary mr-2" href="/account/edit/${item.username }" role="button">></a>
												<a class="btn btn-danger mr-2" href="/account/delete/${item.username }" role="button"><i class="fas fa-times-circle"></i></a>
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
		

	
	
</body>

<!-- Mirrored from preadmin.dreamstechnologies.com/html/crypto/template1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jun 2024 03:24:08 GMT -->
</html>