<div id="header" class='relative w-full style-marketplace'>
        <div class='header-menu style-marketplace relative bg-[#263587] w-full md:h-[74px] h-[56px]'>
            <div class="container mx-auto h-full">
                <div class="header-main flex items-center justify-between h-full">
                    <div class="menu-mobile-icon lg:hidden flex items-center">
                        <i class="icon-category text-white text-2xl"></i>
                    </div>
                    <a href='index' class='flex items-center'>
                        <h4 class="heading4 text-white">LocShop</h4>
                    </a>
                    <div class="form-search w-2/3 pl-8 flex items-center h-[44px] max-lg:hidden">
                        <div class='w-full flex items-center h-full'>
                            <input type="text" class="search-input h-full px-4 w-full border border-line rounded-l"
                                placeholder="What are you looking for today?" />
                            <button
                                class="search-button button-main bg-red text-white h-full flex items-center px-7 rounded-none rounded-r">
                                Search
                            </button>
                        </div>
                    </div>
                    <div class="right flex gap-12">
                        <div class="list-action flex items-center gap-4">
                            <div class="user-icon flex items-center justify-center cursor-pointer">
                                <i class="ph-bold ph-user text-white text-2xl"></i>
                                <div class='login-popup absolute top-[74px] w-[320px] p-7 rounded-xl bg-white'>
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
                                <i class="ph-bold ph-heart text-white text-2xl"></i>
                                <span
                                    class="quantity wishlist-quantity absolute -right-1.5 -top-1.5 text-xs text-white bg-red w-4 h-4 flex items-center justify-center rounded-full">0</span>
                            </div>
                            <div class="cart-icon flex items-center relative cursor-pointer">
                            <a href="cart"><i class="ph-bold ph-handbag text-white text-2xl"></i></a>
                                <span
                                    class="quantity cart-quantity absolute -right-1.5 -top-1.5 text-xs text-white bg-red w-4 h-4 flex items-center justify-center rounded-full">0</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="top-nav-menu relative bg-white border-b border-line h-[44px] max-lg:hidden z-10">
            <div class="container h-full">
                <div class="top-nav-menu-main flex items-center justify-between h-full">
                    <div class="left flex items-center h-full">
                        <div class="menu-department-block relative h-full">
                            <div
                                class="menu-department-btn relative flex items-center sm:gap-24 gap-4 h-full w-fit cursor-pointer">
                                <div class="flex items-center gap-3">
                                    <i class="ph ph-list text-xl max-sm:text-base"></i>
                                    <div class="text-button whitespace-nowrap">Department</div>
                                </div>
                                <i class="ph ph-caret-down text-xl max-sm:text-base"></i>
                            </div> 
                            <div class='sub-menu-department style-marketplace absolute top-[84px] left-0 right-0 px-[26px] py-[5px] bg-surface rounded-xl border border-line open'>
                                <c:forEach var="item" items="${categories}">
                                <a href='${item.href}'
                                    class="item py-3 whitespace-nowrap border-b border-line w-full flex items-center justify-between">
                                    <span class="flex items-center gap-2">
                                        <i class="${item.icon}"></i>
                                        <span class=''>${item.name}</span>
                                    </span>
                                    <i class="ph-bold ph-caret-right"></i>
                                </a>
								</c:forEach>
                            </div>
                        </div>
                        <div class="menu-main style-eight h-full pl-12 max-lg:hidden">
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
                    <div class="right flex items-center gap-1">
                        <div class="caption1">Hotline:</div>
                        <div class="text-button-uppercase">+01 1234 8888</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Slider -->
        <div class="slider-block style-marketplace lg:h-[500px] md:h-[400px] sm:h-[320px] h-[280px] w-full">
            <div class="container pt-10 flex justify-end h-full w-full">
                <div class="slider-main lg:pl-5 h-full w-full">
                    <div class="h-full relative rounded-2xl overflow-hidden">
                        <div class="slider-item h-full w-full flex items-center bg-surface relative">
                            <div class="text-content md:pl-16 pl-5 basis-1/2 relative z-[1]">
                                <div class="text-sub-display text-white">BEST SELLING</div>
                                <div class="heading2 text-white md:mt-5 mt-2">Step Into New Worlds</div>
                                <a href='shop-breadcrumb-img.html'
                                    class="button-main bg-white text-black hover:bg-green md:mt-8 mt-3">Shop Now
                                </a>
                            </div>
                            <div class="sub-img absolute top-0 left-0 w-full h-full">
                                <img src='assets/images/slider/marketplace.png' alt='marketplace'
                                    class='w-full h-full object-cover' />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
