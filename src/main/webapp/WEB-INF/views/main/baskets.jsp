<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                        <span>장바구니</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                	<th>선택</th>
                                    <th>사진</th>
                                    <th class="p-name">상품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>삭제</th> <!-- <i class="ti-close"></i> -->
                                </tr>
                            </thead>
                            <tbody>
                            	<c:set var="ini" value="홍길동" />
                            	<c:forEach items="${stock}" var="stock">
                            	<c:set var="stockName" value="${stock.stockName}"/>
                            	<%-- <c:set var="check" value="${stock.stockName}"/>
                            	<c:if test="${ini == '홍길동' }">
                            		<c:set var="check" value="바나나"/>
                            		<c:set var="ini" value="강감찬"/>
                            	</c:if>
                            	<c:if test="${check != stockName }">  --%>
                            		<c:set var="stockPhoto" value="${stock.stockPhoto}"/>
                            		<c:set var="optionColor" value="${stock.optionColor}"/>
                            		<c:set var="optionSize" value="${stock.optionSize}"/>
                            		<c:set var="stockPrice" value="${stock.stockPrice}"/>
                            		<c:set var="basketAmount" value="${stock.basketAmount}"/>
                            		
                                <tr>
                                	<td><input type="checkbox"/></td>
                                    <td class="cart-pic first-row"><img src="${stockPhoto}" alt=""></td>
                                    <td class="cart-title first-row">
                                        <h5>${stockName}</h5>
                                        <small>${optionColor} / ${optionSize} </small>
                                    </td>
                                    <td class="p-price first-row">${stockPrice}</td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="${basketAmount}">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="close-td first-row"><i class="ti-close"></i></td>
                                </tr>
                            	<%-- </c:if> --%>
                               </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="discount-coupon">
                                <h6>보유적립금</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text" value="4000" readonly>
                                </form>
                                <br>
                                <h6>사용할 적립금</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text">
                                    <button type="submit" class="site-btn coupon-btn">Apply</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="subtotal">총가격 <span>24000원</span></li>
                                    <li class="subtotal">배송비 <span>4000원</span></li>
                                    <li class="subtotal">적립금사용 <span>-2000원</span></li>
                                    <li class="cart-total">Total <span>26000원</span></li>
                                </ul>
                                <a href="#" class="proceed-btn">결제하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->
<%@include file="/footer.jsp"%>