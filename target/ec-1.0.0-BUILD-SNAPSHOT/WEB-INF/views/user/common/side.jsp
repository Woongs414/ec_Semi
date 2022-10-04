<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="//code.jquery.com/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="css/side.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"><title>사이드 메뉴</title>
</head>
<body class="menu">
<!--사이드바 -->
<nav class="main-menu">
 <div>
    <a class="logo" href="http://startific.com">
    </a> 
  </div> 
<div class="settings"></div>
<ul>
  
<li>                                   
<a href="#">
<i class="fa fa-home fa-lg pl-30 "></i>
<span class="nav-text">Home</span>
</a>
</li>   
   
<li>                                 
<a href="http://startific.com">
<i class="fa fa-user fa-lg"></i>
<span class="nav-text">Login</span>
</a>
</li>   


<li class="darkerli">
<a href="http://startific.com">
<i class="fa fa-desktop fa-lg"></i>
<span class="nav-text">Technology</span>
</a>
</li>
  
<li class="darkerli">
<a href="http://startific.com">
<i class="fa fa-plane fa-lg"></i>
<span class="nav-text">Travel</span>
</a>
</li>
  
<li class="darkerli">
<a href="http://startific.com">
<i class="fa fa-shopping-cart"></i>
 <span class="nav-text">Shopping</span>
</a>
</li>
  
<li class="darkerli">
<a href="http://startific.com">
<i class="fa fa-microphone fa-lg"></i>
<span class="nav-text">Film & Music</span>
</a>
</li>

<li class="darkerli">
<a href="http://startific.com">
<i class="fa fa-flask fa-lg"></i>
<span class="nav-text">Web Tools</span>
</a>
</li>
  

</ul>
</nav>
  <!-- /사이드바 -->
</body>
</html>