<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />
<c:set var="ssmvo" value="${ses }" scope="session"/>

    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">상품 주문</h1>
            
        </div>
    </div>

    <!-- Start Contact -->
    <div class="container py-5">
        <div class="row py-5">
            <form action="/ord/insert" class="col-md-9 m-auto" method="post">
                <div class="row">
                    <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="/_fileUpload/th_${pvo.image_file }" alt="Card image cap" id="product-detail">
                    </div>
                </div>
                    <div class="form-group col-md-6 mb-3">
                 <h1 class="h2">상품명 : ${pvo.pname }</h1>
                 <h1 class="h3">가격 : ${pvo.price }원</h1>
                    <div class="mb-3 mt-3">
                         <input type="hidden" class="form-control mt-1" id="pno" name="pno" value="${pvo.pno }">
                    </div>
                    <div class="mb-3 mt-3">
                         <input type="hidden" class="form-control mt-1" id="orders" name="orders" value="${ssmvo.email }">
                    </div>
                    <div class="mb-3">
                         <input type="hidden" class="form-control mt-1" id="pname" name="pname" value="${pvo.pname }">
                    </div>
                    <div class="mb-3">
                         <input type="hidden" class="form-control mt-1" id="price" name="price" value="${pvo.price }">
                    </div>
                    <div class="mb-3">
                        <label for="">Size</label>
                         <input type="text" class="form-control mt-1" id="psize" name="psize" placeholder="ex)S/M/L/XL" >
                    </div>
                    <div class="mb-3">
                        <label for="">수량</label>
                         <input type="number" class="form-control mt-1" id="pcount" name="pcount" placeholder="최소수량 : 1">
                    </div>
                    <div class="mb-3">
                        <label for="">주문자 성함</label>
                        <input type="test" class="form-control mt-1" id="name" name="name" placeholder="name">
                    </div>
                <div class="mb-3">
                    <label for="">주문자 전화번호</label>
                    <input type="text" class="form-control mt-1" id="phone" name="phone" placeholder="phone">
                </div>
                <div class="mb-3">
                    <label for="">주문자 주소</label>
                    <input type="text" class="form-control mt-1" id="address" name="address" placeholder="address">
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="submit" class="btn btn-success btn-lg px-3">주문하기</button>
                    </div>
                </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Contact -->


   <jsp:include page="../footer.jsp"/> 