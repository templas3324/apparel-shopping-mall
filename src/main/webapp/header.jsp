<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreot.biz.user.dao.UserVO" %>
<%@ page import="com.oreot.biz.stock.dao.StockVO" %>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%
	UserVO member = (UserVO)session.getAttribute("member"); 
%>


<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>OreoT</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<!-- 페이지가 다른 원본에 대한 연결을 설정하고 가능한 한 빨리 프로세스가 시작되기를 원한다는 것을 브라우저에 알립니다. -->
<!-- 성현님 추가 한것 공부하고 적용 시켜보자
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet"> 
-->


<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

</head>

<style type="text/css">
	/* select 세모 아이콘 변경 */
   	 select{
   	 	border:none; /* 태두리 없애기 */
   	 	
		/* -moz-appearance:none;
		-webkit-appearance:none;  */
		 /* appearance:none;  꺽쇠  */
	}

	
	 /* select::-ms-expand{
		 display:none; 
	}  */   

</style>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2"> <!-- row 1번 -->
						<div class="logo">
							<a href="/">
								<img src="img/apple-icon.png" alt="">
							</a>
						</div>
					</div>
					
					<div class="col-lg-7 col-md-7"> <!-- row 2번 -->
						<form action="shop.do" method="get"> <!-- 검색기능 -->
							 <div class="advanced-search">
								<%--
								<div class="category-btn">
									 <select  name="searchCondition" id="searchCondition"> <!-- 검색조건 searchCondition 속성값 -->
										<c:forEach items="${conditionMap}" var="option">
											<option value="${option.value}" >${option.key}</option>
										</c:forEach>
									</select> 
								</div>
								--%>
								<div class="input-group">
									<input type="text"  placeholder="상품명을 입력하세요." id="searchKeyword" name="searchKeyword" value="${searchKeyword}"> <!-- id="searchKeyword" name="searchKeyword" 둘중 하나를 입력하니 검색했던 기록이 뜬다 -->
									<button type="submit"><i class="ti-search"></i></button>
								</div>					
							 </div>
						</form>
					</div>
					<%--  <select id="searchCondition" name="searchCondition">
								<c:forEach items="${conditionMap }">
									<option value="${option.value }" >${option.key }</option>
								</c:forEach>
							</select> 
					--%>
					<div class="col-lg-3 text-right col-md-3"> <!-- row 3번 -->
						<ul class="nav-right">
							<li class="heart-icon"> 
								
								<a href="myinterests.do"> <!-- 관심상품 -->
									<i class="icon_heart_alt"></i>
									<span>${iseq}</span>
								</a>
							</li>
							<li class="cart-icon">
								
								<a href="baskets.do"> <!-- 장바구니 -->
									<i class="icon_bag_alt"></i>
									<span>${bseq}</span>
								</a>
								<!-- 로그인이 안되어 있을 땐 표시 안하게끔 할 수 없을까? -->
								<% 
									if(member!=null) {
								%>
								<!-- 
								<div class="cart-hover">
									<div class="select-items">
									
										<table>
											<tbody>
											<c:forEach items="${sessionStock}" var="hbaskets">
												<tr>
													<td class="si-pic">
														<img src="${hbaskets.stockPhoto}" alt="">
													</td>
													<td class="si-text">
														<div class="product-selected">
															<p>${hbaskets.stockPrice}</p>
															<h6>${hbaskets.stockName}</h6>
														</div>
													</td>
													<td class="si-close">
														<i class="ti-close"></i>
													</td>
												</tr>
											</c:forEach>
												<tr>
													<td class="si-pic">
														<img src="img/select-product-2.jpg" alt="">
													</td>
													<td class="si-text">
														<div class="product-selected">
															<p>40,000 x 1</p>
															<h6>노랑 가디건</h6>
														</div>
													</td>
													<td class="si-close">
														<i class="ti-close"></i>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>100,000</h5>
									</div>
									<div class="select-button">
										<a href="#" class="primary-btn view-card">장바구니 더보기</a>
										<a href="#" class="primary-btn checkout-btn">결제하기</a>
									</div>
								</div>
								 -->
								<%} %>
							</li>
							<%
							if(member==null) {
							%>
							<li class="heart-icon"> <%-- 로그인 --%>
								<a href="login.me">
									<i class="icon_key_alt"></i>
								</a>
							</li>
							<%
							} else {
							%>
							<!--li class="cart-price" -->
							<li class="heart-icon"> <%-- 마이페이지 --%>
							
								<a href="myPage.me">
									<i class="icon_profile"></i>
								</a>
							</li>
							<li class="heart-icon"> <%-- 로그아웃 --%>
								<a href="logout.me">
									<i class="icon_lock-open"></i>
								</a>
							</li>
							<%}%>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item" align="center">
			<div class="container">
				<!-- 반응형 -->
				<nav class="nav-menu mobile-menu" style="">					
					<ul>					
						<li>   <!-- li에서 class="active" 뺌: UI 이유 -->							
							<a href="shop.do?lcategoriesNum=2&scategoriesNum=0">상의</a>								
							<ul class="dropdown">
								<li><a href="shop.do?lcategoriesNum=2&scategoriesNum=6">반팔티셔츠</a></li>   
								<li><a href="shop.do?lcategoriesNum=2&scategoriesNum=7">긴팔티셔츠</a></li>
								<li><a href="shop.do?lcategoriesNum=2&scategoriesNum=8">와이셔츠</a></li>
								<li><a href="shop.do?lcategoriesNum=2&scategoriesNum=9">맨투맨</a></li>
								<li><a href="shop.do?lcategoriesNum=2&scategoriesNum=10">트레이닝</a></li>
							</ul>
						</li>
						<li>
							<a href="shop.do?lcategoriesNum=1&scategoriesNum=0">하의</a>
							<ul class="dropdown">
								<li><a href="shop.do?lcategoriesNum=1&scategoriesNum=1">반바지</a></li> 
								<li><a href="shop.do?lcategoriesNum=1&scategoriesNum=2">청바지</a></li>
								<li><a href="shop.do?lcategoriesNum=1&scategoriesNum=3">면바지</a></li>
								<li><a href="shop.do?lcategoriesNum=1&scategoriesNum=4">8부바지</a></li>
								<li><a href="shop.do?lcategoriesNum=1&scategoriesNum=5">트레이닝</a></li>								  
							</ul>
						</li>
						<li>
							<a href="shop.do?lcategoriesNum=3&scategoriesNum=0">아우터</a>
							<ul class="dropdown">
								<li><a href="shop.do?lcategoriesNum=3&scategoriesNum=11">숏패딩</a></li>
								<li><a href="shop.do?lcategoriesNum=3&scategoriesNum=12">롱패딩</a></li>
								<li><a href="shop.do?lcategoriesNum=3&scategoriesNum=13">점퍼</a></li>
								<li><a href="shop.do?lcategoriesNum=3&scategoriesNum=14">자켓</a></li>
							</ul>
						</li>	
						<li>
							<a href="shop.do?lcategoriesNum=4&scategoriesNum=0">신발</a>
							<ul class="dropdown">
								<li><a href="shop.do?lcategoriesNum=4&scategoriesNum=15">슬리퍼</a></li>
								<li><a href="shop.do?lcategoriesNum=4&scategoriesNum=16">로퍼</a></li>
								<li><a href="shop.do?lcategoriesNum=4&scategoriesNum=17">운동화,단화</a></li>
								<li><a href="shop.do?lcategoriesNum=4&scategoriesNum=18">부츠</a></li>
							</ul>
						</li>
						<li>
							<a href="shop.do?lcategoriesNum=5&scategoriesNum=0">악세사리</a>
							<ul class="dropdown">
								<li><a href="shop.do?lcategoriesNum=5&scategoriesNum=19">반지</a></li>
								<li><a href="shop.do?lcategoriesNum=5&scategoriesNum=20">귀걸이</a></li>
								<li><a href="shop.do?lcategoriesNum=5&scategoriesNum=21">목걸이</a></li>
								<li><a href="shop.do?lcategoriesNum=5&scategoriesNum=22">가방</a></li>								
							</ul>
						</li>
					</ul>					
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->