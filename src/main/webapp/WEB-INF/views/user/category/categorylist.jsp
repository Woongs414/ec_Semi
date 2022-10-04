<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
 <c:set var="contextPath" value="${pageContext.request.contextPath}" />
 <!-- Bootstrap CSS,js -->
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
 
 
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
 <link href="css/styles.css" rel="stylesheet" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>카테고리 상세</title>
<style>
body {
height: 100vh;

}


[_nghost-ewg-c62] .map_container[_ngcontent-ewg-c62] .sidebar[_ngcontent-ewg-c62] {
    position: relative;
    z-index: 210;
    box-sizing: border-box;
}

[_nghost-ewg-c33] {
    display: flex;
    flex-direction: column;
    width: 63px;
    height: 100vh;
    left:0px;
    background-color: #fff;
    border-right: 1px solid #CCCCCC;
    
    position:absolute;
    top: 0;
    z-index:1;
}

[_nghost-ewg-c33] .logo_box[_ngcontent-ewg-c33] {
    display: flex;
    flex: 0 0 auto;
    justify-content: center;
    align-items: center;
    height: 76px;
    border-bottom: 1px solid rgba(0,0,0,.15);
    box-sizing: border-box;
}

[_nghost-ewg-c33] .logo_box[_ngcontent-ewg-c33] .link_logo[_ngcontent-ewg-c33] {
    display: inline-block;
    vertical-align: top;
    padding: 10px;
    font-size: 1px;
    line-height: 1px;
}


[_nghost-ewg-c33] .scroll_area[_ngcontent-ewg-c33] {
    margin-bottom: auto;
}

perfect-scrollbar {
    display: block;
    height: 100%;
    max-height: 100%;
    max-width: 100%;
    overflow: hidden;
    position: relative;
    width: 100%;
}

perfect-scrollbar>.ps {
    display: block;
    height: 100%;
    max-height: 100%;
    max-width: 100%;
    position: static;
    width: 100%;
}

.ps {
    overflow: hidden!important;
    overflow-anchor: none;
    touch-action: auto;
}

[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] {
    width: 63px;
    padding:0;
}

li, ol, ul {
    list-style: none;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}



[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] .link_navbar.active[_ngcontent-ewg-c33] {
    color: #fff;
}

[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] .link_navbar[_ngcontent-ewg-c33] {
    display: block;
    position: relative;
    z-index: 10;
    padding: 13px 1px 11px 0;
    color: #333;
    text-align: center;
}

[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] .navbar_text[_ngcontent-ewg-c33] {
    display: block;
    color:black;
    min-height: 13px;
    margin-top: 3px;
    font-size: 12px;
    line-height: 15px;
    letter-spacing: -.44px;
}

[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] .link_navbar[_ngcontent-ewg-c33] {
    display: block;
    position: relative;
    z-index: 10;
    padding: 13px 1px 11px 0;
    color: #333;
    text-align: center;
}
[_nghost-ewg-c33] .list_navbar[_ngcontent-ewg-c33] .link_navbar.active[_ngcontent-ewg-c33] {
    color: #fff;
}

/* 검색 결과 */
#searchlist {
	margin-left:62px;
	padding-left : 10px;
	width: 330px;
	height: 100vh;
	background-color:white;
	border-left: 1px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	position:absolute;
	z-index: 1;
	top:0;
	overflow-x:hidden;
	overflow-y:auto; 

}



[_nghost-ewg-c74] {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 100;
    width: 340px;
    margin: auto;
    padding: 15px 25px;
}

[_nghost-ewg-c74] .search_wrap[_ngcontent-ewg-c74], .static[_nghost-ewg-c74] {
    position: relative;
}

[_nghost-ewg-c74] .search_box[_ngcontent-ewg-c74] {
    position: relative;
    z-index: 110;
    height: 42px;
    padding-left: 45px;
    border: 2px solid #19ce60;
    border-radius: 5px;
}

[_nghost-ewg-c74] .button_search[_ngcontent-ewg-c74] {
    overflow: hidden;
    display: inline-block;
    width: 25px;
    height: 24px;
    font-size: 0;
    color: transparent;
    vertical-align: top;
    background-position: 0 -112px;
    position: absolute;
    top: 9px;
    left: 15px;
}

