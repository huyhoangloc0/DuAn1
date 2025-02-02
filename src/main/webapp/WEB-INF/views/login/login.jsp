<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LocShop - Home Marketplace</title>
	<link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="dist/output-scss.css">
    <link rel="stylesheet" href="dist/output-tailwind.css">
</head>

<body>
    <%@include file="_topnav.jsp" %>
	<%@include file="_header.jsp" %>
	<div class="breadcrumb-block style-shared">
            <div class="breadcrumb-main bg-linear overflow-hidden">
                <div class="container lg:pt-[134px] pt-24 pb-10 relative">
                    <div class="main-content w-full h-full flex flex-col items-center justify-center relative z-[1]">
                        <div class="text-content">
                            <div class="heading2 text-center">Login</div>
                            <div class="link flex items-center justify-center gap-1 caption1 mt-3">
                                <a href='index.html'>Homepage</a>
                                <i class="ph ph-caret-right text-sm text-secondary2"></i>
                                <div class='text-secondary2 capitalize'>Login</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="login-block md:py-20 py-10">
        <div class="container">
            <div class="content-main flex gap-y-8 max-md:flex-col">
                <div class="left md:w-1/2 w-full lg:pr-[60px] md:pr-[40px] md:border-r border-line">
                    <div class="heading4">Login</div>
                    <form class="md:mt-7 mt-4">
                        <div class="email ">
                            <input class="border-line px-4 pt-3 pb-3 w-full rounded-lg" id="username" type="email"
                                placeholder="Username or email address *" required />
                        </div>
                        <div class="pass mt-5">
                            <input class="border-line px-4 pt-3 pb-3 w-full rounded-lg" id="password" type="password"
                                placeholder="Password *" required />
                        </div>
                        <div class="flex items-center justify-between mt-5">
                            <div class='flex items-center'>
                                <div class="block-input">
                                    <input type="checkbox" name='remember' id='remember' />
                                    <i class='ph-fill ph-check-square icon-checkbox'></i>
                                </div>
                                <label for='remember' class="pl-2 cursor-pointer">Remember me</label>
                            </div>
                            <a href='forgot-password.html' class='font-semibold hover:underline'>Forgot Your Password?
                            </a>
                        </div>
                        <div class="block-button md:mt-7 mt-4">
                            <button class="button-main">Login</button>
                        </div>
                    </form>
                </div>
                <div class="right md:w-1/2 w-full lg:pl-[60px] md:pl-[40px] flex items-center">
                    <div class="text-content">
                        <div class="heading4">New Customer</div>
                        <div class="mt-2 text-secondary">Be part of our growing family of new customers! Join us today
                            and unlock a world of exclusive benefits, offers, and personalized experiences.</div>
                        <div class="block-button md:mt-7 mt-4">
                            <a href='register.html' class="button-main">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
    <%@include file="_footer.jsp" %>

    

    <script src="assets/js/phosphor-icons.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>


<!-- Mirrored from LocShop-html.vercel.app/marketplace.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 May 2024 15:22:16 GMT -->
</html>