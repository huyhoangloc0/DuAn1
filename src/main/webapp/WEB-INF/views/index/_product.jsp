<div class="top-product bg-surface mt-30 py-10">
        <div class="container">
            <div class="heading flex items-center justify-between gap-5 flex-wrap">
                <div class="heading3">Top Rated Products</div>
                <a href='productall' class='text-button pb-0.5 border-b-2 border-black'>View All
                </a>
            </div>
            <div class="list grid xl:grid-cols-3 sm:grid-cols-2 gap-4 md:mt-10 mt-6">
                <c:forEach var="item" items="${items}">
                <input type="hidden" name="id" value="${item.id}">
    <div class="product-item style-marketplace-list flex items-center gap-2 bg-white py-5 px-[39px] rounded" data-item="149">
        <div class="bg-img lg:w-[150px] w-[120px] flex-shrink-0 aspect-1/1">
            <img class="w-full h-full object-cover" src="/assets/images/product/${item.image}" alt="">
        </div>
        <div class="product-infor">
            <span class="caption2 mt-2">${item.name}</span>
            <div class="flex gap-0.5 mt-2">
                <i class="ph-fill ph-star text-sm text-yellow"></i>
                <i class="ph-fill ph-star text-sm text-yellow"></i>
                <i class="ph-fill ph-star text-sm text-yellow"></i>
                <i class="ph-fill ph-star text-sm text-yellow"></i>
                <i class="ph-fill ph-star text-sm text-yellow"></i>
            </div>
            <div class="flex items-center gap-3 mt-3">
                <span class="text-title inline-block">${item.price}$</span>
            </div>
            <a href="${pageContext.request.contextPath}/cart/add/${item.id}" class="btn btn-primary btn-sm btn-add-to-cart">Add To Cart</a>
        </div>
    </div>
</c:forEach>
            </div>
        </div>
    </div>