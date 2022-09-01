<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />


    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">로그인</h1>
            
        </div>
    </div>

    <!-- Start Contact -->
    <div class="container py-5">
        <div class="row py-5">
            <form action="/mem/login_auth" class="col-md-9 m-auto" method="post">
              
                <div class="mb-3">
                    <label for="">아이디(email)</label>
                    <input type="email" class="form-control mt-1" id="email" name="email" placeholder="name@example.com" value="master@master.com">
                </div>
                <div class="mb-3">
                    <label for="">비밀번호</label>
                    <input type="password" class="form-control mt-1" id="pwd" name="pwd" placeholder="Password" value="1111">
                </div>
                <div class="row">
                 <button type="submit" class="btn btn-success text-white mt-4">로그인</button>
                </div>
            </form>
                 <form class="col-md-9 m-auto" >
                <div class="row">
                <a class="btn btn-success text-white mt-2" href="/mem/join">회원가입</a>
                </div>
                 </form>
        </div>
    </div>
    <!-- End Contact -->


  
<jsp:include page="../footer.jsp"/> 