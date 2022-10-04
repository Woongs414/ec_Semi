<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
/* body {
	line-height: 20px;
	color: #8F8681;
	position: relative;
	font-family: "NotoSansKR", sans-serif, Malgungothic, "맑은고딕", Dotum, "돋움";
	font-weight: 200;
	font-size: 15px;
	line-height: 1.6;
	letter-spacing: -0.025em;
	word-break: keep-all;
	word-wrap: break-word;
	letter-spacing: 2px;
} */

#footer {
/* 	position: absolute;
	bottom: 0px; */
	width: 100%;
	min-height: 200px;
	background-color: #E1DCD9;

}

li {
list-style: none;
}

.last {
	display: inline-block;
	margin-bottom: 3px;
	text-align: center;
	align-self: center;
}

#space {
	margin-bottom: 1px;
	font-size: 12px;
	text-align: center;
}

a {
	color: #8F8681;
	text-decoration: none;
}

a:hover {
	color: #8F8681;
	text-decoration: none;
}
</style>
<title>푸터 부분</title>
</head>
<body>
	<div id="space">
		<ul>
			<li class="last"><a href="main.do"></a><img src="${contextPath }/image/logo_blue.png"
				width="55px" height="55px"></li>
			<li class="last"><a href="#" target="_blank"><img
					src="${contextPath }/image/menu_007.png" width="100px"
					height="40px" alt="고객센터"></a></li>
			<li class="last"><a href="#" target="_blank"><img
					src="${contextPath }/image/menu_008.png" width="100px"
					height="40px" alt="업체 소개"></a></li></ul>
	<div id="space">
	<ul>
	<li>대표이사 : 김희재, 조원경, 양성웅, 송민경 / 대전광역시 서구 둔산동<br> 
		 사업자등록번호 : 000-00-00000 / 통신판매업 신고 : 제 00-0000호 <a href="#">사업자 정보확인</a><br>
		 개인정보보호책임자 : 홍길동 / 소비자피해보상보험 SGI 서울보증 <a href="#">서비스 가입 사실 확인</a><br>
		 호스팅서비스 : 먹고보자<br>
		 COPYRIGHT © eatsee ALL RIGHTS RESERVED.</li>
		</ul>
	</div>

	<!-- 		<div class="container">
			<p class="text-white footercon">
			<img alt="로고" src="image/logo.png" width="100" height="100">
			먹고보자
			대표이사 : 김희재, 조원경, 양성웅, 송민경 / 대전광역시 서구 둔산동
			사업자등록번호 : 000-00-00000 / 통신판매업 신고 : 제 00-0000호 사업자 정보확인 
			개인정보보호책임자 : 홍길동 / 소비자피해보상보험 SGI 서울보증 서비스 가입 사실 확인 
			호스팅서비스:먹고보자
			COPYRIGHT © eatsee ALL RIGHTS RESERVED.
			</p>
		</div> -->

	<!-- Bootstrap core JS-->
	<!-- 	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
</div>
</body>
</html>