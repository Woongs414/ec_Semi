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
<html lang="ko">
    <head>
    <script>
   function pwd_search(f) {
    	
    	
    	if(f.user_id.value.length < 1) {
    	alert("아이디를 입력해주세요");
    	
    	}else if(f.user_name.value.length < 1){
    			alert("이름을 입력해주세요");
    			
    }else if(f.user_email.value.length < 1){
    			alert("이메일을 입력해주세요");
    			
    }else if(f.prove_ck.value.length < 1){
    			alert("인증번호를 입력해주세요");
    			
    }
    	else {
    	f.action="${contextPath}/user/find_pwd_Result.do"
    	f.submit();
    }
  
    }
    </script>
        <meta charset="UTF-8">                                                                       
        <title>아이디찾기</title>
        <link rel="stylesheet" href="${contextPath }/css/find_pwd.css">

    </head>
    <body>
    <form  method="post">
    	<div id="body-wrapper">
        <div id="top">
        <ul>
        <li><a href="${contextPath }/user/find_id.do">아이디 찾기</a></li>
        <li><a href="${contextPath }/user/find_pwd.do">비밀번호 찾기</a></li>
        </ul> 
        </div>
        
        <div class="inquiry">
        <div class="content_header">
        <h2>
        <img src="https://static.nid.naver.com/images/web/user/h_find_pw2.gif" width="70" height="22" alt="비밀번호 찾기">
        </h2>
        
        <p style="font-size:12px;">회원정보에 저장된 아이디, 성명, 이메일인증을 이용하여 비밀번호를 찾을 수 있습니다.
        <table style="margin:auto">
        <tr>
        <td>아이디 </td> 
        <td><input type="text" id="user_id" name="user_id"></td>
        </tr>
        <tr>
        <td>성명 </td> 
        <td><input type="text" id="user_name" name="user_name"></td>
        </tr>
        <tr>
        <td>본인확인 이메일</td>
        <td><input type="text" id="user_email" name="user_email" placeholder="abc@google.com"></td>
        </tr>
        <tr>
        <td>
        <td><input type="button" class="prove" value="인증번호 보내기">
        </tr>
        <tr>
        <td>인증번호 확인</td>
        <td><input type="text" id="prove_ck" name="prove_ck"></td>
        </tr>
        </table>
        </div>
        <div style="text-align:center" class="ok">
        <input type="button" id="ok2" name="ok" onclick="pwd_search(this.form)" value="확인">
        </div>
        
        
		</div>
           
           
   
	
     
   
	</div>
	</form>
    </body>
</html>