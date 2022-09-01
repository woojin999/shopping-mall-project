<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />
<div class="container">
    <div class="row">
      <div class="container-fluid py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">문의 게시판</h1>
        </div>
    </div>
      <!-- end of col -->
    </div>
    </div>
<c:set var="ssmvo" value="${ses }" scope="session" />
<!-- Details 1 -->
<div id="details" class="basic-1 bg-gray">
	<div class="container">
		<div class="row">
        <div class="col-lg-6">
          <div class="image-container">
            <img class="img-fluid" id="imgFile"
              src="/_fileUpload/${bvo.image_file }" alt="alternative">
          </div>
        
          <!-- end of image-container -->
        </div>
        <!-- end of col -->
        <div class="col-lg-6" >
          <h3>제목 : &nbsp;&nbsp;${bvo.title }</h3>
          <p>조회수 : ${bvo.read_count } &nbsp;&nbsp;&nbsp;작성일 : ${bvo.mod_at }<br>작성자 : &nbsp;${bvo.made_by }&nbsp;&nbsp; &nbsp;email :&nbsp;${bvo.writer }</p>
          <hr>
          <h4></h4>
          <p>${bvo.description }</p>
          <hr>
          <c:if test="${ssmvo.email eq bvo.writer }">
            <a id="modalCtaBtn" class="btn btn-success text-white "
              href="/brd/modify?bno=${bvo.bno }">수정하기</a>
            <a id="modalCtaBtn" class="btn btn-success text-white "
              href="/brd/remove?bno=${bvo.bno }">삭제하기</a>
          </c:if>
        </div>
        <!-- end of col -->
  </div>    
	</div>
	<!-- end of container -->
</div>
<!-- end of basic-1 -->
<!-- end of details 1 -->
<!-- Details Modal -->


<!-- Questions -->
<div class="accordion-1">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 mt-2 text-center">
				<h2 class="h2-heading mt-4">문의 답변</h2>
				<c:if test="${ses.email ne null && ses.email ne '' }">
				<div class="input-group mb-3">
				  <span class="input-group-text" id="cmtWriter">${ssmvo.email }</span>
					<input type="text" class="form-control" id="cmtText" placeholder="댓글 작성">
					<button class="btn btn-success" type="button" id="cmtAddBtn">등록</button>
				</div>
				</c:if>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="accordion" id="accordionExample">

					<!-- Accordion Item -->
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">writer</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse show"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body">content, mod_at</div>
						</div>
					</div>
					<!-- end of accordion-item -->

				</div>
				<!-- end of accordion -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of accordion-1 -->
<!-- end of questions -->
<script>
const bnoVal = '<c:out value="${bvo.bno}"/>';
</script>
<script src="/resources/js/boards.detail.js"></script>
<script>
printCommentList(bnoVal);
</script>
<div class="mt-5"></div>
<jsp:include page="../footer.jsp" />