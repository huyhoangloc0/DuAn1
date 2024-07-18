<div class='header-menu style-one absolute top-0 left-0 right-0 w-full md:h-[74px] h-[56px] bg-transparent'>
            <div class="container mx-auto h-full">
                <div class="header-main flex justify-between h-full">
                    <div class="menu-mobile-icon lg:hidden flex items-center">
                        <i class="icon-category text-2xl"></i>
                    </div>
                    <div class="left flex items-center gap-16">
                        <a href='index' class='flex items-center max-lg:absolute max-lg:left-1/2 max-lg:-translate-x-1/2'>
                            <div class="heading4">LocShop</div>
                        </a>
                        <div class="menu-main h-full max-lg:hidden">
                            <ul class='flex items-center gap-8 h-full'>
                            <c:forEach var="item" items="${categories}">
                                <li class='h-full'>
                                    <a href="#!"
                                        class='text-button-uppercase duration-300 h-full flex items-center justify-center'>
                                        ${item.name}
                                    </a>
                                    <div class="mega-menu absolute top-[44px] left-0 bg-white w-screen">
                                        <div class="container">
                                            <div class="flex justify-between py-8">
                                                <div class="nav-link basis-2/3 grid grid-cols-4 gap-y-8">
                                                
                                                    <div class="nav-item">
                                                        <ul>
                                                            <li>
                                                                <a href="shop-breadcrumb1.html"
                                                                    class='link text-secondary duration-300 cursor-pointer'>
                                                                    ${item.description}
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-breadcrumb1.html"
                                                                    class='link text-secondary duration-300 cursor-pointer'>
                                                                    ${item.description2}
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="right flex gap-12">
                        <div class="max-md:hidden search-icon flex items-center cursor-pointer relative">
                            <i class="ph-bold ph-magnifying-glass text-2xl"></i>
                            <div class="line absolute bg-line w-px h-6 -right-6"></div>
                        </div>
                        <div class="list-action flex items-center gap-4">
                            <div class="user-icon flex items-center justify-center cursor-pointer">
                                <i class="ph-bold ph-user text-2xl"></i>
                                <div
                                    class='login-popup absolute top-[74px] w-[320px] p-7 rounded-xl bg-white box-shadow-small'>
                                    <a href='login.html' class="button-main w-full text-center">Login</a>
                                    <div class="text-secondary text-center mt-3 pb-4">Don’t have an account?
                                        <a href='register.html' class='text-black pl-1 hover:underline'>Register
                                        </a>
                                    </div>
                                    <div class="bottom pt-4 border-t border-line"></div>
                                    <a href='#!' class='body1 hover:underline'>Support</a>
                                </div>
                            </div>
                            <div class="max-md:hidden wishlist-icon flex items-center relative cursor-pointer">
                                <i class="ph-bold ph-heart text-2xl"></i>
                                <span
                                    class="quantity wishlist-quantity absolute -right-1.5 -top-1.5 text-xs text-white bg-black w-4 h-4 flex items-center justify-center rounded-full">0</span>
                            </div>
                            <div class="cart-icon flex items-center relative cursor-pointer">
                               <a href="cart"><i class="ph-bold ph-handbag text-2xl"></i></a> 
                                <span
                                    class="quantity cart-quantity absolute -right-1.5 -top-1.5 text-xs text-white bg-black w-4 h-4 flex items-center justify-center rounded-full">0</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>