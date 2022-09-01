<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Men's Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="" href="">

    <link rel="stylesheet" href="/resources/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/dist/css/templatemo.css">
    <link rel="stylesheet" href="/resources/dist/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/resources/dist/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>
<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">Lee@project.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-0000-8888">010-0000-8888</a>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="/brd/list">문의 게시판</a>
                </div>
                <div> <c:if test="${ses.email eq null }">
                    <a class="navbar-sm-brand text-light text-decoration-none" href="/mem/login">로그인&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="/mem/join">회원가입&nbsp;</a>
                     </c:if>
                      <c:if test="${ses.email ne null && ses.email ne '' }">
                         <a class="navbar-sm-brand text-light text-decoration-none" href="/ord/list?email=${mvo.email }">주문내역&nbsp;&nbsp;</a>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="/mem/logout?email=${ses.email}">로그아웃&nbsp;&nbsp;</a>
                    </c:if>
                    <a class="text-light" href="#" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="#" ><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="#" ><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="#" ><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->
    
     <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="/">
                Men's shop
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/prd/tlist">TOP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/prd/plist">PANTS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/prd/olist">OUTER</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/prd/slist">SHOES</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/prd/alist">ACC</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon position-relative text-decoration-none" href="/ord/list">
                    </a>
                    <a class="nav-icon position-relative text-decoration-none mr-3" href="/crt/list?email=${mvo.email }">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 mr-3 translate-middle badge rounded-pill bg-light text-dark">cart</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none mr-3" href="#">
                    </a>
                   <%--  <c:if test="${ses.email ne null && ses.email ne '' }">
                    <a class="nav-icon position-relative text-decoration-none" href="/mem/modify?email=${mvo.email }">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">mypage</span>
                    </a>
                    </c:if> --%>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
<!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>