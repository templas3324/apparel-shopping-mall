<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 연결 -->
<%@include file ="/header.jsp" %>
	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hero-items owl-carousel"> <!-- hero-items : main.js 참고. -->
			<div class="single-hero-items set-bg" data-setbg="img/hero-1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-5">
							<span>Bag,kids</span>
							<h1>Black friday</h1>
							<!-- <p>머리에 꽃단 여자 나오는 그림</p> -->
							<a href="#" class="primary-btn">상품 바로가기</a>
						</div>
					</div>
					<div class="off-card"> <!-- 동그라미 단추 인듯. -->
						<h2>
							Sale <span>50%</span>
						</h2>
					</div>
				</div>
			</div>
			<div class="single-hero-items set-bg" data-setbg="img/hero-2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-5">
							<span>Bag,kids</span>
							<h1>Black friday</h1>
							<!-- <p>남자아이가 나오는 그림</p> -->
							<a href="#" class="primary-btn">Shop Now</a>
						</div>
					</div>
					<div class="off-card">
						<h2>
							Sale <span>50%</span>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Women Banner Section Begin -->
	<section class="women-banner spad">
		<div class="container-fluid">
			<div class="row">
					<!-- data-setbg : 이미지 경로 -->
				<div class="col-lg-3"> <!-- row1 컨테이너 -->
					<div class="product-large set-bg"
						data-setbg="img/products/women-large.jpg">
						<h2>상의</h2>
						<a href="#">더보기</a>
					</div>
				</div>
				<div class="col-lg-8 offset-lg-1"> <!-- row2 컨테이너 -->
					<div class="filter-control">
						<!-- filter-control.active 속성. js로 hover(or onclick)시 active 이동시키면 될 듯. 
							 혹은 li태그에 a태그를 넣어서 해당 상품 리스트 페이지를 호출하던가...?-->
						<ul>
							<li class="active">티셔츠</li>
							<li>와이셔츠</li>
							<li>맨투맨</li>
							<li>트레이닝</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel"> <!-- product-slider : 슬라이더 라이브러리. -->
						<div class="product-item"> <!-- product-item : 슬라이더 내 상품 객체 -->
							<div class="pi-pic"> <!-- pi-pic : 상품이미지 관련 div -->
								<img src="img/products/women-1.jpg" alt="">
								<div class="sale">Sale Off!
								<!-- 세일 마크 : div에 sale 넣어주면 알아서 붙음. -->
								</div>
								<div class="icon"> <!-- icon : 아이콘 담는 컨테이너. elegant-icons 참조하면 됨. -->
									<i class="icon_heart" style="color: red"></i>
									<!-- 클릭하면 관심상품 추가 + 하트아이콘 변경할 수 있는 js 필요. -->
									<!-- 관심전 : icon_heart_alt, 담은 후 : icon_heart -->
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text"> <!-- pi-text : 상품 텍스트 관련 div -->
								<div class="catagory-name">Coat</div>
								<a href="#">
									<h5>여성 의상<!-- 상품제목단(catagory-name) --></h5>
								</a>
								<div class="product-price">
									$14.00 <span>$35.00</span>
									<!-- 할인하니까 밑줄쫙(35달러) -->
								</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/women-2.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Shoes</div>
								<a href="#">
									<h5>Guangzhou sweater</h5>
								</a>
								<div class="product-price">$13.00</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/women-3.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Towel</div>
								<a href="#">
									<h5>Pure Pineapple</h5>
								</a>
								<div class="product-price">$34.00</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/women-4.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Towel</div>
								<a href="#">
									<h5>Converse Shoes</h5>
								</a>
								<div class="product-price">$34.00</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Women Banner Section End -->

	<!-- Man Banner Section Begin -->
	<section class="man-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="filter-control">
						<ul>
							<li class="active">반바지</li>
							<li>청바지</li>
							<li>면바지</li>
							<li>8부바지</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/man-1.jpg" alt="">
								<div class="sale">Sale</div>
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Coat</div>
								<a href="#">
									<h5>Pure Pineapple</h5>
								</a>
								<div class="product-price">
									$14.00 <span>$35.00</span>
								</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/man-2.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Shoes</div>
								<a href="#">
									<h5>Guangzhou sweater</h5>
								</a>
								<div class="product-price">$13.00</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/man-3.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Towel</div>
								<a href="#">
									<h5>Pure Pineapple</h5>
								</a>
								<div class="product-price">$34.00</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="img/products/man-4.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Towel</div>
								<a href="#">
									<h5>Converse Shoes</h5>
								</a>
								<div class="product-price">$34.00</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="product-large set-bg m-large"
						data-setbg="img/products/man-large.jpg">
						<h2>하의</h2>
						<a href="#">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Man Banner Section End -->

<%@include file ="/footer.jsp" %>




