<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지 | Eat & See </title>

</head>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
var selectedColor;
window.onload = function(){
  init();
}

function colorChange() {
	var color = ["#E1DCD9", "#8F8681", "#c5aeb1", "#d9adac", "#B20A2C", "#f67866", "#ed7464];
	
	var num = Math.floor(Math.random() * color.length);
	var bodyTag = document.getElementById("colorCont");
	bodyTag.style.backgroundColor = color[num];
}

let click = document.querySelector(".click");

click.addEventListener("click", function() {
	
})
</script>
<style>

</style>
<body>
<div>

</div>
		  
		  <!-- 찜한 목록 5개 표시 -->
		<%--   <section class="like-section">
		    <header class="header">
		      <h4><span>내가 쓴 먹플리, 볼플리 </span><strong>${totalWishCount}</strong></h4>
		      <a href="${contextPath}/mypage/wish.do" class="btn-line">더보기</a>
		    </header>
		     
		     
		     </section> --%>
		   <%--  <!-- 찜한 목록이 있다면 -->
		  	<c:if test="${!empty wishList}">
		      <ul class="product-list small">
		        <c:forEach items="${wishList}" var="wishDTO">
		          <li> <!-- 상품이 삭제된 경우 -->
		           	<c:if test="${wishDTO.deleted == 1}">
		              <a href="#">
			            <span class="thumb">
		              	  <span class="soldout">판매중단</span>
			              <img src="${wishDTO.imageUrl}" alt="${wishDTO.productName}">
			            </span>
	                    <strong class="txt-ti ellipsis">${wishDTO.productName}</strong>
	                  </a>
		            </c:if>
		              
		            <!-- 상품이 삭제되지 않은 경우 -->
		            <c:if test="${wishDTO.deleted != 1 }">
			          <a href="${contextPath}/product/detail.do?pid=${wishDTO.productId}&cid=${wishDTO.companyId}">
			            <span class="thumb">
			              <!-- 상품 수량이 0인 경우 -->
			              <c:if test="${wishDTO.productCount == 0}">
			                <span class="soldout">일시품절</span>
			              </c:if>
			              <img src="${wishDTO.imageUrl}" alt="${wishDTO.productName}">
			            </span>
	                    <strong class="txt-ti ellipsis">${wishDTO.productName}</strong>
	                  </a>
	                </c:if>
		            <span class="info">
		              <span class="txt-price">
		                <!-- 할인하는 경우 -->
		                <c:if test="${wishDTO.discountPrice != wishDTO.productPrice}">
			              <strong><em><fmt:formatNumber value="${wishDTO.discountPrice}"/></em>원</strong>
			              <del><fmt:formatNumber value="${wishDTO.productPrice}"/></del>       
			            </c:if>
			            <!-- 할인하지 않는 경우 -->
			            <c:if test="${wishDTO.discountPrice == wishDTO.productPrice}">
			              <strong><em><fmt:formatNumber value="${wishDTO.discountPrice}"/></em>원</strong>     
			            </c:if>
		              </span>
		            </span>   
		          </li>    
		        </c:forEach>  
		      </ul>
		    </c:if>
		     
		    <!-- 좋아요 목록이 없는 경우 --> 
		    <c:if test="${empty wishList}">
		   	  <div class="nodata">찜 한 곳이 아직 없습니다.</div>
		    </c:if>
		  </section>
		   
		  <!-- 최근 본 목록 5개 표시 -->
		  <section class="view-section">
		    <header class="header">
		      <h4><span>최근 본 먹고 보자 </span><strong>${totalRvCount}</strong></h4>
		      <a href="${contextPath}/mypage/recent_view.do" class="btn-line">더보기</a>
		    </header>
		     
		    <!-- 최근 본 상품이 있다면 -->
		    <c:if test="${!empty rvList}">
		      <ul class="product-list small">
			    <c:forEach items="${rvList}" var="rvDTO">
			      <li>
			        <!-- 상품이 삭제된 경우 -->
			        <c:if test="${rvDTO.deleted == 1}">
			          <a href="#">
			            <span class="thumb">
			            <span class="soldout">판매중단</span>
			              <img src="${rvDTO.imageUrl}" alt=${rvDTO.productName}>
			            </span>
			            <strong class="txt-ti ellipsis">${rvDTO.productName}</strong>
			          </a>
			        </c:if>
			        <!-- 상품이 삭제되지 않은 경우 -->
			        <c:if test="${rvDTO.deleted != 1 }">
			          <a href="${contextPath}/product/detail.do?pid=${rvDTO.productId}&cid=${rvDTO.companyId}">
			            <span class="thumb">
			            <!-- 상품 수량이 0인 경우 -->
			            <c:if test="${rvDTO.productCount == 0}">
			              <span class="soldout">일시품절</span>
			            </c:if>
			            <img src="${rvDTO.imageUrl}" alt=${rvDTO.productName}>
			            </span>
			            <strong class="txt-ti ellipsis">${rvDTO.productName}</strong>
			          </a>
			        </c:if>
			        <span class="info">
			          <span class="txt-price">
			            <!-- 할인하는 경우 -->
			            <c:if test="${rvDTO.discountPrice != rvDTO.productPrice}">
			              <strong><em><fmt:formatNumber value="${rvDTO.discountPrice}"/></em>원</strong>
			              <del><fmt:formatNumber value="${rvDTO.productPrice}"/></del>        
			            </c:if>
			            <!-- 할인하지 않는 경우 -->
			            <c:if test="${rvDTO.discountPrice == rvDTO.productPrice}">
			              <strong><em><fmt:formatNumber value="${rvDTO.discountPrice}"/></em>원</strong>   
			            </c:if>
				      </span>
			        </span>   
			      </li>
			    </c:forEach>                           
		      </ul>
		    </c:if>
		    <!-- 최근 본 상품이 없다면 -->
		    <c:if test="${empty rvList}">
		   	  <div class="nodata">최근 본 목록이 없습니다.</div>
		    </c:if>
		  </section>
        
	  </div>
    </div>
    <!-- 정적 파일 footer include -->
  </div> --%>


</body>
</html>