<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp" />
<c:set var="ssmvo" value="${ses }" scope="session"/>
 <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="/_fileUpload/th_${pvo.image_file }" alt="Card image cap" id="product-detail">
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                        <c:if test="${ses.email eq 'master@master.com' || ses.email eq 'test@test.com'}">
                            <a id="modalCtaBtn" class="btn btn-success text-white "
                            href="/prd/remove?pno=${pvo.pno }">상품삭제</a>
                        </c:if>
                            <h1 class="h2">${pvo.pname }</h1>
                            <p class="h3 py-2">₩ ${pvo.price }원</p>
                            
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Size:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p class="text-muted"><strong>${pvo.psize }</strong></p>
                                </li>
                            </ul>

                            <h6>Description:</h6>
                            <p>${pvo.pname }</p>
                            

                           
                            <form action="/crt/insert" class="col-md-9 m-auto" method="post">
                                <div class="row">
                                   <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item">Size :
                                               <input type="hidden" class="form-control mt-1" id="pno" name="pno" placeholder="ex)${pvo.pno }" value="${pvo.pno }">
                                               <input type="hidden" class="form-control mt-1" id="orders" name="orders" value="${ssmvo.email }">
                                               <input type="hidden" class="form-control mt-1" id="pname" name="pname" placeholder="ex)${pvo.pname }" value="${pvo.pname }">
                                               <input type="hidden" class="form-control mt-1" id="price" name="price" placeholder="ex)${pvo.price }" value="${pvo.price }">
                                               <input type="text" class="form-control mt-1" id="psize" name="psize" placeholder="ex)${pvo.psize }">
                                            </li>
                                            <li class="list-inline-item">Quantity :
                                               <input type="number" class="form-control mt-1" id="pcount" name="pcount" placeholder="최소수량 : 1">
                                            </li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                       <a class="btn btn-success text-white mt-2 mb-3" href="/ord/register?pno=${pvo.pno }">구매하기</a>
                                </div>
                                <div class="row">
                                        <button type="submit" class="btn btn-success btn-lg px-3" name="submit" >장바구니 추가</button>
                                        </div>
</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->
   
   
   
   


   <jsp:include page="../footer.jsp"/> 