<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

 <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/resources/dist/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <a class="navbar-brand text-black logo h1 align-self-center text-dark" href="/prd/detail?pno=63">베이직 화이트 스니커즈</a>
                                <h3 class="h2">Basic White Sneakers</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/resources/dist/img/banner_img_02.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                 <a class="navbar-brand text-black logo h1 align-self-center text-dark" href="/prd/detail?pno=64">스킨 케어 크림</a>
                                <h3 class="h2">Skin care cream</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/resources/dist/img/category_img_03.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <a class="navbar-brand text-black logo h1 align-self-center text-dark" href="/prd/detail?pno=65">패션 선글라스</a>
                                <h3 class="h2">Fashion Sunglasses</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
<!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Best of This Month</h1>
                <p>
                    이달의 베스트 상품
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="/prd/detail?pno=54"><img src="/resources/dist/img/best1.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">가죽 샌들</h5>
                <p class="text-center"><a class="btn btn-success" href="/prd/detail?pno=54">Go Detail</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="/prd/detail?pno=48"><img src="/resources/dist/img/best2.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">양털 후드</h2>
                <p class="text-center"><a class="btn btn-success" href="/prd/detail?pno=48">Go Detail</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="/prd/detail?pno=45"><img src="/resources/dist/img/best3.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">청반바지</h2>
                <p class="text-center"><a class="btn btn-success" href="/prd/detail?pno=45">Go Detail</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->
 <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Featured Product</h1>
                    <p>
                        추천 상품
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="/prd/detail?pno=65">
                            <img src="/resources/dist/img/feature1.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">₩ 39000원</li>
                            </ul>
                            <a href="/prd/detail?pno=65" class="h2 text-decoration-none text-dark">패션 선글라스</a>
                            <p class="card-text">
                                Fashion Sunglasses
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="/prd/detail?pno=66">
                            <img src="/resources/dist/img/feature_prod_02.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    
                                </li>
                                <li class="text-muted text-right">₩ 25000원</li>
                            </ul>
                            <a href="/prd/detail?pno=66" class="h2 text-decoration-none text-dark">애플워치 스트랩</a>
                            <p class="card-text">
                                 apple watch strap
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="/prd/detail?pno=53">
                            <img src="/resources/dist/img/feature2.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">₩ 57000원</li>
                            </ul>
                            <a href="/prd/detail?pno=53" class="h2 text-decoration-none text-dark">화이트&블랙 스니커즈</a>
                            <p class="card-text">
                                 white & black sneakers
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->
<jsp:include page="footer.jsp"/>