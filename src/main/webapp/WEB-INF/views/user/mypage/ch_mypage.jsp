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

<style>
body {display: inline-block; color: #32435F; margin-left: }
ul {list-style: none;}
a{
color: #32435F;
text-decoration: none;
}
.third {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	float: left;
	text-decoration: none;
	outline: none;
	border: 1px solid #E1DCD9;
}
.second {
	display: inline-block;
	outline: none;
	margin: 10px;
}
#na {
float: right;
margin-right: 10px;
margin-bottom: 20px;
}
#my01 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m01.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
	border: 1px solid #fff;
}

#my01:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m001.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
	
}

#my02 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m02.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
	border: 1px solid black;
}

#my02:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m002.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;

}

#my03 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m03.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my03:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m003.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my04 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m04.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my04:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m004.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my05 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m05.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my05:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m005.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}
#my06 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m06.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}

#my06:hover {
	background-color: transparent;
	background-image: url( "${contextPath }/image/icon_m006.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 70px;
	height: 36px;
}
</style>
<body>

<div id="na">
		<strong>${member.user_name}님</strong>오늘도 즐거운 하루 되세요
	</div>
	
<div class="third">
		<ul>
			<li class="second"><a href="${contextPath }/board/myplist.do"><span
					id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my01" style="border: none;" alt="먹플리, 볼플리"></button></a></li>
			
			<li class="second"><a href="${contextPath }/mypage/uReview.do"><span
					id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my02" style="border: none;" alt="내가 쓴 리뷰"></button></a></li>

			<li class="second"><a href="${contextPath }/mypage/uBook.do"><strong><span
						id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my03" style="border: none;" alt="예약조회"></button></a></li>

			<li class="second"><a href="${contextPath }/mypage/uLike.do"><strong><span
						id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my04" style="border: none;" alt="찜 목록"></button></a></li>

			<li class="second"><a href="${contextPath }/mypage/uAsk.do"><strong><span
						id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my05" style="border: none;" alt="1:1 문의"></button></a></li>

			<li class="second"><a href="${contextPath }/mypage/uEatnsee.do"><strong><span
						id="upointCurAmt">${totalWishCount}<strong>개</span></strong>
					<button type="button" id="my06" style="border: none;" alt="내 정보"></button></a></li>
		</ul>
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