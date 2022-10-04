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
    <style>
#container2{
	height:1400px;
	width:100%;
	
}
</style>
        <meta charset="UTF-8">                                                                       
        <title>개인정보 수정</title>
        <link rel="stylesheet" href="${contextPath }/css/memberForm_udetail.css">
        
    </head>
    <body>
   
    <div id="container2">
        <!-- header -->
        <div id="header2">
            <a href="${contextPath }/main.do"><img src="${contextPath }/image/logo.png" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">
	
            <!-- content-->
            <div id="content2">
            
              <form action="${contextPath}/user/addMember.do" method="post">

                <!-- ID -->
                <div>
              
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="user_id" class="int" maxlength="20" value="only read" readonly>
                       
                 	</span>
                    <span class="error_next_box"></span>
                </div>
                <!-- Nickname -->
                   <div>
              
                    <h3 class="join_title">
                        <label for="nick">닉네임</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="nick" name="user_nick" class="int" maxlength="20">
                       
                 	</span>
                    <span class="error_next_box"></span>
                </div>
                
                
                

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" name="user_pwd" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="${contextPath }/image/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" name="pwd_ck" class="int" maxlength="20">
                        <img src="${contextPath }/image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="user_name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" name="birth_yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" name ="birth_mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" name="birth_dd"  class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" name="gender" class="sel">
                            <option value="A">성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" name="user_email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="mobile">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="tel" class="int" maxlength="16" placeholder="하이폰(-)제외 번호만입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

	
                <!-- JOIN BTN-->
                <div class="btn_area">
                    <input type="submit" id="btnJoin" value="수정하기" />
                    <input type="reset" value="다시하기" />
                </div>
		
                
				</form>
            </div> 
            <!-- content-->
	
        </div> 
        <!-- wrapper -->
    <script src="${contextPath }/js/memberForm_udetail.js"></script>
	</div>
	
    </body>
</html>