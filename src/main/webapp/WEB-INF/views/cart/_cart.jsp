<div class="cart-block md:py-20 py-10">
        <div class="container">
            <div class="content-main flex justify-between max-xl:flex-col gap-y-8">
                <div class="xl:w-2/3 xl:pr-3 w-full">
                    <div class="list-product w-full sm:mt-7 mt-5">
                        <div class='w-full'>
                            <div class="heading bg-surface bora-4 pt-4 pb-4">
                                <div class="flex">
                                    <div class="w-1/2">
                                        <div class="text-button text-center">Products</div>
                                    </div>
                                    <div class="w-1/12">
                                        <div class="text-button text-center">Price</div>
                                    </div>
                                    <div class="w-1/6">
                                        <div class="text-button text-center">Quantity</div>
                                    </div>
                                    <div class="w-1/6">
                                        <div class="text-button text-center">Total Price</div>
                                    </div>
                                </div>
                            </div>
                            <c:set var="totalCartValue" value="0" />
                            <c:forEach var="item" items="${cart.items}">
                            <form action="${pageContext.request.contextPath}/cart/update/${item.id}" method="post">
                            <div class="list-product-main w-full mt-3"><div data-item="1" class="item flex md:mt-7 md:pb-7 mt-5 pb-5 border-b border-line w-full">
				                <div class="w-1/2">
				                    <div class="flex items-center gap-6">
				                    <input type="hidden" name="id" value="${item.id}">
				                        <div class="bg-img md:w-[100px] w-20 aspect-[3/4]">
				                            <img src="./assets/images/product/${item.image}" alt="img" class="w-full h-full object-cover rounded-lg">
				                        </div>
				                        <div>
				                            <div class="text-title">${item.name}</div>
				                            <div class="list-select mt-3"></div>
				                        </div>
				                    </div>
				                </div>
				                <div class="w-1/12 price flex items-center justify-center">
				                    <div class="text-title text-center">${item.price}$</div>
				                </div>
				                <div class="w-1/6 flex items-center justify-center">
				                    <div class="quantity-block bg-surface md:p-3 p-2 flex items-center justify-between rounded-lg border border-line md:w-[100px] flex-shrink-0 w-20">
								        <form action="${pageContext.request.contextPath}/cart/update/${item.id}" method="post">
									        <input type="hidden" name="qty" value="${item.qty - 1}">
									        <button type="submit" class="ph-bold ph-minus cursor-pointer text-base max-md:text-sm" ${item.qty == 0 ? 'disabled' : ''}></button>
								        </form>
								     
								        <div class="text-button quantity">${item.qty}</div>
								        <form action="${pageContext.request.contextPath}/cart/update/${item.id}" method="post">
								        	<input type="hidden" name="qty" value="${item.qty + 1}">
								        	<button type="submit" class="ph-bold ph-plus cursor-pointer text-base max-md:text-sm"></button>
								        </form>
								        
								    </div>
				                </div>
				                <div class="w-1/6 flex total-price items-center justify-center">
				                    <div class="text-title text-center">${item.price * item.qty}
				                    </div>
				                </div>
				                <div class="w-1/12 flex items-center justify-center">
								    <a href="${pageContext.request.contextPath}/cart/remove/${item.id}" class="btn btn-danger btn-sm">Remove</a>
								</div>

				            </div>	
				            <c:set var="totalCartValue" value="${totalCartValue + (item.price * item.qty)}" />
					    </div>
					    </form>
                        	</c:forEach>
                        </div>
                    </div>
                    
                    
                </div>
                <div class="xl:w-1/3 xl:pl-12 w-full">
				    <div class="checkout-block bg-surface p-6 rounded-2xl">
				        <div class="heading5">Order Summary</div>
				        <div class="total-cart-block pt-4 pb-4 flex justify-between">
						    <div class="heading5">Total</div>
						    <div class="">
						        <span class="heading5">$</span>
						        <span class="total-cart heading5">${totalCartValue}</span>
						        
						    </div>
						</div>

				        <div class="block-button flex flex-col items-center gap-y-4 mt-5">
				            <a href="checkout.html" class="checkout-btn button-main text-center w-full">
				                Process To Checkout
				            </a>
				            <a class="text-button hover-underline" href="${pageContext.request.contextPath}/index">Continue shopping</a>
				        </div>
				    </div>
				</div>
            </div>
        </div>
    </div>