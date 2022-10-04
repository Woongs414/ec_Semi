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
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
body {display: inline-block; }

.first {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	float: left;
	text-decoration: none;
	outline: none;
	
}
.ff {
list-style: none;
}
.second {
	display: inline-block;
	outline: none;
	margin: 30px 30px 30px 30px;
}

#menu01 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/menu_01.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
}

#menu01:hover {
	background-color: transparent;
	display: block;
	background-image: url( "${contextPath }/image/menu_001.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
	scale: 1.1;
}

#menu02 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/menu_02.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 130px;
	height: 36px;
}

#menu02:hover {
	background-color: transparent;
	display: block;
	background-image: url( "${contextPath }/image/menu_002.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 130px;
	height: 36px;
	scale: 1.1;
}

#menu03 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/menu_03.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
}

#menu03:hover {
	background-color: transparent;
	display: block;
	background-image: url( "${contextPath }/image/menu_003.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
	scale: 1.1;
}

#menu04 {
	background-color: transparent;
	background-image: url( "${contextPath }/image/menu_04.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
}

#menu04:hover {
	background-color: transparent;
	display: block;
	background-image: url( "${contextPath }/image/menu_004.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
	scale: 1.1;
}

#menu05 {
	background-color: transparent;
	position: absolute;
	top: 30px;
	right: 50px;
	background-image: url( "${contextPath }/image/menu_05.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
}

#menu05:hover {
	background-color: transparent;
	display: block;
	background-image: url( "${contextPath }/image/menu_005.png" );
	background-repeat: no-repeat;
	background-size: contain;
	width: 100px;
	height: 36px;
	scale: 1.1;
}
</style>
<title>Header</title>
</head>
<body>
<div class="first">
	    <a href="${contextPath }/main.do">
      <img src="${contextPath }/image/logo.png" alt="먹고보자 로고" style="width:100px;height:100px;">
      </a></div>
<!-- header 메뉴들 -->
    <div class="first">
    <ul class="ff">
    <li class="second">
    	<button type="button" id="menu01" style="border:none;"></button>
    </li>
     <li class="second">
    	<button type="button" id="menu02" style="border:none;"></button>
    </li>
     <li class="second">
    	<button type="button" id="menu03" style="border:none;"></button>
    </li>
     <li class="second">
    	<button type="button" id="menu04" style="border:none;"></button>
    </li>
  <li>
    	<button type="button" id="menu05" style="border:none;">
    	<c:choose>
      	<c:when test="${isLogOn == true && member !=null }">
      		<span>환영합니다 <br>${member.user_nick }님!</span>
        <a href="${contextPath }/user/logout.do" class="nav-link nav-hover">
        <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
          <!-- <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
          로그아웃 -->
        </a>
        </c:when>
       	<c:otherwise>
       	<a href="${contextPath}/user/loginForm.do " class="nav-link nav-hover">
       	
       		<!-- <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
          로그인 -->
          </a>
       	</c:otherwise>
       	</c:choose></button>
    </li>
  
    </ul>
    </div>
   
 
  
</body>
</html>