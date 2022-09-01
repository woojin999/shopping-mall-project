<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />

<c:set var="ssmvo" value="${ses }" scope="session"/>
<!-- Pricing -->
<div id="pricing" class="cards-2 bg-gray">
  <div class="container">
    <div class="row">
      <div class="container-fluid py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">주문 내역</h1>
        </div>
    </div>
      <!-- end of col -->
    </div>
    <!-- end of row -->
    <div class="row">
      <div class="col-lg-12"> 
      <c:if test="${ssmvo.email ne null && ssmvo.email ne '' }">
        <c:forEach var="ovo" items="${list }">
          <!-- Card -->
          <div class="card mb-3">
            <div class="card-body">
              <div class="card-title">
                  <span>&nbsp;&nbsp;&nbsp;주문번호 :&nbsp;&nbsp;${ovo.ono }</span>
                  <span>&nbsp;&nbsp;&nbsp;상품 :&nbsp;&nbsp;${ovo.pname }</span>
                  <span>&nbsp;&nbsp;&nbsp;사이즈 :&nbsp;&nbsp;${ovo.psize }</span>
                  <a style="float:right;" id="modalCtaBtn" class="btn btn-success text-white " href="/ord/remove?ono=${ovo.ono }">취소</a>
                  <span style="float:right;">&nbsp;&nbsp;&nbsp;가격 :&nbsp;&nbsp;${ovo.price }&nbsp;&nbsp;&nbsp;&nbsp;</span>
                  <div>
              </div>
              </div>
            </div>
          </div>
          <!-- end of card -->
        </c:forEach>
         </c:if>
      </div>
      <!-- end of col -->
    </div>
    <!-- end of row -->
  </div>
  <!-- end of container -->
</div>
<!-- end of cards-2 -->
<!-- end of pricing -->

<jsp:include page="../footer.jsp" />