[_nghost-ewg-c74] .button_clear[_ngcontent-ewg-c74]:after, [_nghost-ewg-c74] .button_clear[_ngcontent-ewg-c74]:hover:after, [_nghost-ewg-c74] .button_search[_ngcontent-ewg-c74] {
    background-image: url(https://ssl.pstatic.net/static/maps/v5/pc/20220531112111/search.png);
    background-size: 194px 190px;
}

[_nghost-ewg-c74] .input_box[_ngcontent-ewg-c74] {
    position: relative;
    z-index: 0;
    padding-right: 43px;
}
[_nghost-ewg-c74] .input_search[_ngcontent-ewg-c74] {
    position: relative;
    color: #000;
    font-weight: 700;
}

[_nghost-ewg-c74] .input_search[_ngcontent-ewg-c74], [_nghost-ewg-c74] .label_search[_ngcontent-ewg-c74] {
    display: block;
    width: 100%;
    font-size: 16px;
    height: 42px;
    letter-spacing: -.2px;
}

body.windows .base_map, body.windows .nm-tooltip, body.windows button, body.windows frequent-place-use-agreement-popup, body.windows input, body.windows label, body.windows layout, body.windows select, body.windows textarea {
    font-family: notosanskr,Malgun Gothic,맑은 고딕,Dotum,돋움,sans-serif;
}

[_nghost-ewg-c74] .button_clear[_ngcontent-ewg-c74] {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    z-index: 10;
    width: 43px;
    font-size: 1px;
    line-height: 1px;
    background: #fff;
    border-radius: 0 5px 5px 0;
}



/* 상세조회 시 배경 투명도 조절  */
.offcanvas-backdrop.show {
    opacity: 0;
}

/* 지도  */
.region{
	z-index: 1;
	position: absolute;
	top:20px;
	right: 0px;
}

</style>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05169d60664947410852341b56c43f34&libraries=services,clusterer,drawing"></script>
</head>
<body>
 <script src="js/myscript.js"></script>

<%
	String searchwordss = request.getParameter("search");
	if(searchwordss == null || searchwordss.equals("null")) {
		searchwordss = "";
	}
	System.out.println("search:::" + searchwordss);
	
	String searcharea = request.getParameter("area");
	if(searcharea == null || searcharea.equals("null")) {
		searcharea = "지역";
	}
	
	String searchkind = request.getParameter("null");
	if(searchkind == null || searchkind.equals("null")) {
		searchkind = "업종";
	}
	
%>
<navbar _ngcontent-ewg-c62 _nghost-ewg-c33>
	<h1 _ngcontent-ewg-c33 class="logo_box">
		<a _ngcontent-ewg-c33 href="http://www.naver.com" class="link_logo">
		<img alt="메인로고" src="image/mainlogo.png">
		</a>
	</h1>
	<perfect-scrollbar _ngcontent-ewg-c33 class="scroll_area">
		<div style="position: static;" class="ps">
			<div class="ps-content">
				<div _mgcpmtemt-ewg-c33 class="scroll_box">
					<ul _ngcontent-ewg-c33 class="list_navbar">
						<li _ngcontent-ewg-c33 class="item_navbar">
						<a _ngcontent-ewg-c33 href="#" class="link_navbar home active"> 
							<img alt="카테고리홈" src="image/category_home.png" width="20" height="20">
							<span _ngcontent-ewg-c33 class="navbar_text">카테고리홈</span>
						</a>
						</li>
						<li _ngcontent-ewg-c33 class="item_navbar">
						<a _ngcontent-ewg-c33 href="#" class="link_navbar home active"> 
							<img alt="회원가입" src="image/signup.png" width="20" height="20">
							<span _ngcontent-ewg-c33 class="navbar_text">회원가입</span>
						</a>
						</li>
						<li _ngcontent-ewg-c33 class="item_navbar">
						<a _ngcontent-ewg-c33 href="#" class="link_navbar home active">
							<img alt="로그인" src="image/category_login.png" width="20" height="20"> 
							<span _ngcontent-ewg-c33 class="navbar_text">로그인</span>
						</a>
						</li>
						<li _ngcontent-ewg-c33 class="item_navbar">
						<a _ngcontent-ewg-c33 href="#" class="link_navbar home active"> 
							<img alt="찜" src="image/category_wish.png" width="20" height="20"> 
							<span _ngcontent-ewg-c33 class="navbar_text">찜</span>
						</a>
						</li>
						<li _ngcontent-ewg-c33 class="item_navbar">
						<a _ngcontent-ewg-c33 href="#" class="link_navbar home active"> 
							<img alt="예약조회" src="image/reserve_check.png" width="20" height="20"> 
							<span _ngcontent-ewg-c33 class="navbar_text">예약조회</span>
						</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
 	 </perfect-scrollbar>
</navbar>


<section id="searchlist">
<form class="" action="${contextPath }/searchcategory.do" method="get" >
<!-- 필터 넣기 -->
 <div class="btn-group" style="margin-top:21px;">
  <%--<button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    <%=searcharea %>
  </button> --%>
  <select name="area" class="btn btn-primary dropdown-toggle" style="width:130px" onchange="setMap(this.value)">
  	<option class="dropdown-item" style="background-color: white;" hidden><%=searcharea %></option>
  	<option class="dropdown-item" style="background-color: white;" value="null">전체</option>
  	<option class="dropdown-item" style="background-color: white;"  value="서울특별시" <c:if test="${area eq '서울특별시'}">selected</c:if>>서울특별시</option>
  	<option class="dropdown-item" style="background-color: white;"  value="인천광역시" <c:if test="${area eq '인천광역시'}">selected</c:if>>인천광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="광주광역시" <c:if test="${area eq '광주광역시'}">selected</c:if>>광주광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="대구광역시" <c:if test="${area eq '대구광역시'}">selected</c:if>>대구광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="광주광역시" <c:if test="${area eq '광주광역시'}">selected</c:if>>광주광역시</option>
  	<option class="dropdown-item" style="background-color: white;"  value="울산광역시" <c:if test="${area eq '울산광역시'}">selected</c:if>>울산광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="대전광역시" <c:if test="${area eq '대전광역시'}">selected</c:if>>대전광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="부산광역시" <c:if test="${area eq '부산광역시'}">selected</c:if>>부산광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="세종특별자치시" <c:if test="${area eq '세종특별자치시'}">selected</c:if>>세종특별자치시</option>
  	<option class="dropdown-item" style="background-color: white;" value="경기도" <c:if test="${area eq '경기도'}">selected</c:if>>경기도</option>
  	<option class="dropdown-item" style="background-color: white;" value="강원도" <c:if test="${area eq '강원도'}">selected</c:if>>강원도</option>
  	<option class="dropdown-item" style="background-color: white;" value="충청남도" <c:if test="${area eq '충청남도'}">selected</c:if>>충청남도</option>
  	<option class="dropdown-item" style="background-color: white;" value="충청북도" <c:if test="${area eq '충청북도'}">selected</c:if>>충청북도</option>
  	<option class="dropdown-item" style="background-color: white;" value="경상북도" <c:if test="${area eq '경상북도'}">selected</c:if>>경상북도</option>
  	<option class="dropdown-item" style="background-color: white;" value="경상남도" <c:if test="${area eq '경상남도'}">selected</c:if>>경상남도</option>
  	<option class="dropdown-item" style="background-color: white;" value="전라북도" <c:if test="${area eq '전라북도'}">selected</c:if>>전라북도</option>
  	<option class="dropdown-item" style="background-color: white;" value="전라남도" <c:if test="${area eq '전라남도'}">selected</c:if>>전라남도</option>
  	<option class="dropdown-item" style="background-color: white;" value="제주도" <c:if test="${area eq '제주도'}">selected</c:if>>제주도</option>
  </select>
  </div>
  <div class="btn-group" style="margin-top:21px;">
   <select name="kind" class="btn btn-primary dropdown-toggle" style="width:130px; margin-left: 10px;">
  	<option class="dropdown-item" style="background-color: white;" hidden><%=searchkind %></option>
  	<option class="dropdown-item" style="background-color: white;" value="null" <c:if test="${area eq '전체'}">selected</c:if>>전체</option>
  	<option class="dropdown-item" style="background-color: white;" value="서울특별시" <c:if test="${area eq '서울특별시'}">selected</c:if>>서울특별시</option>
  	<option class="dropdown-item" style="background-color: white;" value="부산광역시" <c:if test="${area eq '부산광역시'}">selected</c:if>>부산광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="대구광역시" <c:if test="${area eq '대구광역시'}">selected</c:if>>대구광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="인천광역시" <c:if test="${area eq '인천광역시'}">selected</c:if>>인천광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="광주광역시" <c:if test="${area eq '광주광역시'}">selected</c:if>>광주광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="대전광역시" <c:if test="${area eq '대전광역시'}">selected</c:if>>대전광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="울산광역시" <c:if test="${area eq '울산광역시'}">selected</c:if>>울산광역시</option>
  	<option class="dropdown-item" style="background-color: white;" value="세종특별자치시" <c:if test="${area eq '세종특별자치시'}">selected</c:if>>세종특별자치시</option>
  </select>

</div>
<!--검색창  -->
	<div class="d-flex">
      <input class="form-control me-2" type="search" placeholder="키워드, 지역 등을 입력" aria-label="Search" style="margin-top:21px;" name="search" value="<%= searchwordss %>">
      <button class="btn" type="submit" style="margin-top:10px;margin-right: 10px; padding: 0px; font-size:25px;">🔍</button>
    </div>
    </form>
    
<hr style="margin-right: 10px;">
    
<!--검색 결과 리스트 -->
<c:choose>
		<c:when test="${empty StoreList }">
			<b><span style="font-size:9pt;">검색 결과가 없습니다.</span></b>
		</c:when>
		<c:when test="${!empty StoreList }">
			<c:forEach var="store" items="${StoreList }" varStatus="storeNum">
			<a href="${contextPath }/storeInfo.do?seller_id=${store.seller_id}">
					<div class="card" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" style="margin-top:10px;">
	 					<img src="https://ldb-phinf.pstatic.net/20220919_260/16635542007495NypM_JPEG/KakaoTalk_20220919_112238901.jpg" class="card-img-top" alt="..." width="286" height="180" style="object-fit:contain;">
	  				<div class="card-body">
	   				 <p class="card-text">
	    				<h1>${store.seller_name }</h1>
	    				${store.seller_addr }
	    				가게소개
	    			</p>
	  				</div>
  				</div>
  			</a>
  			</c:forEach>
		</c:when>
	</c:choose>
<div>

</div>

 </section>





</body>
</html>