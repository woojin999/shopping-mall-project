<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />

<!-- Header -->
<header class="ex-header">
   <div class="row">
      <div class="container-fluid py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">수정하기</h1>
        </div>
    </div>
      <!-- end of col -->
    </div>
  <!-- end of container -->
</header>
<!-- end of ex-header -->
<!-- end of header -->

<c:set var="ssmvo" value="${ses }" scope="session"/>
<!-- Basic -->
<div class="ex-form-1">
  <div class="container">
    <div class="row">
      <div class="col-xl-6 offset-xl-3">
        <div class="text-box mt-3 mb-5">

					<!-- Sign Up Form -->
					<form action="/brd/update" method="post" enctype="multipart/form-data">
					<input type="hidden" value="${bvo.bno }" name="bno">
					<div class="mb-4 form-floating">
              <input type="text" class="form-control" id="" name="title"
                value="${bvo.title }"> <label for="">Board
                Title</label>
            </div>
            <div class="mb-4 form-floating">
              <input type="text" class="form-control" id="" name="made_by"
                 value="${bvo.made_by }"> <label for="">Board
                Made By</label>
            </div>
						<div class="mb-4 form-floating">
							<input type="text" class="form-control" id="" name="category"
								 value="${bvo.category }"> <label for="">Board
								Category</label>
						</div>
						<div class="mb-4 form-floating">
						<textarea rows="" cols="" class="form-control" name="description">${bvo.description }</textarea>
               <label for="">Board Description</label>
            </div>
            <div class="mb-4 form-floating">
              <input type="hidden" class="form-control" id="" name="image_file"
                 value="${bvo.image_file }">
            </div>
            <div class="mb-4 form-floating">
              <input type="file" class="form-control" id="" name="new_file"
                 accept="image/png, image/jpeg, image/jpg, image/gif">
            </div>
						<button type="submit" class="btn btn-success btn-lg px-3">수정하기</button>
					</form>
					<!-- end of sign up form -->

				</div>
				<!-- end of text-box -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of ex-basic-1 -->
<!-- end of basic -->

<jsp:include page="../footer.jsp" />