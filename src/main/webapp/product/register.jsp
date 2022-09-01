<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />


    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">상품 등록</h1>
            
        </div>
    </div>

    <!-- Start Contact -->
    <div class="container py-5">
        <div class="row py-5">
            <form action="/prd/insert" class="col-md-9 m-auto" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="">상품 ID</label>
                        <input type="text" class="form-control mt-1" id="pid" name="pid" placeholder="TOP:1,  PANTS:2,  OUTER:3,  SHOES:4,  ACC:5">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="">상품 이름</label>
                        <input type="test" class="form-control mt-1" id="pname" name="pname" placeholder="상품이름">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="">상품사이즈</label>
                    <input type="text" class="form-control mt-1" id="psize" name="psize" placeholder="ex)S/M/L/XL">
                </div>
                <div class="mb-3">
                    <label for="">상품가격</label>
                    <input type="text" class="form-control mt-1" id="price" name="price" placeholder="상품 가격">
                </div>
                <div class="mb-3">
                    <label for="">상품이미지(size : 600 x 800)</label>
                    <input type="file" class="form-control mt-1" id="file" name="imageFile" 
                    accept="image/png, image/jpeg, image/jpg, image/gif" >
                </div>
               <!--  <div class="mb-3">
                    <label for="">상품사이즈</label>
                    <textarea class="form-control mt-1" id="psize" name="psize" placeholder="ex)S/M/L//XL" rows="8"></textarea>
                </div> -->
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="submit" class="btn btn-success btn-lg px-3">상품 등록</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Contact -->


   <jsp:include page="../footer.jsp"/> 