<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, java.io.*"
    isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function() {
	$('button').click(function() {
		var value = $("input[type=raid][name=select]:checked").val();
	if(value){
		alert(value);
	}
	else{
		alert('아무것도 선택되지 않았습니다.');
	}
	})
});

</script>
<style>

#wrapper{
	width:1000px;
	margin: 200px auto;
}
section{
	float:left;
	text-align:center;
	border:1px solid #ccc;
	border-radius : 50px;
	margin-bottom:200px;
	height:650px;
	
	
}
table{
font-size:12px;
margin-left:auto; 
margin-right:auto;
width:350px;
height:200px;
}
#tbl1{
border: 1px solid #ccc;
}
.at1{
float:left;
width:400px;
height:400px;
margin:0px;
padding:15px;
margin-top:50px;
}
.at2{
float:right;
width:400px;
height:400px;
margin:0px;
padding:15px;
margin-top:50px;

}
#logo {

}
img{
dispaly:block;
margin:auto;
width:250px;
height:250px;
}
#info{
font-size:4px;
align:center;
}
#wide{
width:100%;

}
#center{
border:1px solid;
width:380px;
margin: auto;
}
#save{
float:left;
}
#left{
padding-left:30px;
}
#box{
border:1px solid #ccc;
	border-radius : 50px;
	height:150px;
	padding-top:50px;
	background-color:#98B4EA;
}
.dddd {
text-decoration: none;
color:white;
}
.dddd:hover {
text-decoration: none;
color:white;
}

</style>
<meta charset="UTF-8">
<title>로그인창</title>

	<c:choose>
	<c:when test="${result=='loginFailed' }">
	<script>
	window.onload=function(){
		alert("아이디나 비밀번호가 틀립니다. 다시로그인하세요!")
	}
	</script>
	</c:when>
	</c:choose>

</head>
<body>
<div id ="wrapper">
<section>
<div id="logo">
<a href="${contextPath}/main.do"><img src="${contextPath }/image/logo.png" alt="로고사진"></a>
<br><br>
<h2 align="center">회원가입</h2>
</div>

	
<article class="at1">
 <a class="dddd" href="${contextPath}/user/u_regadmin.do"><div id="box"><h1 align="center">개 인</h1></div></a>
		
</article>

<article class="at2">
    <a class="dddd" href="${contextPath}/seller/s_regadmin.do" ><div id="box"><h1 align="center">기 업</h1></div></a>
		
      </article>
</section>
</div>
</body>
</html>