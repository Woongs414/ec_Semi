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
	<c:choose>
	<c:when test="${result=='loginFailed' }">
	<script>
	window.onload=function(){
		alert("아이디나 비밀번호가 틀립니다. 다시로그인하세요!")
	}
	</script>
	</c:when>
	</c:choose>

<script>
function select_ck(f){
	if($("input[name='select']:checked").val()=='사용자'){
		alert('사용자로 로그인합니다.');
		
	}else if($("input[name='select']:chekced").val()=='판매자'){
		alert('판매자로 로그인합니다.');
		
	}else{
		alert('사용자와 판매자중 선택해주세요');
		
		}
}
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
	height:550px;
	
}
table{
font-size:12px;
margin-left:auto; 
margin-right:auto;
width:350px;
height:200px;
}
.at1{
float:left;
width:400px;
height:400px;
margin:0px;
padding:15px;
border-right: 2px solid #ccc;
height:300px;


}
.at2{
float:right;
width:400px;
height:400px;
margin:0px;
padding:15px;
border-left: 2px solid #ccc;
height:300px;

}

img{
display:block;
margin:auto;
width:200px;
height:200px;
}
#kakao{
display:block;
margin:auto;
width:50px;
height:30px;

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
/* 손가락 커서활성화 */
.searchPwd {
    cursor: pointer;
    font-size: 1em;
}

#signup1{
text-decoration:none;
color:black;
}

#signup2{
text-decoration:none;
color:black;
}
#find_id{
text-decoration:none;
color:black;
}
#find_pwd{
text-decoration:none;
color:black;
}
<!-- alert창 꾸미기 -->
swal({
    title: "참고",
    text: "World!",
    icon: "info" /*"info,success,warning,error" 중 택1 */
});


</style>

<meta charset="UTF-8">
<title>로그인창</title>


</head>
<body>

<div id ="wrapper">
<section>
<div id="logo">
<a href="${contextPath }/main.do"><img src="${contextPath }/image/logo.png" alt="로고사진"></a>
<hr>
</div>

<article class="at1">
<form method="post" action="${contextPath}/user/login.do" onsubmit = "return select_ck(this);">
 <h1 align="center">회원</h1>
		<table>
		<tr>
		<td align="left"><label><input type="radio" id="user" name="select"  value="사용자" />사용자</label></td>
		<td></td>
		<td align="right"><label><input type="radio" id="seller" name="select" value="판매자"/>판매자</label></td>
		</tr>
		
		<tr height="2">
		
		<td colspan="3"><input type="text" id="wide" name="user_id" size="20" placeholder="아이디"><br><br></td>
		</tr>      
        <tr height="2">
        <td colspan="3"> <input type="password" id="wide" name="user_pwd" size="20" placeholder="비밀번호"><br></td>
        </tr>
        
        <tr>
        <td align="left"><label><input type="checkbox" id="save">ID 저장<br><br></label></td>
        <td></td>
        
     
        <td><a href="https://kauth.kakao.com/oauth/authorize?client_id=9a4ded69fa035326c4f5e9e4ff45d735&redirect_uri=http://localhost:8080/ec/kakao&response_type=code"><img src="${contextPath }/image/kakao_login_small.png" id="kakao" alt="카카오로그인"></a></td>
      
       
        </tr>
    	
         <tr height="2">
        <td colspan="3"><input type="submit" id="wide" name="login" size="20"  value="로그인"><br><br><br></td>
        </tr>   
 		
            <tr>
          	<span class="searchPwd"> 
            <td align="left"><a href="${contextPath }/user/find_pwd.do" id=find_pwd>비밀번호찾기</a></td>
          </span>
            <td align="left" id="left"><a href="${contextPath }/user/find_id.do" id=find_id>아이디찾기</a></td>
          
            <td align="right"><a href="${contextPath}/user/memberForm_main.do" id="signup1">회원가입</a></td>
        
        	</tr>
      </table>
        </form>
      </article>
  
<article class="at2">
<form method="post" action="${contextPath}/nouser/login.do"> <!-- 비회원주문 jsp만들어야함 -->

    <h1 align="center">비회원</h1>
		<table>
		<tr>
		<td><br></td>
		<td></td>
		<td></td>
		</tr>
		
		<tr height="2">
		<td colspan="3"><input type="text" id="wide" name="book_num" size="20" placeholder="예약번호"><br><br></td>
		</tr>      
        <tr height="2">
        <td colspan="3"> <input type="password" id="wide" name="book_name" size="20" placeholder="예약자명"><br></td>
        </tr>
        

    
         <tr height="2">
         
        <td colspan="3"><br><input type="submit"  id="wide" name="orderselect" size="20" value="주문배송조회"><br><br><br></td>
        </tr>
        
        <tr>
        
        
        <tr>
        <td id="info"> 먹플리/볼플리 회원이 아니세요?</td>
        </tr>
        

            <tr>
            <td><br><a href="${contextPath}/user/memberForm_main.do" id="signup2">회원가입</a></td>
        	</tr>
      </table>
       </form>
      </article>
     
</section>
</div>

</body>
</html>