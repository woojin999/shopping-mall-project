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
            <h1 class="h1">문의 게시판</h1>
        </div>
    </div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<div class="row">
			<div class="col-lg-12">
				<c:forEach var="bvo" items="${list }">
					<!-- Card -->
					<div class="card mb-3">
						<div class="card-body">
							<div class="card-title">
							<c:if test="${bvo.image_file ne '' || bvo.image_file ne null }">
								<img class="decoration-lines" src="/_fileUpload/th_${bvo.image_file }"
									alt="alternative">
									</c:if>
									<span>&nbsp;&nbsp;&nbsp;조회 :&nbsp;&nbsp;${bvo.read_count }</span>
									<span>&nbsp;&nbsp;&nbsp;제목 :&nbsp;&nbsp;${bvo.title }</span>
									<span style="float:right;">&nbsp;&nbsp;&nbsp;작성자 :&nbsp;&nbsp;${bvo.made_by }</span>
									<span style="float:right;">&nbsp;&nbsp;&nbsp;작성일 :&nbsp;&nbsp;${bvo.mod_at }</span>
									<div>
							<a href="/brd/detail?bno=${bvo.bno }" class="btn btn-success text-white" style="float:right;">조회하기</a>
							</div>
							</div>
						</div>
					</div>
					<!-- end of card -->
				</c:forEach>
				  <div class="col text-end mt-2 mb-3">
				  <c:if test="${ses.email ne null && ses.email ne '' }">
         <a href="/brd/register" class="btn btn-success btn-lg px-3">글쓰기</a>
				  </c:if>
         </div>
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