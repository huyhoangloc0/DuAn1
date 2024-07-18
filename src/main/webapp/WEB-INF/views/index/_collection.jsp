<div class="collection-block md:pt-[60px] pt-10">
        <div class="container">
            <div class="heading flex items-center justify-between gap-5 flex-wrap">
                <div class="heading3">Our Collections</div>
                <a href='shop-breadcrumb-img.html' class='text-button pb-0.5 border-b-2 border-black'>View All
                </a>
            </div>
            <div class="list grid xl:grid-cols-4 sm:grid-cols-2 sm:gap-[30px] gap-[20px] md:mt-10 mt-6">
            <c:forEach var="item" items="${categories}">
                <div class="item flex gap-3 px-5 py-6 border border-line rounded-2xl">
                    <a href='shop-breadcrumb-img.html' class='img-product w-[100px] h-[100px] flex-shrink-0'>
                        <img src='/assets/images/${item.image}' class='w-full h-full object-cover'
                            alt='img' />
                    </a>
                    <div class="text-content w-full">
                        <div class="heading6 pb-4">${item.name}</div>
                        <ul>
                            <li>
                                <a href="shop-breadcrumb-img.html"
                                    class="has-line-before caption1 text-secondary hover:text-black">${item.description}</a>
                            </li>
                            <li class="mt-1">
                                <a href="shop-breadcrumb-img.html"
                                    class="has-line-before caption1 text-secondary hover:text-black">${item.description2}</a>
                            </li>
                        </ul>
                        <a href='shop-breadcrumb-img.html' class='flex items-center gap-1.5 mt-4'>
                            <span class="text-button">All Smartphone</span>
                            <i class="ph-bold ph-caret-double-right text-sm"></i>
                        </a>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>