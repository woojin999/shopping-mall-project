<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp" />






 <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Categories</h1>
                <ul class="list-unstyled">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/prd/tlist">
                            TOP
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/prd/plist">
                            PANTS
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/prd/slist">
                            SHOES
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/prd/alist">
                            ACC
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-inline shop-top-menu pb-3 pt-1">
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none mr-3" href="#"></a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="pvo" items="${list }">
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <c:if test="${pvo.image_file ne '' || pvo.image_file ne null }">
                                   <img class="decoration-lines" src="/_fileUpload/th_${pvo.image_file }" alt="alternative">
                                </c:if>
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                    <ul class="list-unstyled">
                                        <li><a class="btn btn-success text-white mt-2" href="/prd/detail?pno=${pvo.pno }"><i class="far fa-eye"></i></a></li>
                                    </ul>
                                </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">${pvo.pname }</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>${pvo.psize }</li>
                                    <li class="pt-2">
                                        <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                    </li>
                                </ul>
                               
                                <p class="text-center mb-0">₩ ${pvo.price }원</p>
                            </div>
                        </div>
                    </div>
                    </div>
                    </c:forEach>
                    
                    
                    
                </div>
                <div div="row">
                    <ul class="pagination pagination-lg justify-content-end">
                        <li class="page-item">
                        <c:if test="${ses.email eq 'master@master.com' || ses.email eq 'test@test.com'}">
                            <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="/prd/register" >상품 등록</a>
                        </c:if>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <!-- End Content -->
  <!-- Start Footer -->
   <jsp:include page="../footer.jsp"/> 