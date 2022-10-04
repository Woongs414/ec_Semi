<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지 | Eat & See </title>
<link href="${contextPath}/css/common/common.min.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/common/css-library.min.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/common/member.min.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/mypage.min.css" rel="stylesheet" type="text/css">
</head>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
function colorChange() {
	var color = ["#FC5C7D", "#6A82FB", "#38EF7D", "#FFFBD5", "#B20A2C", "#CACS531"];
	
	var num = Math.floor(Math.random() * color.length);
	var bodyTag = document.getElementById("colorCont");
	bodyTag.style.backgroundColor = color[num];
}

let click = document.querySelector(".click");

click.addEventListener("click", function() {
	
})
</script>
<style>
.soldout {
	position: absolute;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: #101010;
    font-size: 20px;
    font-weight: 600;
    background-color: rgba(255, 255, 255, .8);
    z-index: 2;
}
</style>
<body id="colorCont">

	
  <div id="wrap" class="mypage mypage main">
  <!-- header include -->
	<%-- <%@ include file="/navbar.jsp"%> --%>
    <div id="contents">
	  <div class="innercon">
	  <!-- 정적 파일 sidebar include -->
	  <%-- <%@ include file="/pages/mypage/sidebar.jsp" %> --%>	
		<section class="conarea">
		  <!-- 사용자 관련 정보 상단 표시  -->
		  <section class="mystate-section">
		    <div class="myinfo">
		      <div class="memclass normal"> 
		        <div class="cont">
			      <strong class="name">${member.user_name}님</strong>                   
		          <ul>
	           	    <li><a href="#" style="color: gray;">오늘도 즐거운 하루 되세요</a></li>
	              </ul>
		        </div>
		      </div>
		    </div>
		    <div class="point">
		      <ul>          
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/plist.png" width=35px height=35px alt="eat&see"><span id="upointCurAmt">${totalWishCount}</span>개</span></strong> 내가 쓴 먹플리, 볼플리
		            </div>
		          </a>
		        </li> 
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/review.png" onclick="fn_reviw" width=35px height=35px alt="eat&see"><span id="upointCurAmt">${totalWishCount}</span>개</span></strong> 내가 쓴 리뷰
		            </div>
		          </a>
		        </li>  
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/list_full.png" width=35px height=35px alt="eat&see"><span id="upointCurAmt">${totalWishCount}</span>개</span></strong> 찜 목록
		            </div>
		          </a>
		        </li>  
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/reserve.png" width=35px height=35px alt="eat&see"><span id="upointCurAmt">${totalWishCount}</span>개</span></strong> 예약조회
		            </div>
		          </a>
		        </li> 
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/one.png" width=35px height=35px alt="eat&see"><span id="upointCurAmt">${totalWishCount}</span>개</span></strong> 1:1 문의
		            </div>
		          </a>
		        </li>         
		        <li>
		          <a href="#">
		            <div class="inner">
		              <strong><img src="${contextPath}/image/my_story.png" width=35px height=35px alt="eat&see"></span></strong> 내 정보
		            </div>
		          </a>
		        </li> 
		      </ul>
		    </div>
		  </section>
<button onClick="colorChange()">색상변경</button>
<!-- 보여지는 게시판 부분 -->
<div onclick="mypageview('/mypage.do')">


		  
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