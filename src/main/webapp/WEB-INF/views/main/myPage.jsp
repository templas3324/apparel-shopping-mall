<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 연결 -->
<%@include file ="/header.jsp" %>
<style type="text/css">
#welcome {
    min-height: 350px;
    background: #fff;
    padding: 80px 0;
}
.wel_header {
    text-align: center;
    color: #222222;
    padding-top: 0;
}
.fw-heading.fw-heading-center {
    padding-bottom: 40px;

}
.wel_header h2 {
    font-size: 36px;
    text-transform: uppercase;
    font-weight: 700;
    padding-bottom: 25px;
    font-family: 'Roboto Slab', serif !important;
    color: #222222;
}
.wel_header p {
    font-size: 16px;
    font-family: 'Open Sans', sans-serif;
}
#welcome .single_item {
    padding-top: 30px;
    text-align: center;
}
#welcome .welcome_icon {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    color: black;
    text-align: center;
    margin: 0 auto;
    border: 1px solid #C4C4C4;
    transition: .7s;
}
#welcome .welcome_icon i {
    margin-top: 25%;
    font-size: 50px;
    transition: .7s;
}
#welcome .item_list h4 {
    padding: 20px;
    text-transform: uppercase;
    font-weight: 700;
    font-size: 18px;
    color: #393939;
    transition: 0.7s;
    font-family: 'Roboto Slab', serif;
}
#welcome .item_list p {
    font-size: 14px;
    color: #646464;
    font-family: 'Open Sans', sans-serif;
}
#welcome .item_list:hover .welcome_icon {
    background: #43a906;
    cursor: pointer;
}
#welcome .item_list:hover .welcome_icon i {
    color: #fff;
}
#welcome .item_list:hover h4 {
    color: #43a906;
    cursor: pointer;
}
</style>
<section id="welcome">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="wel_header">
                            <h2>마이 페이지</h2>
                        </div>
                    </div>
                </div>
                <!--End of row-->
                <div class="row">
                    <div class="col-md-3">
                        <div class="item">
                            <div class="single_item">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                    <a href="editInfo.me">
                                        <i class="fa fa-leaf"></i>
                                    </a>
                                    </div>
                                    <h4>내 정보 수정</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                    <div class="col-md-3">
                        <div class="item">
                            <div class="single_item">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                        <a href="myaccumulated.me">
                                        <i class="fa fa-refresh"></i>
                                        </a>
                                    </div>
                                    <h4>적립금 확인</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                    <div class="col-md-3">
                        <div class="item">
                            <div class="single_item">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                    	<a href="myboard.me">
                                        <i class="fa fa-tint"></i>
                                        </a>
                                    </div>
                                    <h4>내가 쓴 리뷰</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                    <div class="col-md-3">
                        <div class="item">
                            <div class="single_item">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                    	<a href="myqna.me">
                                        <i class="fa fa-cog"></i>
                                        </a>
                                    </div>
                                    <h4>Q & A</h4>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--end of welcome section-->
<%@include file ="/footer.jsp" %>