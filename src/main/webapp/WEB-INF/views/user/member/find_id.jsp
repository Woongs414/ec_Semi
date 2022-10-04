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
    function id_search(f) {
    	
    	
    	if(f.user_name.value.length < 1) {
    	alert("이름을 입력해주세요");
    	
    	}else if(f.tel.value.length!=11){
    			alert("핸드폰 번호를 정확하게 입력해주세요");
    			
    } else {
    	f.action="${contextPath}/user/find_id_Result.do"
    	f.submit();
    }
  
    }
    </script>
        <meta charset="UTF-8">                                                                       
        <title>아이디찾기</title>
        <link rel="stylesheet" href="${contextPath }/css/find_id.css">

    </head>
    <body>
    	<form  method="post">
    	<div id="body-wrapper">
        <div id="top">
        <ul>
        <li><a href="${contextPath }/user/find_id.do">아이디 찾기</a></li>
        <li><a href="${contextPath }/user/find_pwd.do" >비밀번호 찾기</a></li>
        </ul> 
        </div>
        
        <div class="inquiry">
        <div class="content_header">
        <h2>
        <img src="https://static.nid.naver.com/images/web/user/h_find_id2.gif" width="70" height="22" alt="아이디 찾기">
        </h2>
        
        <p style="font-size:12px;">회원정보에 저장된 성명과 휴대전화번호를 이용하여 아이디를 찾을 수 있습니다.
        <table style="margin:auto">
        <tr>
        <td>성명 </td> 
        <td><input type="text" id="user_name" name="user_name"></td>
        </tr>
        <tr>
        <td>전화번호 </td> 
        <td><input type="text" id="tel" name="tel" placeholder="하이폰(-)제외 번호만입력"></td>
        </tr>
        </table>
        </div>
        <div style="text-align:center" class="ok">
        <input type="button" id="ok1" name="ok" onclick="id_search(this.form)" value="확인">
        </div>
        
        
		</div>

	</div>
	</form>
    </body>
</html>