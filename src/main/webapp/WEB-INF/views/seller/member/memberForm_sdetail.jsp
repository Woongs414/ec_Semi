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
	height:1650px;
	width:100%;
	
}
/*파일첨부 숨기기 */
#chooseFile { 
    visibility: hidden;
}
/*밑줄긋기*/
.fileInput {
    display: flex;
    align-items: center;
    border-bottom: solid 2px black;
    height: 30px;
    margin-bottom:20px;
}

/* 손가락 커서활성화 */
label {
    cursor: pointer;
    font-size: 1em;
}
}
#fileName {
    margin-left: 5px;
}
#bir_wrap {
    display: table;
    width: 100%;
}

#bir_yy {
    display: table-cell;
    width: 150px;
    
}

#bir_mm {
    display: table-cell;
    width: 150px;
    vertical-align: middle;
}

#bir_dd {
    display: table-cell;
    width: 150px;
}

#bir_mm, #bir_dd {
    padding-left: 10px;
}
</style>
        <meta charset="UTF-8">                                                                       
        <title>기업 회원가입</title>
        <link rel="stylesheet" href="${contextPath }/css/memberForm_sdetail.css">
        
    </head>
    <body>
   <form method="get" action="${contextPath}/seller/login.do" enctype="multipart/form-data">
    <div id="container2">
        <!-- header -->
        <div id="header2">
            <a href="${contextPath }/main.do" title="메인화면으로 돌아가기"><img src="${contextPath }/image/logo.png" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content2">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                       
                 	</span>
                    <span class="error_next_box"></span>
                </div>
                
                

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="${contextPath }/image/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="${contextPath }/image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
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
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
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
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>
                
			 <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="mobile">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="하이폰(-)제외 번호만입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <!-- BESINESS REGISTER NUMBER -->
          		  <div>
                    <h3 class="join_title"><label for="bizregNum">사업자 등록번호<span class="essential">(필수)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="bizreg" class="int" maxlength="20" placeholder="하이폰(-)제외 번호만입력">
                    </span>
                    <span class="error_next_box">사업자 등록번호를 다시 확인해주세요.</span>         
   				 <div class="button">
       			 <label for="chooseFile">
           			<br> 👉 파일첨부 👈
        		</label>
        		
        		<!-- 파일첨부 -->
    			</div>
    			<input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
				<div class="fileContainer">
                <div class="fileInput">
                    <p>FILE NAME: &nbsp; </p>
                    <p id="fileName"></p>
                </div>
                </div> 
				 </div>
                
				 <!-- 키워드(업종) -->
                <div>
                    <h3 class="join_title"><label for="local">위치 및 업종</label></h3>

                    <div id="keyword_wrap">
                        <!-- keyword 지역 -->
                        <div id="key_local">
                            <span class="box">
                                <select id="local" class="sel">
                                	<option>위치</option>
                                	  <option value="01">서울특별시</option>
                                    <option value="02">인천광역시</option>
                                    <option value="03">광주광역시</option>
                                    <option value="04">대구광역시</option>
                                    <option value="05">광주광역시</option>
                                    <option value="06">울산광역시</option>
                                    <option value="07">대전광역시</option>
                                    <option value="08">부산광역시</option>
                                    <option value="09">세종특별자치시</option>                                    
                                    <option value="10">경기도</option>
                                    <option value="11">강원도</option>
                                    <option value="12">충청남도</option>
                                    <option value="13">충청북도</option>
                                    <option value="14">경상북도</option>
                                    <option value="15">경상남도</option>                                    
                                    <option value="16">전라북도</option>
                                    <option value="17">전라남도</option>
                                    <option value="18">제주도</option>
                                </select>
                            </span>
                        </div>

                        <!-- keyword_업종 -->
                        <div id="key_business">
                            <span class="box">
                                <select id="business" class="sel">
                                    <option>업종</option>
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
                    <span class="error_next_box"></span>    
                </div>
                 </div>
                
                 <!-- 3가지입력 -->
                <div>
                    <h3 class="join_title"><label for="key1">키워드 입력</label></h3>
					
                    <div id="bir_wrap">
                        <!-- 키워드1 -->
                        <div id="keybox1">
                            <span class="box">
                                <input type="text" id="key1" class="int" placeholder="삼겹살">
                            </span>
                        </div>

                        <!-- 키워드2 -->
                        <div id="keyword2">
                            <span class="box">
                            <input type = "text" id="key2" class="int" placeholder="라면">
                            </span>
                        </div>

                        <!-- 키워드3 -->
                        <div id="keyword3">
                            <span class="box">
                                <input type="text" id="key3" class="int" placeholder="아구찜">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>
                
				
               
				
                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>

                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="${contextPath }/js/memberForm_sdetail.js"></script>
    
    <script>    function loadFile(input) {
        var file = input.files[0];

        var name = document.getElementById('fileName');
        name.textContent = file.name;

        var newImage = document.createElement("img");
        newImage.setAttribute("class", 'img');

        newImage.src = URL.createObjectURL(file);   

        newImage.style.width = "70%";
        newImage.style.height = "70%";
        newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지 숨기기
        newImage.style.objectFit = "contain";

        var container = document.getElementById('image-show');
        container.appendChild(newImage);
    };
  /*   var submit = document.getElementById('submitButton');
    submit.onclick = showImage;     //Submit 버튼 클릭시 이미지 보여주기

    function showImage() {
        var newImage = document.getElementById('image-show').lastElementChild;
        newImage.style.visibility = "visible";
        
        document.getElementById('image-upload').style.visibility = 'hidden';

        document.getElementById('fileName').textContent = null;     //기존 파일 이름 지우기
    } */



    </script>
	</div>
	</form>
    </body>
</html>