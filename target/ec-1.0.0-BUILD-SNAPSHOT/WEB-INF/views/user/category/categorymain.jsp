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
<script src="http://code.jquery.com/jquery-latest.js"></script>

 <!--autosize js  -->
 <script src="${contextPath }/js/autosize.min.js"></script>
 <script src="${contextPath }/js/autosize.js"></script>
 
 <!--ajax -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
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
html {
    font-size: 10px;
    -webkit-font-smoothing: antialiased;
    line-height: 10px;
}
body {
    background-color: #e9ecef;
    /* background-color: rgba(var(--place-color-bg1), 1); */
    color: #000;
    /* color: rgba(var(--place-color-text1), 1); */
    word-break: break-all;
    word-wrap: break-word;
    -webkit-text-size-adjust: none;
    height: 100vh;
}

body, input, textarea, select, table, button, code {
    font-family: -apple-system,BlinkMacSystemFont,helvetica,"Apple SD Gothic Neo",sans-serif;
    font-size: 1.6rem;
    letter-spacing: -0.3px;
    line-height: 2rem;
}

a:hover {
color:black;
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

/* 상세페이지 */
.CB8aP {
    position: relative;
}

.uDR4i {
    display: flex;
    position: relative;
    height: 187px;
    background: #fff;
    /* background: rgba(var(--place-color-photogrid-bg), 1); */
}

.uDR4i::before {
    top: 0;
}

.uDR4i::before, .uDR4i::after {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    z-index: 10;
    height: 1px;
    background: rgba(0,0,0,.08);
    content: "";
}

.uDR4i::after {
    bottom: 0;
}

.uDR4i::before, .uDR4i::after {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    z-index: 10;
    height: 1px;
    background: rgba(0,0,0,.08);
    content: "";
}

.uDR4i .CEX4u {
    overflow: hidden;
    flex: 1;
    align-items: center;
}

.fNygA {
    height: 100%;
}

.fNygA .place_thumb {
    height: 100%;
}

button, [role=button] {
    cursor: pointer;
}

.place_thumb {
    display: block;
    position: relative;
    width: 100%;
}

a {
    color: inherit;
    text-decoration: none;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}

.fNygA .place_thumb::before {
    content: none;
}

.place_thumb::before {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 10;
    border: 1px solid rgba(0,0,0,.04);
    content: "";
}

.fNygA .place_thumb.QX0J7::after {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    height: 93px;
    background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0));
    content: "";
}

.K0PDV {
    background-repeat: no-repeat;
    background-position: 50% 50%;
    background-size: cover;
}

.place_blind {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    margin: -1px;
    padding: 0;
    border: 0;
    clip: rect(0, 0, 0, 0);
}

.fNygA .place_thumb.QX0J7::after {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    height: 93px;
    background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0));
    content: "";
}

.uDR4i .CEX4u+.CEX4u {
    margin-left: 1px;
}

.uDR4i>.CEX4u:nth-of-type(2) {
    flex-direction: column;
}

.uDR4i .CEX4u {
    overflow: hidden;
    flex: 1;
    align-items: center;
}

.uDR4i .hEm4D {
    display: flex;
    overflow: hidden;
    align-items: center;
    height: 93px;
}

.uDR4i .hEm4D .CEX4u {
    height: 100%;
}

.uDR4i .CEX4u {
    overflow: hidden;
    flex: 1;
    align-items: center;
}

.fNygA {
    height: 100%;
}

.fNygA .place_thumb {
    height: 100%;
}

.uDR4i .hEm4D+.hEm4D {
    margin-top: 1px;
}

.uDR4i .hEm4D {
    display: flex;
    overflow: hidden;
    align-items: center;
    height: 93px;
}

.uDR4i .CEX4u {
    overflow: hidden;
    flex: 1;
    align-items: center;
}

.fNygA .place_thumb .xez5V {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0,0,0,.3);
    font-size: 1.3rem;
    color: #fff;
    line-height: 1.8rem;
}

.fNygA .place_thumb .xez5V .rReOU {
    fill: #fff;
    width: 19px;
    height: 15px;
    margin: 2px auto 5px;
}

.fNygA .place_thumb .xez5V {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0,0,0,.3);
    font-size: 1.3rem;
    color: #fff;
    line-height: 1.8rem;
}

svg:not(:root) {
    overflow: hidden;
}

.place_section.OP4V8 {
    margin-top: 0;
    margin-bottom: 7px;
    border-top: 0;
}

.place_section {
    /* border-bottom: 1px solid; */
    border-color: #e2e5e8;
    /* border-color: rgba(var(--place-color-border1), 1); */
    background-color: #fff;
    /* background-color: rgba(var(--place-color-bg2), 1); */
}

.zD5Nm {
    padding: 16px 18px 14px;
    text-align: center;
}

.zD5Nm .YouOG {
    line-height: 2.5rem;
}

.zD5Nm.f7aZ0 .YouOG .Fc1rA {
    font-weight: 700;
    letter-spacing: -1px;
}

.zD5Nm .YouOG .Fc1rA {
    margin-right: 6px;
    font-size: 2.1rem;
    font-weight: 500;
    color: #000;
    /* color: rgba(var(--place-color-text1), 1); */
    vertical-align: top;
}

.zD5Nm.f7aZ0 .YouOG .DJJvD {
    font-size: 1.4rem;
}

.zD5Nm .YouOG .DJJvD {
    display: inline-block;
    vertical-align: top;
    font-size: 1.5rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
}

.zD5Nm .dAsGb:not(:empty) {
    margin-top: 3px;
}

.zD5Nm.f7aZ0 .dAsGb .PXMot {
    font-size: 1.5rem;
}

.zD5Nm .dAsGb .PXMot {
    display: inline-block;
    vertical-align: top;
    position: relative;
    line-height: 2.1rem;
    white-space: nowrap;
}

.place_bluelink {
    color: #0068c3;
    /* color: rgba(var(--place-color-link), 1); */
}

.zD5Nm.f7aZ0 .dAsGb .PXMot {
    font-size: 1.5rem;
}


.zD5Nm .dAsGb .PXMot {
    display: inline-block;
    vertical-align: top;
    position: relative;
    line-height: 2.1rem;
    white-space: nowrap;
}

.zD5Nm .HyFB6 .CRjGs::before, .zD5Nm .P8uHj .ESXsu em::after, .zD5Nm .P8uHj .QpPVO .PXMot::after, .zD5Nm .iozGz .oZBTx .PXMot+.PXMot::before, .zD5Nm .pzITx .zIB_M+.zIB_M::before, .zD5Nm .mfvx2 .yZ9V9::before, .zD5Nm .dAsGb .PXMot+.PXMot::before {
    display: inline-block;
    vertical-align: top;
    width: 3px;
    height: 3px;
    margin: 8px 6px 0;
    border-radius: 50%;
    background: #e1e1e1;
    /* background: rgba(var(--place-color-border12), 1); */
    content: "";
}


.zD5Nm .XtBbS {
    display: block;
    margin-top: 6px;
    font-size: 1.5rem;
    color: #666;
   /*  color: rgba(var(--place-color-text4), 1); */
}

.zD5Nm {
    padding: 16px 18px 14px;
    text-align: center;
}

.sVyWx {
    padding: 0 18px;
}

.sVyWx .gR5KI {
    display: flex;
    height: 68px;
    border-top: 1px solid;
    border-color: #ecf0f2;
   /*  border-color: rgba(var(--place-color-border2), 1); */
}

.sVyWx .yxkiA:first-child {
    margin-left: -8px;
}

.sVyWx .yxkiA {
    flex: 1;
    position: relative;
}

.sVyWx .D_Xqt {
    display: flex;
    flex: 1;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: relative;
    height: 100%;
    font-size: 1.4rem;
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
    text-align: center;
}

.sVyWx .yxkiA+.yxkiA::before {
    display: block;
    position: absolute;
    top: 15px;
    bottom: 15px;
    left: 0;
    width: 1px;
    background: #f2f4f6;
    /* background: rgba(var(--place-color-border4), 1); */
    content: "";
}

.UoIF_ {
    padding: 0 18px;
}
.UoIF_ .gR5KI:last-child {
    padding-bottom: 16px;
}

.UoIF_ .gR5KI {
    display: flex;
    padding-bottom: 10px;
}

.UoIF_ .yxkiA {
    flex: 1;
    position: relative;
}

.UoIF_ .D_Xqt {
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    padding: 9px 10px 9px 9px;
    border: 1px solid rgba(3,199,90,.6);
    border-radius: 4px;
    background: #fff;
   /*  background: rgba(var(--place-color-bg2), 1); */
    font-size: 1.5rem;
    color: #0abe16;
    /* color: rgba(var(--place-color-text9), 1); */
    text-align: center;
    white-space: nowrap;
}

.c1m0f {
    height: 1px;
    background: #e2e5e8;
    /* background: rgba(var(--place-color-border1), 1); */
}

.place_fixed_maintab {
    position: relative;
    top: 0;
    right: 0;
    left: 0;
    z-index: 5000;
}
.Jxtsc {
    background: #fff;
    /* background: rgba(var(--place-color-bg2), 1); */
}
.ngGKH {
    position: relative;
    white-space: nowrap;
}

.ngGKH .flicking-viewport {
    overflow: hidden;
    position: static;
    z-index: 20;
}

.Jxtsc .flicking-viewport::after {
    display: block;
    height: 1px;
    background: #e2e5e8;
    /* background: rgba(var(--place-color-border7), 1); */
    content: "";
}

.ngGKH .flicking-camera {
    will-change: transform;
}

.Jxtsc .flicking-camera {
    position: relative;
    z-index: 10;
}

.ngGKH .flicking-camera {
    will-change: transform;
}

.Jxtsc .tpj9w:first-child {
    padding: 0 12px 0 20px;
}

.Jxtsc .tpj9w {
    display: table-cell;
    padding: 0 12px;
    text-align: center;
}

.Jxtsc .tpj9w:last-child {
    padding: 0 35px 0 12px;
}

.Jxtsc .veBoZ {
    display: inline-block;
    vertical-align: top;
    position: relative;
    padding: 13px 3px;
    font-size: 1.7rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
}

/* .Jxtsc .tpj9w[aria-selected=true] .veBoZ {
    font-weight: bold;
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
}

.Jxtsc .tpj9w[aria-selected=true] .veBoZ::after {
    position: absolute;
    right: 0;
    bottom: -1px;
    left: 0;
    z-index: 20;
    height: 2px;
    border-radius: 2px;
    background: #242424;
    /* background: rgba(var(--place-color-text2), 1); */
    content: "";
} */








.Jxtsc.MpTT1 .veBoZ {
    font-size: 1.5rem;
}

.hcZFX.ZCqf_, .hcZFX.PznE8 {
    visibility: hidden;
    z-index: -10;
}

.PznE8 {
    left: 0;
}

.ZCqf_, .PznE8 {
    opacity: 0;
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 100;
    transition: opacity .2s;
}

.ZCqf_ {
    right: 0;
}

.place_section.l__qc {
    background: #f4f7f8;
    /* background: rgba(var(--place-color-bg4), 1); */
}

.place_section.no_margin {
    margin-top: 0;
}

.HTEpJ:last-child {
    padding-bottom: 18px;
}

.HTEpJ {
    position: relative;
    padding: 18px 96px 12px 18px;
    font-size: 1.5rem;
    line-height: 1.9rem;
}

.HTEpJ .Z0tWJ {
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
}


.HTEpJ .OUh7P {
    position: absolute;
    top: 18px;
    right: 8px;
    padding: 2px 10px;
    font-size: 1.4rem;
    font-weight: 800;
    color: #00cf5b;
    /* color: rgba(var(--place-color-text8), 1); */
    line-height: 1.6rem;
}

.HTEpJ .OUh7P .eGL_1 {
    fill: #00cf5b;
    /* fill: rgba(var(--place-color-text8), 1); */
    width: 7px;
    height: 7px;
    margin: 4px 1px 0 0;
}

.HTEpJ .OUh7P .trYQH {
    fill: #00cf5b;
    /* fill: rgba(var(--place-color-text8), 1); */
    width: 13px;
    height: 14px;
    margin: 1px 2px 0 0;
}

.place_section+.place_section.no_margin {
    margin-top: 0;
    border-top: 0;
}

img, svg {
    display: inline-block;
    vertical-align: top;
}
svg {
    width:20px;
    height:20px;
}

.y4sYp {
    padding: 4px 18px;
}

.SF_Mq {
    position: relative;
    padding: 10px 0;
}

.RmIE4 {
    float: left;
    margin-right: 10px;
}

strong {
    font-weight: bold;
}

.RmIE4>.nHf7b {
    display: inline-block;
    vertical-align: top;
    fill: #9e9e9e;
    width: 16px;
    height: 18px;
    margin-top: 2px;
}

.x8JmK {
    overflow: hidden;
    font-size: 1.5rem;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
    line-height: 2.2rem;
}

.pAe5G {
    display: inline-block;
    vertical-align: top;
    color: inherit;
}

.UGQE_ {
    display: block;
    color: inherit;
}

.pAe5G .KP_NF, .UGQE_ .KP_NF {
    display: inline-block;
    vertical-align: top;
    margin-right: 8px;
}

.pAe5G .IH7VW {
    margin-right: 6px;
}

.pAe5G .KP_NF .nHf7b, .UGQE_ .KP_NF .nHf7b {
    fill: #424242;
    /* fill: rgba(var(--place-color-text3), 1); */
    width: 12px;
    height: 7px;
    margin-top: 8px;
}

.SF_Mq.GFtzE .jyfLw {
    margin-top: 2px;
    color: #666;
    /* color: rgba(var(--place-color-text4), 1); */
}

.SF_Mq.GFtzE .fv9Gn {
    color: #242424;
   /*  color: rgba(var(--place-color-text2), 1); */
}

.SF_Mq.GFtzE .fv9Gn .nHf7b {
    display: inline-block;
    vertical-align: top;
    min-width: 15px;
    height: 15px;
    margin: 3px 4px 0 0;
    padding: 0 4px;
    border-radius: 8px;
    box-sizing: border-box;
    font-size: 1.2rem;
    color: #fff;
    line-height: 1.5rem;
    text-align: center;
}

.SF_Mq.GFtzE .jyfLw strong {
    font-weight: 400;
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
}

.SF_Mq.GFtzE .jyfLw em {
    margin-left: 4px;
    color: #ff5757;
    /* color: rgba(var(--place-color-text10), 1); */
    font-style: normal;
}

.y4sYp>li+li {
    border-top: 1px solid;
    border-color: #ecf0f2;
    /* border-color: rgba(var(--place-color-border2), 1); */
}

.SF_Mq {
    position: relative;
    padding: 10px 0;
}

.RmIE4 {
    float: left;
    margin-right: 10px;
}

.RmIE4>.nHf7b {
    display: inline-block;
    vertical-align: top;
    fill: #9e9e9e;
    width: 16px;
    height: 18px;
    margin-top: 2px;
}
.xHaT3 {
    color: inherit;
}

.SF_Mq.SjF5j .zkI3M {
    display: inline-block;
    vertical-align: top;
    margin-right: 6px;
}

.SF_Mq.SjF5j .mnnPt {
    display: inline-block;
    vertical-align: top;
}

._vIMk {
    display: inline-block;
    vertical-align: top;
    position: relative;
    margin-right: 7px;
    font-size: 1.5rem;
    color: #0abe16;
    /* color: rgba(var(--place-color-text9), 1); */
    line-height: 2.2rem;
}

._vIMk .pHtH_ {
    fill: #06c755;
    /* fill: rgba(var(--place-color-bg7), 1); */
    width: 12px;
    height: 13px;
    margin: 5px 3px 0 0;
}

.place_section~.place_section {
    margin-top: 9px;
    /* border-top: 1px solid; */
    border-color: #e2e5e8;
    /* border-color: rgba(var(--place-color-border1), 1); */
}
h2.place_section_header {
    padding: 17px 18px 15px;
    border-bottom: 1px solid;
    border-color: #ecf0f2;
    /* border-color: rgba(var(--place-color-border2), 1); */
}
h3.place_section_header, h2.place_section_header {
    position: relative;
    font-size: 1.7rem;
    line-height: 2.2rem;
    color: #000;
    /* color: rgba(var(--place-color-text1), 1); */
}
.place_section_count {
    margin-left: 6px;
    color: #0abe16;
    /* color: rgba(var(--place-color-text9), 1); */
}
h3.place_section_header, h2.place_section_header {
    position: relative;
    font-size: 1.7rem;
    line-height: 2.2rem;
    color: #000;
    /* color: rgba(var(--place-color-text1), 1); */
}
.place_section_header .rNxBQ {
    position: absolute;
    top: 17px;
    right: 18px;
}

.place_section_header .rNxBQ {
    position: absolute;
    top: 17px;
    right: 18px;
}

.place_section_header .rNxBQ .EMAxw {
    font-size: 1.5rem;
    font-weight: 400;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
    line-height: 2rem;
}

.mpoxR {
    padding: 10px 12px 14px;
}
.mpoxR::after {
    display: block;
    clear: both;
    content: "";
}

.yhGu6:nth-child(odd) {
    clear: both;
}

.yhGu6 {
    float: left;
    width: 50%;
}

.Ozh8q {
    display: block;
    margin: 8px 6px;
}

.MN48z {
    padding: 9px 11px;
    border-width: 0 1px 1px;
    border-style: solid;
    border-color: #e3e6e8;
    /* border-color: rgba(var(--place-color-border10), 1); */
}

.erVoL {
    font-weight: 600;
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
    line-height: 2.2rem;
}

.erVoL .MENyI {
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.Yrsei {
    font-size: 1.4rem;
    font-weight: 600;
    color: #ff5757;
    /* color: rgba(var(--place-color-text10), 1); */
}

.Yrsei .gl2cc {
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.Qh_eq {
    margin-top: 1px;
    font-size: 1.3rem;
    line-height: 1.8rem;
}

h2.place_section_header.no_line {
    border-bottom: 0;
}

.ocro7 {
    position: absolute;
    top: 16px;
    right: 18px;
    font-size: 1.5rem;
    font-weight: normal;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
    letter-spacing: -0.4px;
}

.ocro7 .pNrS3 {
    fill: #00cf5b;
    /* fill: rgba(var(--place-color-text8), 1); */
    width: 13px;
    height: 12px;
    margin: 6px 4px 0 0;
}

.tgypd {
    padding: 0 18px 20px;
}

.Uu48q {
    margin: -1px 0 0 -1px;
}

.Uu48q::after {
    display: block;
    clear: both;
    content: "";
}

.Uu48q .lKqtu {
    float: left;
    width: 33.33%;
    padding-top: 1px;
    padding-left: 1px;
    box-sizing: border-box;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.Uu48q .lKqtu .place_thumb {
    overflow: hidden;
    padding-top: 100%;
}

.lfH3O .fvwqf {
    display: block;
    border-top: 1px solid;
    line-height: 4.8rem;
    text-align: center;
    border-color: #eaeef2;
    /* border-color: rgba(var(--place-color-border25), 1); */
    background: #f4f7f8;
    /* background: rgba(var(--place-color-bg4), 1); */
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
}

.TraH1 {
    padding: 0 0 3px;
}

.Uf1BQ .qrzj_ {
    padding: 18px 24px;
    border-top: 1px solid;
    border-color: #ecf0f2;
    /* border-color: rgba(var(--place-color-border2), 1); */
}

.Uf1BQ .IEbo1 {
    display: flex;
}

.Uf1BQ .GP2eR {
    overflow: hidden;
    flex: 1;
}

.Uf1BQ .RGkHL {
    font-size: 1.5rem;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
    line-height: 2.2rem;
}

.Uf1BQ .ozEbl {
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.Uf1BQ .ozEbl .iz4rh {
    margin-left: 1px;
}

.Uf1BQ .ozEbl .iz4rh {
    flex: none;
    position: relative;
    margin-right: 8px;
}

.Uf1BQ .ozEbl .iz4rh .place_thumb {
    width: 32px;
    height: 32px;
}

.Uf1BQ .ozEbl .iz4rh .place_thumb {
    border-radius: 50%;
}

.Uf1BQ .ozEbl .iz4rh .place_thumb::before {
    box-shadow: 0 1px 2px 0 rgb(0 0 0 / 8%);
}

.Uf1BQ .ozEbl .iz4rh .place_thumb::before {
    overflow: hidden;
    border: 2px solid;
    border-color: #fff;
    /* border-color: rgba(var(--place-color-bg18), 1); */
    box-shadow: 0 3px 10px 0 rgb(0 0 0 / 8%);
}

.Uf1BQ .ozEbl .iz4rh .place_thumb::before, .Uf1BQ .ozEbl .iz4rh .place_thumb::after {
    border-radius: 50%;
}

.Uf1BQ .ozEbl .iz4rh .place_thumb::before, .Uf1BQ .ozEbl .iz4rh .place_thumb::after {
    border-radius: 50%;
}

.Uf1BQ .ozEbl .iz4rh .YMYlP {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 20;
    border-radius: 50%;
}

.Uf1BQ .ozEbl .iKqnp {
    display: flex;
    overflow: hidden;
    flex: 1;
    flex-direction: column;
}
.Uf1BQ .ozEbl .rg88i {
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 1.4rem;
    font-weight: 500;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
}

.Uf1BQ .ozEbl .FrWK3 {
    margin-top: 1px;
    line-height: 1.5rem;
}


.Uf1BQ .ozEbl .FrWK3 .ExHfk {
    font-size: 1.3rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
    letter-spacing: -0.2px;
}

.lfH3O .fvwqf {
    display: block;
    border-top: 1px solid;
    line-height: 4.8rem;
    text-align: center;
    border-color: #eaeef2;
    /* border-color: rgba(var(--place-color-border25), 1); */
    background: #f4f7f8;
    /* background: rgba(var(--place-color-bg4), 1); */
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
}

.i81eZ .cvLXA {
    display: flex;
    padding: 18px;
}

.i81eZ .Zwdge {
    overflow: hidden;
    flex: 1 1 auto;
}

.i81eZ .F7xaA .y5Vxu {
    display: block;
    display: -webkit-box;
    overflow: hidden;
    max-height: 4.6rem;
    line-height: 2.3rem;
    text-overflow: ellipsis;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    white-space: normal;
}

.i81eZ .F7xaA .wpUMQ {
    margin-right: 6px;
    font-size: 1.8rem;
    font-weight: 500;
    letter-spacing: -0.5px;
}

.i81eZ .aEtnX {
    margin-top: 3px;
    font-size: 1.5rem;
    color: #666;
    /* color: rgba(var(--place-color-text4), 1); */
    letter-spacing: -0.1px;
}

.i81eZ .aEtnX .fdBhP {
    display: block;
    display: -webkit-box;
    overflow: hidden;
    max-height: 4rem;
    line-height: 2rem;
    text-overflow: ellipsis;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    white-space: normal;
}

.i81eZ .Q8Tuk {
    margin-top: 6px;
    font-size: 1.5rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
    line-height: 1.8rem;
}
.i81eZ .Q8Tuk .b0JYf {
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.i81eZ .doC0y {
    margin-top: 11px;
}

.i81eZ .doC0y .K9FI6 {
    display: inline-block;
    vertical-align: top;
    padding: 7px 14px 5px;
    border: 1px solid;
    border-color: #e3e6e8;
    /* border-color: rgba(var(--place-color-border10), 1); */
    border-radius: 3px;
    font-size: 1.4rem;
    color: #000;
    /* color: rgba(var(--place-color-text1), 1); */
}

.i81eZ .F21yP {
    flex: 0 0 auto;
    margin-left: 15px;
}


/* footer */
.wzfnR {
    padding: 25px 18px 38px;
}

.TRQjy {
    text-align: center;
}

.TRQjy .X9K3K {
    font-size: 1.4rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
}

.TRQjy .X9K3K {
    font-size: 1.4rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
}

.TRQjy .X9K3K+.X9K3K::before {
    display: inline-block;
    vertical-align: top;
    width: 1px;
    height: 12px;
    margin: 5px 10px 0;
    background: #e1e1e1;
    /* background: rgba(var(--place-color-border12), 1); */
    content: "";
}

.zIIzj {
    margin-top: 10px;
    text-align: center;
}

.lfH3O .fvwqf .W0cVZ {
    width: 15px;
    height: 13px;
    margin: 18px 0 0 5px;
    fill: #424242;
   /*  fill: rgba(var(--place-color-text3), 1); */
}

/* 링크공유 */
.pop-layer .pop-container {
  padding: 20px 25px;
}

.pop-layer p.ctxt {
  color: #666;
  line-height: 25px;
}

.pop-layer .btn-r {
  width: 100%;
  margin: 10px 0 20px;
  padding-top: 10px;
  border-top: 1px solid #DDD;
  text-align: right;
}

.pop-layer {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 410px;
  height: auto;
  background-color: #fff;
  border: 5px solid #3571B5;
  z-index: 10;
}

.dim-layer {
  display: none;
  position: fixed;
  _position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100;
}

.dim-layer .dimBg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: .5;
  filter: alpha(opacity=50);
}

.dim-layer .pop-layer {
  display: block;
}

a.btn-layerClose {
  display: inline-block;
  height: 25px;
  padding: 0 14px 0;
  border: 1px solid #304a8a;
  background-color: #3f5a9d;
  font-size: 13px;
  color: #fff;
  line-height: 25px;
}

a.btn-layerClose:hover {
  border: 1px solid #091940;
  background-color: #1f326a;
  color: #fff;
}

.ZUYk_ .qpNnn {
    display: flex;
    align-items: center;
    position: relative;
    padding: 22px 18px;
}

.ZUYk_ .r8zp9 {
    margin-right: 15px;
}

.ZUYk_ .place_thumb {
    border-radius: 3px;
    overflow: hidden;
}

.ZUYk_ .place_thumb::before {
    display: none;
}

.ZUYk_ .place_thumb::before, .ZUYk_ .place_thumb::after {
    border-radius: 3px;
}

.ZUYk_ .place_thumb::before, .ZUYk_ .place_thumb::after {
    border-radius: 3px;
}

.ZUYk_ .LZ3Zm {
    flex: 1;
}

.ZUYk_ .pr1Qk .MR0bc {
    display: block;
    display: -webkit-box;
    overflow: hidden;
    max-height: 4.2rem;
    line-height: 2.1rem;
    text-overflow: ellipsis;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    white-space: normal;
}

.ZUYk_ .pr1Qk .Sqg65 {
    margin-right: 7px;
    font-size: 1.7rem;
    font-weight: 700;
    color: #333;
    /* color: rgba(var(--place-color-text6), 1); */
}

.ZUYk_ .pr1Qk .GPETv {
    display: inline-block;
    vertical-align: top;
}

.ZUYk_ .pr1Qk .GPETv .Udax8 {
    width: 29px;
    height: 16px;
    margin-top: 1px;
}

path[Attributes Style] {
    fill: rgb(255, 175, 59);
    d: path("M 8 0 h 13 c 4.4 0 8 3.6 8 8 s -3.6 8 -8 8 H 8 c -4.4 0 -8 -3.6 -8 -8 s 3.6 -8 8 -8 Z");
}

path[Attributes Style] {
    fill: rgb(255, 255, 255);
    d: path("M 13.7 12.9 h -1.2 V 8 h -0.9 v 4.5 h -1.2 V 3.2 h 1.2 v 3.7 h 0.9 V 3.1 h 1.2 v 9.8 Z M 6.9 9.5 c 1 0 2.2 -0.1 2.8 -0.2 l 0.1 1 c -0.7 0.2 -2.2 0.3 -3.3 0.3 h -0.9 V 4.2 h 3.7 v 1 H 6.9 v 4.3 Z m 16.5 2.1 h -8.9 v -1 h 2.2 V 8.7 H 18 v 1.9 h 1.9 V 8.7 h 1.3 v 1.9 h 2.2 v 1 Z m -0.9 -3.3 h -7.2 v -1 h 1.4 l -0.2 -1.8 l 1.3 -0.1 l 0.1 2 H 20 l 0.3 -2 l 1.2 0.2 l -0.3 1.8 h 1.3 v 0.9 Z m 0.1 -3.5 h -7.2 v -1 h 7.2 v 1 Z");
}

.ZUYk_ .TvLl7 {
    margin-top: 5px;
    font-size: 1.4rem;
    color: #666;
    /* color: rgba(var(--place-color-text4), 1); */
    letter-spacing: -0.4px;
}

.ZUYk_ .SSaNE {
    margin-top: 5px;
    font-size: 1.5rem;
    font-weight: 700;
    color: #ff5757;
    /* color: rgba(var(--place-color-text10), 1); */
    line-height: 1.7rem;
}

.KPQDP {
    padding: 14px 18px;
    border-top: 1px solid;
    font-size: 1.4rem;
    border-color: #ecf0f2;
    /* border-color: rgba(var(--place-color-border2), 1); */
    color: #242424;
    /* color: rgba(var(--place-color-text2), 1); */
}

.Xj_yJ {
    position: relative;
   /*  margin-top: 9px; */
}

.Xj_yJ .m7jAR.ohonc {
    font-size: 1.8rem;
    letter-spacing: -0.4px;
    color: #b8b8b8;
    float:right;
    /* color: rgba(var(--place-color-text16), 1); */
}

.Xj_yJ .m7jAR {
    display: inline-block;
    vertical-align: top;
    font-size: 1.5rem;
    color: #9a9a9a;
    /* color: rgba(var(--place-color-text12), 1); */
    line-height: 2.4rem;
}

.Xj_yJ .m7jAR.ohonc .SuAGt {
    fill: #fc4c4e;
    width: 18px;
    height: 18px;
    margin: 1px 4px 0 0;
}

path[Attributes Style] {
    d: path("M 8.26 4.68 h 4.26 a 0.48 0.48 0 0 1 0.28 0.87 L 9.35 8.02 l 1.33 4.01 a 0.48 0.48 0 0 1 -0.18 0.54 a 0.48 0.48 0 0 1 -0.56 0 l -3.44 -2.5 l -3.44 2.5 a 0.48 0.48 0 0 1 -0.74 -0.54 l 1.33 -4 L 0.2 5.54 a 0.48 0.48 0 0 1 0.28 -0.87 h 4.26 l 1.3 -4 a 0.48 0.48 0 0 1 0.92 0 l 1.3 4 Z");
}

.Xj_yJ .m7jAR.ohonc em {
    font-weight: bold;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
    
}

.Xj_yJ .m7jAR {
    display: inline-block;
    vertical-align: top;
    font-size: 1.5rem;
    color: #9a9a9a;
    /* color: rgba(var(--place-color-text12), 1); */
    line-height: 2.4rem;
}

.Xj_yJ .Qo7sP {
    position: absolute;
    top: 42px;
    right:1px;
    /* left: 0; */
    padding: 8px 12px;
    border-radius: 4px;
    background-image: linear-gradient(to left, #17d2ba, #1ed675);
    box-shadow: 1px 4px 7px 0 rgb(0 0 0 / 13%);
    font-size: 1.4rem;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.5px;
    line-height: 2rem;
    white-space: nowrap;
}

.Xj_yJ .Qo7sP::after {
    width: 0;
    height: 0;
    border-width: 4px 3.5px 0;
    border-style: solid;
    border-color: #1bd491rgba(0,0,0,0)rgba(0,0,0,0);
    position: absolute;
    top: -4px;
    left: 15px;
    transform: rotate(180deg);
    content: "";
}

.Xj_yJ .Qo7sP em {
    font-weight: 800;
    color: #fff361;
}

.S9Zlh {
    display: flex;
    align-items: center;
    position: relative;
    padding: 15px 18px;
    border-bottom: 1px solid;
    border-color: #ecf0f2;
    /* border-color: rgba(var(--place-color-border2), 1); */
}

.S9Zlh .QrYQs {
    flex: 1;
}

.S9Zlh .egjMQ {
    flex: none;
    height: 15px;
}

.S9Zlh .egjMQ .kdZUu {
    fill: #242424;
    /* fill: rgba(var(--place-color-text2), 1); */
    width: 15px;
    height: 15px;
}

.eCPGL .YeINN {
    padding: 30px 18px 26px;
}

.eCPGL .Lia3P {
    display: flex;
    align-items: center;
}

.eCPGL .Lia3P .DqSJm {
    flex: none;
    position: relative;
    margin-right: 8px;
}

.eCPGL .Lia3P .DqSJm .place_thumb {
    width: 42px;
    height: 42px;
}

.eCPGL .Lia3P .DqSJm .place_thumb {
    border-radius: 50%;
}

.eCPGL .Lia3P .DqSJm .place_thumb::before {
    overflow: hidden;
    border: 2px solid;
    border-color: #fff;
    /* border-color: rgba(var(--place-color-bg18), 1); */
    box-shadow: 0 3px 10px 0 rgb(0 0 0 / 8%);
}

.eCPGL .Lia3P .DqSJm .place_thumb::before, .eCPGL .Lia3P .DqSJm .place_thumb::after {
    border-radius: 50%;
}

.eCPGL .Lia3P .DqSJm .sKXBJ {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 20;
    border-radius: 50%;
}

.eCPGL .Lia3P .Hazns {
    display: flex;
    overflow: hidden;
    flex: 1;
    flex-direction: column;
}

.eCPGL .Mmpzx {
    margin: 12px -18px 0;
}

.hcZFX.ZCqf_, .hcZFX.PznE8 {
    visibility: hidden;
    z-index: -10;
}

.PznE8 {
    left: 0;
}

.ZCqf_, .PznE8 {
    opacity: 0;
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 100;
    transition: opacity .2s;
}

.PznE8 .nK_aH {
    left: 15px;
}

.ZCqf_ .nK_aH, .PznE8 .nK_aH {
    position: absolute;
    top: 50%;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    background: #fff;
    box-shadow: 0 2px 4px 0 rgb(0 0 0 / 7%), 0 0 2px 0 rgb(0 0 0 / 8%);
    transform: translateY(-50%);
}

.hcZFX.ZCqf_, .hcZFX.PznE8 {
    visibility: hidden;
    z-index: -10;
}

.PznE8 .nK_aH .Vg1dR {
    transform: translate(-50%, -50%) rotate(180deg);
}

.ZCqf_ .nK_aH .Vg1dR, .PznE8 .nK_aH .Vg1dR {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    fill: #424242;
    /* fill: rgba(var(--place-color-text3), 1); */
    width: 10px;
    height: 12px;
}

path[Attributes Style] {
    d: path("M 3.1 12.2 L 2 11.1 l 4.2 -4.2 L 2 2.6 l 1.1 -1.1 l 5.4 5.4 l -5.4 5.3 Z");
}

.ZCqf_ {
    right: 0;
}

.ZCqf_, .PznE8 {
    opacity: 0;
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 100;
    transition: opacity .2s;
}

.xHaT3 {
    color: inherit;
}

.eCPGL .ZZ4OK {
    margin-top: 15px;
    font-size: 1.5rem;
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
    line-height: 2.4rem;
}

.eCPGL .ZZ4OK+.gyAGI {
    margin-top: 9px;
}

.eCPGL .gyAGI .P1zUJ {
    display: inline-block;
    vertical-align: top;
    margin: 0 4px 7px 0;
    padding: 5px 9px 5px 7px;
    border-radius: 4px;
    background: #f5f7f8;
    /* background: rgba(var(--place-color-bg11), 1); */
    box-sizing: border-box;
    font-size: 1.4rem;
    color: #666;
    /* color: rgba(var(--place-color-text4), 1); */
    line-height: 1.8rem;
}

.eCPGL .gyAGI .P1zUJ .PtIou {
    margin-right: 5px;
}

.eCPGL .gyAGI .ZGKcF {
    position: relative;
    min-width: 28px;
    height: 28px;
    padding: 5px 7px 5px 6px;
}

.eCPGL .gyAGI+.sb8UA {
    margin-top: 5px;
}

.eCPGL .sb8UA {
    margin-top: 12px;
    font-size: 1.3rem;
    color: #8f8f8f;
    /* color: rgba(var(--place-color-text5), 1); */
    letter-spacing: -0.2px;
    line-height: 1.7rem;
}

.lfH3O .fvwqf {
    display: block;
    border-top: 1px solid;
    line-height: 4.8rem;
    text-align: center;
    border-color: #eaeef2;
    /* border-color: rgba(var(--place-color-border25), 1); */
    background: #f4f7f8;
    /* background: rgba(var(--place-color-bg4), 1); */
    color: #424242;
    /* color: rgba(var(--place-color-text3), 1); */
}

.lfH3O .fvwqf .E4qxG {
    width: 15px;
    height: 8px;
    margin: 20px 0 0 8px;
    fill: #424242;
    /* fill: rgba(var(--place-color-text3), 1); */
}



/* 링크공유 */
/*popup*/
.popup_layer {position:fixed;top:0;left:0;z-index: 10000; width: 100%; height: 100%;  }
/*팝업 박스*/
.popup_box{position: relative;top:440px;left:450px; overflow: hidden; height: 205px; width:270px;transform:translate(-50%, -50%);z-index:1002;box-sizing:border-box;background:#fff;box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-webkit-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-moz-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);}
/*컨텐츠 영역*/
.popup_box .popup_cont {padding:15px;line-height:1.4rem;font-size:14px; }
.popup_box .popup_cont h2 {padding:15px 0;color:#333;margin:0;}
.popup_box .popup_cont p{ border-top: 1px solid #666;padding-top: 30px;}
/*버튼영역*/
.popup_box .popup_btn {display:table;table-layout: fixed;width:100%;height:70px;background:#ECECEC;word-break: break-word;}
.popup_box .popup_btn a {position: relative; display: table-cell; height:70px;  font-size:17px;text-align:center;vertical-align:middle;text-decoration:none; background:#ECECEC;}
.popup_box .popup_btn a:before{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(-45deg); -webkit-transform: rotate(-45deg); -ms-transform: rotate(-45deg); -o-transform: rotate(-45deg); transform: rotate(-45deg);}
.popup_box .popup_btn a:after{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(45deg); -webkit-transform: rotate(45deg); -ms-transform: rotate(45deg); -o-transform: rotate(45deg); transform: rotate(45deg);}
.popup_box .popup_btn a.close_day {background:#5d5d5d;}
.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after{display:none;}
/*오버레이 뒷배경*/
.popup_overlay{position:fixed;top:0px;right:0;left:0;bottom:0;z-index:1001;;background:rgba(0,0,0,0.5);}
/*popup*/


.tab_cont div.on {
  display: block;
}


/* 말줄임 코드  */
.ZZ4OK .zPfVt {
  display: inline-block;
  overflow: hidden;
  text-overflow: ellipsis;
  width:326px;

  white-space :nowrap;
  vertical-align: top;
}


/* .more 클래스 코드 */
.ZZ4OK .zPfVt.more {
  display: inline;
  white-space: normal;
}

em {
	font-style:normal;
	font-weight: bold;
}

/*리뷰 별점  */



</style>

<script>
function shareSns(sns){
    var snsTitle = '';
    var snsItems = new Array();
    var winOpt = new Array();
    var snsUrl = location.href;

    snsItems['facebook'] = "http://www.facebook.com/share.php?t="+encodeURIComponent(snsTitle) + "&u=" + encodeURIComponent(snsUrl);
    snsItems['blog'] = "http://blog.naver.com/openapi/share?url=" + encodeURIComponent(snsUrl) + "&title=" + encodeURIComponent(snsTitle);
    snsItems['band'] = "https://auth.band.us/login_page?display=popup&next_url=" + encodeURIComponent(snsUrl) + "&title=" + encodeURIComponent(snsTitle);
    
	winOpt['facebook'] = "";
    winOpt['blog'] = "width=500, height=500, resizable=yes";
    winOpt['band'] = "width=500, height=500, resizable=yes";

	
    
    
    var win = window.open(snsItems[sns], sns, winOpt[sns]);
    if (win) {
        win.focus();
    }
}

/* 전화번호 복사 */
function copyToClipBoard(){
    var content = document.getElementById('tel').innerHTML;

    navigator.clipboard.writeText(content)
        .then(() => {
        alert('번호가 복사 되었습니다 :)');
    })
        .catch(err => {
        alert('에러가 발생하였습니다. :(');
        console.log('Something went wrong', err);
    })
    }
    
    
/* 공유 클릭 팝업  */
function clip(){
    var content = window.location.href;

    navigator.clipboard.writeText(content)
        .then(() => {
        alert('주소가 복사 되었습니다 :)');
    })
        .catch(err => {
        alert('에러가 발생하였습니다. :(');
        console.log('Something went wrong', err);
    })
    }


//팝업 띄우기
function openPop() {
    document.getElementById("popup_layer").style.display = "block";

}

 //팝업 닫기
 function closePop() {
     document.getElementById("popup_layer").style.display = "none";
 }
 
 
 
 /* 탭메뉴 */
$(document).ready(function() {
  $(function(){
	  $('.tab_cont > div').hide();
	  $('.tab_title a').click(function () {
	    $('.tab_cont > div').hide().filter(this.hash).fadeIn();
	    $('.tab_title a').removeClass('on');
	    $(this).addClass('on');
	    return false;
	  }).filter(':eq(0)').click();

  });

}); 


/* 더보기  */
function btnmore(moreOpenid,reviewconid){
	var moreOpen = moreOpenid;
	/* var feedMore = document.getElementById(reviewconid); */
	var status = reviewconid.classList.toggle("more");
	
	if (status == true) {
		$(moreOpen).html('닫기');
	} else {
		$(moreOpen).html('더보기');
	}

}

/* 리뷰 좋아요 up */
function likeValidation(review_num,likenumid){
	var review_num = review_num;
	var likenumid = likenumid;
	like(review_num,likenumid);
}

function like(review_num,likenumid) {
	var likenumid = likenumid;
	$.ajax({
		url:"${contextPath}/reviewlike.do?review_num=" + review_num,
		type : 'POST',
		dataType:"text",
		data : {
			review_num : review_num
			
		},
	    success: function (data) {
	    	console.log("성공");
	    	$(likenumid).html(data);
        },
        error: function(request, status, error, data) {
        	console.log("error: " + error);
        	console.log("message: " + request.responseText);
        	console.log("Data::::: " + data);
        	
        }
	});
}



/*리뷰 별점 표시  */


  
  /* 	var $tablink = $(".tab_title span").click(function() {
	var home = $("#home").index(this);
	var idx = $tablink.index(this);
  $(".tab_title a").removeClass("on");
  $(".tab_title a").eq(idx).addClass("on");
  
  $(".tab_cont > div").hide();
  $(".tab_cont > div").eq(idx).show();
	
}) */
/*     $(".tab_title a").click(function() {
var idx = $(this).index();

$(".tab_title a").removeClass("on");
$(".tab_title a").eq(idx).addClass("on");

$(".tab_cont > div").hide();
$(".tab_cont > div").eq(idx).show();
})   */

</script>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05169d60664947410852341b56c43f34&libraries=services,clusterer,drawing"></script>
</head>
<body>
<!--지도  -->
<div id="map" style="width:100%;height:970px;"></div>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5666805, 126.9784147), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };

//지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);
var geocoder = new kakao.maps.services.Geocoder(); 
var list =[];

<c:forEach items="${StoreList}" var="item">
list.push({addr:'${item.seller_addr}', name:'${item.seller_name}'});
</c:forEach>
list.forEach(function(sell, index){
	geocoder.addressSearch(sell.addr,function(result, status){
		if (status === daum.maps.services.Status.OK) {
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		 var marker = new kakao.maps.Marker({
			 map:map,
			 position: coords,
			 title: sell.name
		}); 
		};
	});
	});
//서울로 화면 이동
function setMap(value) {            
    // 이동할 위도 경도 위치를 생성합니다 
    if (value==="서울특별시"){
    	map.setCenter(new kakao.maps.LatLng(37.5666805, 126.9784147));
    } else if (value==="인천광역시"){
    	map.setCenter(new kakao.maps.LatLng(37.469221, 126.573234));
    } else if (value==="광주광역시"){
    	map.setCenter(new kakao.maps.LatLng(35.126033, 126.831302));
    } else if (value==="대구광역시"){
    	map.setCenter(new kakao.maps.LatLng(35.798838, 128.583052));
    } else if (value==="울산광역시"){
    	map.setCenter(new kakao.maps.LatLng(35.519301, 129.239078));
    } else if (value==="대전광역시"){
    	map.setCenter(new kakao.maps.LatLng(36.321655, 127.378953));
    } else if (value==="부산광역시"){
    	map.setCenter(new kakao.maps.LatLng(35.198362, 129.053922));
    } else if (value==="세종특별자치시"){
    	map.setCenter(new kakao.maps.LatLng(36.5040736, 127.2494855));
    } else if (value==="경기도"){
    	map.setCenter(new kakao.maps.LatLng(37.567167, 127.190292));
    } else if (value==="강원도"){
    	map.setCenter(new kakao.maps.LatLng(37.555837, 128.209315));
    } else if (value==="충청남도"){
    	map.setCenter(new kakao.maps.LatLng(36.557229, 126.779757));
    } else if (value==="충청북도"){
    	map.setCenter(new kakao.maps.LatLng(36.628503, 127.929344));
    } else if (value==="경상북도"){
    	map.setCenter(new kakao.maps.LatLng(36.248647, 128.664734));
    } else if (value==="경상남도"){
    	map.setCenter(new kakao.maps.LatLng(35.259787, 128.664734));
    } else if (value==="전라북도"){
    	map.setCenter(new kakao.maps.LatLng(35.716705, 127.144185));
    } else if (value==="전라남도"){
    	map.setCenter(new kakao.maps.LatLng(34.819400, 126.893113));
    } else if (value==="제주도"){
    	map.setCenter(new kakao.maps.LatLng(33.364805, 126.542671));
    }
    
}

// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다


</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05169d60664947410852341b56c43f34&libraries=services,clusterer,drawing"></script>
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
  <select name="area" class="btn btn-primary dropdown-toggle" style="width:130px;" onchange="setMap(this.value)">
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
    
<hr>
    
<!--검색 결과 리스트 -->
<c:choose>
		<c:when test="${empty StoreList }">
			<b><span style="font-size:9pt;">검색 결과가 없습니다.</span></b>
		</c:when>
		<c:when test="${!empty StoreList }">
			<c:forEach var="store" items="${StoreList }" varStatus="storeNum">
			<%-- <a href="${contextPath }/storeInfo.do?seller_id=${store.seller_id}"> --%>
					<div class="card" data-bs-toggle="offcanvas" href="#${store.seller_id }"  aria-controls="offcanvasExample" style="margin-top:10px;">
	 					<img src="https://ldb-phinf.pstatic.net/20220919_260/16635542007495NypM_JPEG/KakaoTalk_20220919_112238901.jpg" class="card-img-top" alt="..." width="286" height="180" style="object-fit:contain;">
		  				<div class="card-body">
		   				<p class="card-text">
		    				<h1>${store.seller_name }</h1>
		    				${store.seller_addr }
		    				가게소개
		    			</p>
		  				</div>
  					</div>
  					
  					
  					<div class="offcanvas offcanvas-start" tabindex="-1" id="${store.seller_id }" aria-labelledby="offcanvasExampleLabel" style="margin-left:63px; overflow-x:hidden; overflow-y:auto; background-color: rgb(233,236,239);">
  					<div class="offcanvas-header">
						<div role="main">
						<div>
						<div class="CB8aP" data-nclicks-area-code="btp" >
						<!-- <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" style="float:right"></button> -->
							<div class="uDR4i fnRPu">
							<img alt="가게이미지" src="${contextPath}/image/store_img/${store.image_fileName }" width="362">
<!-- 								<div class="CEX4u">
								
									<div class="fNygA">
										<a href="#" target="_self" role="button"
											class="place_thumb QX0J7" id="_autoPlayable">
											<div class="K0PDV _div" style="width: 100%; height: 100%; background-image: url('https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg'); background-position: 50% 0" id="ibu_1">
												<span class="place_blind">업체</span>
											</div>
											</a>
									</div>
								</div>
								<div class="CEX4u">
									<div class="hEm4D">
										<div class="CEX4u">
											<div class="fNygA">
												<a href="#" target="_self" role="button" class="place_thumb QX0J7">
													<div class="K0PDV _div" style="width: 100%; height: 100%; background-image: url('https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg'); background-position: 50% 0"
														id="ugc_2">
														<span class="place_blind">업체</span>
													</div></a>
											</div>
										</div>
										<div class="CEX4u">
											<div class="fNygA">
												<a href="#" target="_self" role="button"
													class="place_thumb QX0J7"><div class="K0PDV _div"
														style="width: 100%; height: 100%; background-image: url('https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg'); background-position: 50% 0"
														id="ugc_3">
														<span class="place_blind">업체</span>
													</div></a>
											</div>
										</div>
									</div>
									<div class="hEm4D">
										<div class="CEX4u">
											<div class="fNygA">
												<a href="#" target="_self" role="button"
													class="place_thumb QX0J7"><div class="K0PDV _div"
														style="width: 100%; height: 100%; background-image: url('https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg'); background-position: 50% 0"
														id="ugc_4">
														<span class="place_blind">업체</span>
													</div></a>
											</div>
										</div>
										<div class="CEX4u">
											<div class="fNygA">
												<a href="#" target="_self" role="button"
													class="place_thumb QX0J7"><div class="K0PDV _div"
														style="width: 100%; height: 100%; background-image: url('https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg'); background-position: 50% 0"
														id="ugc_5">
														<span class="place_blind">업체</span>
													</div>
													<span class="xez5V"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19 15"
															class="rReOU">
															<path
																d="M13.6 2.5h4.9v12.2H.5V2.5h4.8L6.1 0h6.8l.7 2.5zm3.9 1h-4.6L12.1 1H6.8l-.7 2.5H1.5v10.2h16V3.5zm-8.1 7c1.3 0 2.4-1.1 2.4-2.4s-1.1-2.4-2.4-2.4S7 6.8 7 8.1s1 2.4 2.4 2.4zm0 1C7.5 11.5 6 10 6 8.1s1.5-3.4 3.4-3.4 3.4 1.5 3.4 3.4-1.6 3.4-3.4 3.4z"></path></svg>999+
														더보기</span></a>
											</div>
										</div>
									</div>
								</div> -->
							</div>
						</div>
						<div class="place_section OP4V8" data-nclicks-area-code="btp">
							<div class="zD5Nm f7aZ0">
								<div id="_title" class="YouOG">
									<span class="Fc1rA">${store.store_nic}</span><!-- <span class="DJJvD">정육식당</span> -->
								</div>
								<div class="dAsGb">
									<span class="PXMot"><a
										href="/restaurant/33875361/review/visitor" role="button"
										class="place_bluelink" style="color:#5873A7">방문자리뷰 <em>71</em></a></span><span
										class="PXMot"><a href="/restaurant/33875361/review/ugc"
										role="button" class="place_bluelink" style="color:#5873A7">찜 <em>92</em></a></span>
								</div>
							</div>
	
							<div class="sVyWx">
								<div class="gR5KI" >
									<span class="yxkiA oGuDI">
										<a href="http://talk.naver.com/w4wuze?frm=mnmb&amp;frm=nmb_detail" target="_blank" role="button" class="D_Xqt">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" class="Mq0QC" aria-hidden="true">
														<path fill-rule="evenodd" d="M.37 14.91a.85.85 0 01-.37-.7V1.95C0 .87.88 0 1.95 0h10.56c.46 0 .9.16 1.26.45l1.11.85c.47.37.75.93.75 1.53v8.33a1.8 1.8 0 01-1.86 1.86H6.7c-1.23 0-2.28.65-3.1 1.55l-.96 1.04c-.16.2-.4.35-.65.39a.92.92 0 01-.5-.22l-1.12-.87zm.62-.57l1.04-1.12a4.87 4.87 0 013.55-1.69h7.07a1.01 1.01 0 001.12-1.11V1.86A1.01 1.01 0 0012.65.74H1.86A1.01 1.01 0 00.74 1.86v12.28c0 .12 0 .26.11.26a.19.19 0 00.14-.06zm4.14-7.27V4.99a.84.84 0 00-1.7 0v2.08a.84.84 0 001.7 0zm5.9 0V4.99a.84.84 0 00-1.7 0v2.08a.84.84 0 101.7 0z"></path>
											</svg>
											<span class="yJySz">문의</span>
										</a>
									</span>
									<span class="yxkiA">
										<a href="#" target="_self" role="button" class="D_Xqt" aria-pressed="false">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" class="Mq0QC" aria-hidden="true">
												<path d="M16 2.5H4v14.84l6-3.62 6 3.62V2.5zM3.5 1h13a1 1 0 011 1v18L10 15.48 2.5 20V2a1 1 0 011-1z"></path>
										</svg>찜하기
										</a>
									</span>
<!-- 									<span class="yxkiA">
									<a href="javascript:openPop()" id="_btp.share" class="D_Xqt naver-splugin spi_sns_share" target="_self" data-style="type_a" data-title="임천정육식당 대전 동구 백룡로6번길 104"
										data-line-template-type="custom_web" data-line-title="임천정육식당"
										data-line-description="대전 동구 백룡로6번길 104"
										data-kakaotalk-template-type="custom_web"
										data-kakaotalk-title="임천정육식당"
										data-kakaotalk-description="대전 동구 백룡로6번길 104"
										data-kakaotalk-image-url="https://search.pstatic.net/common/?autoRotate=true&amp;quality=100&amp;type=f640_380&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170605_201%2F1496647022238EwwJL_JPEG%2F186555564720825_0.jpeg"
										data-kakaotalk-button-text="자세히 보기"
										data-url-extra="임천정육식당 대전 동구 백룡로6번길 104"									
										data-friend-display="on" data-kakaostory-display="off"
										data-bookmark-display="off" data-memo-display="off"
										data-mail-display="off" data-keep-display="on"
										data-use-short-url="on" splugin-id="1132704466"
										data-url="http://localhost:8080/ec/category.do#">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" class="Mq0QC" aria-hidden="true">
										<path d="M15.6 17.6H1.4V6.4h4.58V5H0v14h17v-4.35h-1.4v2.95zm-4.18-8.26h3.03v3.47L20 7.41 14.45 2v3.35h-3.03c-3.6 0-5.66 3.53-5.97 7.7 0 0 1.42-3.71 5.96-3.71z"></path>
										</svg>공유</a>
									</a>
										</span> -->
								</div>
								
							</div>
							<!-- 링크공유 -->
<%-- 							<div class="popup_layer" id="popup_layer" style="display: none;">
							  <div class="popup_box">
							      <div style="height: 10px; width: 375px; float: top;">
							        <a href="javascript:closePop();"><img src="image/ic_close.svg" class="m_header-banner-close" width="30px" height="30px"></a>
							      </div>
							      <!--팝업 컨텐츠 영역-->
							      <div class="popup_cont">
										<br/><br/><span class="btn_share">공유하기</span><br/><br/><br/>
									        <div class="shareBox">
									            <a href="#" class="btn_share_sns" id="sns_facebook" title="페이스북 공유하기" onclick="shareSns('facebook');" style="margin:10px;">
									                <img src="${pageContext.request.contextPath}/image/facebook.png" alt="페이스북 공유하기"></a>
									            <a href="#" class="btn_share_sns" id="sns_blog" title="블로그 공유하기" onclick="shareSns('blog');" style="margin:10px;">
									                <img src="${pageContext.request.contextPath}/image/naver_blog.png" alt="블로그 공유하기"></a>
									            <a href="#" id="sns_urlCoby" class="btn_share_sns" title="네이버밴드 공유하기" onclick="shareSns('band');" style="margin:10px;">
									                <img src="${pageContext.request.contextPath}/image/band.png" alt="네이버밴드 공유하기"></a>
									                <a href="#" id="sns_urlCoby" class="btn_share_sns" title="링크 공유하기" onclick="clip(); return false;" style="margin:10px;">
									                <img src="${pageContext.request.contextPath}/image/link.png" alt="링크 공유하기"></a>
									        </div>
							      </div>
							      <!--팝업 버튼 영역-->
							      <div class="popup_btn" style="float: bottom; margin-top: 200px;">
							          <a href="javascript:closePop();">닫기</a>
							      </div>
							  </div>
							</div> --%>
							
							<div class="UoIF_ Afmx0 cgBhJ">
								<div class="gR5KI">
									<span class="yxkiA">
									<a href="${contextPath }/reservation.do" arget="_self" role="button" class="D_Xqt ">
	
										<span class="yJySz">예약</span></a></span>
								</div>
							</div>
						</div>
						</div>
						<div class="c1m0f"></div>
						<div id="_tab-menus"></div>
						
						<div class="place_fixed_maintab" id="tabMenu" >
							<div class="Jxtsc MpTT1" role="tablist"
								data-nclicks-area-code="tab">
								<div class="ngGKH">
									<div class="flicking-viewport"
										style="user-select: none; -webkit-user-drag: none; touch-action: pan-y;">
										<div class="flicking-camera tab_title" id="" style="transform: translate(0px);">
											<a href="#home" role="tab" class="tpj9w _tab-menu on" aria-selected="true" title="" id="" style="width: 120px;">
											<span class="veBoZ">홈</span>
											</a>
											<a href="#menu" target="_self" role="tab" class="tpj9w _tab-menu" aria-selected="false" title="" id="tab_title" style="width: 120px;">
											<span class="veBoZ">메뉴</span></a>
											<a href="#review" role="tab" class="tpj9w _tab-menu" aria-selected="false" title="" id="" style="width: 120px;">
											<span class="veBoZ" >리뷰</span>
											</a>
<!-- 											<a href="#reserve" role="tab" class="tpj9w _tab-menu" aria-selected="false" title="" id="" style="width: 110px;">
											<span class="veBoZ">예약</span>
											</a> -->
											
<!-- 											<a href="#reserve" role="tab" class="tpj9w _tab-menu" aria-selected="false" title="" id="" style="width: 96px;">
											<span class="veBoZ" >예약</span>
											</a> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
					<div style="min-height: 862px;" class="tab_cont">
						<!-- 홈 -->

							<div data-nclicks-area-code="btp" id="home" class="on">
								<div class="place_section no_margin vKA6F" >
									<div class="place_section_content">
										<ul class="y4sYp">
											<li class="SF_Mq GFtzE"><strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M15 6.97a6.92 6.92 0 01-1.12 3.77l-5.51 7.08a.47.47 0 01-.74 0L2.1 10.71A6.93 6.93 0 011 6.97 7 7 0 018 0v.93V0a7 7 0 017 6.97zm-13 0c0 1.15.4 2.3.99 3.24L8 16.7l5.04-6.5A5.95 5.95 0 008 1C4.66 1 2 3.64 2 6.97zm6-1.54A1.58 1.58 0 008 8.6a1.57 1.57 0 000-3.16zm0-.93a2.51 2.51 0 010 5.02A2.51 2.51 0 118 4.5z"></path></svg><span
													class="place_blind">주소</span></strong>
											<div class="x8JmK">
													<a href="#" target="_self" role="button" class="pAe5G"
														aria-haspopup="true" aria-expanded="false"><span
														class="IH7VW">${store.seller_addr }</span></a>
												</div></li>
	<!-- 										<li class="SF_Mq"><strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M10.24 1.08l4.35 4.35-.78.78-3.02-3.02V9.9l-7.69.03v7.14H2V8.84l7.69-.02V3.19L6.67 6.2l-.78-.78 4.35-4.35z"></path></svg><span
													class="place_blind">찾아가는길</span></strong>
											<div class="x8JmK">
													<div>
														<div class="xHaT3" style="display: block;">
															<span class="zPfVt">대동역7번출구 자양동 방향 100미터 도보후 자양초등학교
																건너편 홈마트옆 골목진입후 좌측 임천정육식당</span>
														</div>
													</div>
												</div></li> -->
											<li class="SF_Mq Sg7qM">
											<strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M8 16A7 7 0 108 2a7 7 0 000 14zm0 1A8 8 0 118 1a8 8 0 010 16zm.5-7.8l3.02 1.76a.5.5 0 01.19.68.5.5 0 01-.69.19L7.8 9.96a.5.5 0 01-.3-.46v-5a.5.5 0 011 0v4.7z"></path></svg><span
													class="place_blind">영업시간</span></strong>
											<div class="x8JmK">
													<a href="#" target="_self" role="button" class="vVPEo UGQE_"
														aria-expanded="false"><div class="nNPOq jS4JO">
															<div class="X007O">
																<div class="ob_be">
																	<em>운영시간  </em><span class="MxgIj"><time
																			aria-hidden="true">${store.openTime }</time><!-- <span
																		class="place_blind">14시 0분에 브레이크타임</span></span> -->
																</div>
															</div>
														</div></a>
												</div>
												
												
												<strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M8 16A7 7 0 108 2a7 7 0 000 14zm0 1A8 8 0 118 1a8 8 0 010 16zm.5-7.8l3.02 1.76a.5.5 0 01.19.68.5.5 0 01-.69.19L7.8 9.96a.5.5 0 01-.3-.46v-5a.5.5 0 011 0v4.7z"></path></svg><span
													class="place_blind">영업시간</span></strong>
											<div class="x8JmK">
													<a href="#" target="_self" role="button" class="vVPEo UGQE_"
														aria-expanded="false"><div class="nNPOq jS4JO">
															<div class="X007O">
																<div class="ob_be">
																	<em>휴무일  </em><span class="MxgIj"><time
																			aria-hidden="true">${store.closeDay }</time><!-- <span
																		class="place_blind">14시 0분에 브레이크타임</span></span> -->
																</div>
															</div>
														</div></a>
												</div>
												
												</li>
												
												
											<li class="SF_Mq SjF5j"><strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M2.92 1.15L.15 3.93a.5.5 0 00-.14.45 16.09 16.09 0 0012.6 12.61.5.5 0 00.46-.14l2.78-2.78a.5.5 0 000-.71l-4.18-4.18-.07-.06a.5.5 0 00-.64.06l-1.9 1.9-.28-.18a9.53 9.53 0 01-2.65-2.63L5.96 8 7.88 6.1a.5.5 0 000-.71L4.41 1.93l-.78-.78a.5.5 0 00-.7 0zm5.62 10.79l.37.21.09.04a.5.5 0 00.49-.13l1.82-1.82 3.48 3.47-2.24 2.24-.07-.01A15.1 15.1 0 011.14 4.84l-.1-.4 2.24-2.23 3.54 3.53-1.84 1.84a.5.5 0 00-.08.6 10.54 10.54 0 003.64 3.76z"></path></svg></strong>
											<div class="x8JmK">
													<span class="dry01" id="tel">${store.seller_tel }</span>
										<span class="mnnPt"><a href="#" target="_self" role="button" class="_vIMk" title="복사" onclick="copyToClipBoard()">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 13" class="pHtH_" aria-hidden="true">
													<path d="M9 8v.48l-1.98 1.58L6 11H3v1h4.61L10 9.81V3h-.97L9 8zm0-6h1a1 1 0 011 1v7.25L8 13H3a1 1 0 01-1-1v-1H1a1 1 0 01-1-1V1a1 1 0 011-1h7a1 1 0 011 1v1zm-7 8h3.5l.87-.7L8 7.81V1H1v9h1zm0-7h4v1H2V3zm0 2h4v1H2V5zm0 2h2v1H2V7z"></path></svg>복사</a></span>
												</div>
											</li>
	
											<li class="SF_Mq I5Ypx"><strong class="RmIE4"><svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
														class="nHf7b" aria-hidden="true">
														<path
															d="M11 15V3H2v12h9zm1-6h3v6a1 1 0 01-1 1H2a1 1 0 01-1-1V3a1 1 0 011-1h9a1 1 0 011 1v6zm0 1v5h2v-5h-2zM4 5.5h5v1H4v-1zM4 8h5v1H4V8zm0 2.5h3v1H4v-1z"></path></svg><span
													class="place_blind">가게 소개</span></strong>
											<div class="x8JmK">
													<div class="xHaT3" style="display: block;">
														<span class="zPfVt">${store.store_introduce }</span>
													</div>
												</div></li>
										</ul>
									</div>
								</div>
								
								<div class="place_section" data-nclicks-area-code="qmn">
									<h2 class="place_section_header">
										메뉴<!-- <em class="place_section_count">25</em> -->
<!-- 										<div class="rNxBQ" role="listbox">
											<span class="N5pEx"><a
												href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/list?more=false&amp;entry=pll&amp;pcmap=1"
												target="_self" role="option" class="EMAxw"
												aria-selected="true">배달의민족</a></span>
										</div> -->
									</h2>
									<div class="place_section_content">
										<ul class="mpoxR">
								
										
										<c:forEach var="product" items="${menuList }" varStatus="proNum" end="3">
											<c:if test="${product.seller_id eq store.seller_id}">
											
											<li class="yhGu6"><a
												href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/1014811300?more=false&amp;entry=pll&amp;pcmap=1"
												target="_blank" role="button" class="Ozh8q">
												<div class="ZHqBk">
														<div class="place_thumb">
															<img
																src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f400_300&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200114_125%2F1578973566680qzTVW_JPEG%2Fm001291_286.jpg"
																alt="최고급한우육회(소)" width="100%" height="auto">
														</div>
													</div>
													<div class="MN48z">
														<div class="erVoL">
															<div class="MENyI">${product.pro_name }</div>
														</div>
														<div class="Yrsei">
															<div class="gl2cc">${product.pro_price } 원</div>
														</div>
														<div class="Qh_eq"></div>
													</div></a></li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
									
									<div class="lfH3O">
										<a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/list?more=true&amp;entry=pll&amp;pcmap=1"
											target="_self" role="button" class="fvwqf"><span
											class="iNSaH">메뉴</span>더보기<svg
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 13"
												class="W0cVZ" aria-hidden="true">
												<path fill-rule="evenodd"
													d="M8.5 0l-.71.7 5.3 5.3H0v1h13.08L7.8 12.3l.7.7L15 6.5z"></path></svg></a>
									</div>
								</div>
							<div class="place_section" data-nclicks-area-code="qbk">
								<h2 class="place_section_header">
									예약
								</h2>
								<div>
									<ul class="i81eZ">
										<li class="cvLXA"><div class="Zwdge">
												<div class="F7xaA">
													<a href="/restaurant/16045148/booking" target="_self"
														role="button" class="y5Vxu"><span
														class="place_bluelink wpUMQ">${store.store_nic } <br> 예약</span></a>
												</div>
<!-- 												<div class="aEtnX">
													<div class="fdBhP">플라잉팬입니다. 중학생 이상은 성인으로 초등학생 이하는 어린이로
														예약 부탁드립니다. 아기 의자가 필요한 경우 유아로 예약 해주시면 됩니다.</div>
												</div> -->
<!-- 												<div class="Q8Tuk">
													<a href="/restaurant/16045148/review/visitor" role="button"
														class="b0JYf"><span class="XHTaR">예약자 리뷰 55</span></a>
												</div> -->
												<div class="doC0y">
													<a
														href="https://m.booking.naver.com/booking/6/bizes/435481/items/4334177?theme=place&amp;service-target=map-pc&amp;area=bmp"
														target="_self" role="button" class="K9FI6"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
															class="f_wIl" aria-hidden="true">
															<path
																d="M11.4 1.3h4.2V16H.4V1.3h4.1V0h1.1v1.3h4.9V0h1.1l-.2 1.3zm3.2 2.1H1.4V15h13.1l.1-11.6zM6.7 8.8v3.4H4.6V5.9h2.1l2.5 3.4V5.9h2.1v6.3h-2L6.7 8.8z"></path></svg>예약</a>
												</div>
											</div>
											<div class="F21yP">
												<a href="#" target="_self" role="button" class="place_thumb"><img
													src="image/store_img/${store.image_fileName }"
													class="_img" alt="플라잉팬 예약" width="87" height="87"></a>
											</div>
											</li>
									</ul>
								</div>
							</div>
							<div class="place_section" data-nclicks-area-code="rrr">
									<h2 class="place_section_header no_line">
										방문자 리뷰<!-- <em class="place_section_count">71</em> -->
									</h2>
									<div class="place_section_content">
										<div class="TraH1">
											<ul class="Uf1BQ" style="padding:0">
											
											<c:forEach var="review" items="${reviewList }" varStatus="revNum" end="3">
											<c:if test="${review.seller_id eq store.seller_id}">
												<li class="qrzj_"><div class="IEbo1">
														<div class="GP2eR">
															<div class="RGkHL">
															
																<a href="#" target="_self" role="button"
																	aria-expanded="false" class="xHaT3"
																	style="display: block;">
																	<span class="zPfVt">
																	${review.content }
																	</span>
																	<a href="#" onclick="btnmore();" id="">더보기</a>
<!-- 																	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 7" class="Ky28p" aria-hidden="true">
																		<path d="M11.47.52a.74.74 0 00-1.04 0l-4.4 4.45v.01L1.57.52A.74.74 0 10.53 1.57l5.12 5.08a.5.5 0 00.7 0l5.12-5.08a.74.74 0 000-1.05z"></path>
																		</svg>
																	<span class="place_blind">내용 더보기</span> -->
																	</span>
																	</a>
															</div>
															<div class="ozEbl">
																<a
																	href="https://m.place.naver.com/my/5ecf84b18f87a842bc927267/review?v=2"
																	target="_blank" role="button" class="iz4rh"><div
																		class="place_thumb">
																		<img
																			src="https://pcmap.place.naver.com/assets/shared/images/icon_default_profile.png"
																			class="YMYlP" alt="프로필" width="28" height="28">
																	</div></a>
																	<a
																	href="https://m.place.naver.com/my/5ecf84b18f87a842bc927267/review?v=2"
																	target="_blank" role="button" class="iKqnp">
																	<div class="rg88i">${review.user_id }</div>
																	<div class="FrWK3">
																		<span class="ExHfk"><span class="place_blind">작성일</span>
																		<div class="rg88i">${review.reg_date }</div>
																		<%-- <time aria-hidden="true">${reivew.reg_date}</time> --%>
																	</div></a>
															</div>
														</div>
													</div></li>
													</c:if>
													</c:forEach>
												
											</ul>
										</div>
										<div class="lfH3O">
											<a href="/restaurant/33875361/review/visitor?reviewItem=0"
												role="button" class="fvwqf"><span class="iNSaH">방문자
													리뷰</span>더보기<svg xmlns="http://www.w3.org/2000/svg"
													viewBox="0 0 15 13" class="W0cVZ" aria-hidden="true">
													<path fill-rule="evenodd"
														d="M8.5 0l-.71.7 5.3 5.3H0v1h13.08L7.8 12.3l.7.7L15 6.5z"></path></svg></a>
										</div>
									</div>
								</div>
								
							<!--풋터  -->
							<footer class="wzfnR" role="contentinfo" data-nclicks-area-code="fot">
								<div class="TRQjy">
									<a href="https://policy.naver.com/policy/service.html"
										target="_blank" role="button" class="X9K3K">이용약관</a><a
										href="https://help.naver.com/alias/NSP_M/NSPM_1.naver"
										target="_blank" role="button" class="X9K3K">고객센터</a><a
										href="https://m.place.naver.com/my/policy/visitorReview"
										target="_blank" role="button" class="X9K3K">리뷰운영정책</a><a
										href="https://help.naver.com/alias/myplace/myplace_70.naver"
										target="_blank" role="button" class="X9K3K">신고센터</a>
								</div>
								<div class="zIIzj">
									<a href="${contextPath }/main.do" target="_blank" role="button"><span
										class="place_blind">먹고보자</span>
										<img src="image/mainlogo2.png" width=50>
									</a>
								</div>
							</footer>
						</div>
						<!-- 풋터 :end -->
						<!--home:end  -->
						
						
						
						
						<!--menu:start  -->
									<div data-nclicks-area-code="bmv" id="menu">
										<div class="place_section no_margin">
											<div class="place_section_content">
												<ul class="ZUYk_">
												<c:forEach var="menu" items="${menuList }" varStatus="menuNum">
												<c:if test="${menu.seller_id eq store.seller_id}">
												
													<li class="P_Yxm"><a
														href="#" role="button"
														class="qpNnn"><div class="r8zp9">
																<div class="place_thumb vMMzE">
																	<div class="K0PDV"
																		style="width: 100px; height: 100px; background-image: url(&quot;https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f320_320&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170321_210%2F1490090806016JftY6_JPEG%2Fb78c8c09-6efb-4232-ac94-f96cc0a7811c.jpeg&quot;);">
																		<span class="place_blind">${menu.pro_name }</span>
																	</div>
																</div>
															</div>
															<div class="LZ3Zm">
																<div class="pr1Qk">
																	<div class="MR0bc">
																		<span class="Sqg65">${menu.pro_name }</span>
																		<!-- <span class="GPETv">
																			<svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 29 16" class="Udax8" aria-hidden="true">
																				<path fill="#ffaf3b"
																					d="M8 0h13c4.4 0 8 3.6 8 8s-3.6 8-8 8H8c-4.4 0-8-3.6-8-8s3.6-8 8-8z"></path>
																				<path fill="#fff"
																					d="M13.7 12.9h-1.2V8h-.9v4.5h-1.2V3.2h1.2v3.7h.9V3.1h1.2v9.8zM6.9 9.5c1 0 2.2-.1 2.8-.2l.1 1c-.7.2-2.2.3-3.3.3h-.9V4.2h3.7v1H6.9v4.3zm16.5 2.1h-8.9v-1h2.2V8.7H18v1.9h1.9V8.7h1.3v1.9h2.2v1zm-.9-3.3h-7.2v-1h1.4l-.2-1.8 1.3-.1.1 2H20l.3-2 1.2.2-.3 1.8h1.3v.9zm.1-3.5h-7.2v-1h7.2v1z"></path></svg><span
																			class="place_blind">대표</span></span> -->
																	</div>
																</div>
																<div class="TvLl7">
																	<div class="eCaG_"></div>
																</div>
																<div class="SSaNE">${menu.pro_price } 원</div>
															</div></a></li>
													</c:if>
													</c:forEach>
												</ul>
												<div class="KPQDP">메뉴 항목과 가격은 각 매장의 사정에 따라 기재된 내용과 다를
													수 있습니다.</div>
											</div>
										</div>
										
										<!--풋터  -->
										<footer class="wzfnR" role="contentinfo" data-nclicks-area-code="fot">
											<div class="TRQjy">
												<a href="https://policy.naver.com/policy/service.html"
													target="_blank" role="button" class="X9K3K">이용약관</a><a
													href="https://help.naver.com/alias/NSP_M/NSPM_1.naver"
													target="_blank" role="button" class="X9K3K">고객센터</a><a
													href="https://m.place.naver.com/my/policy/visitorReview"
													target="_blank" role="button" class="X9K3K">리뷰운영정책</a><a
													href="https://help.naver.com/alias/myplace/myplace_70.naver"
													target="_blank" role="button" class="X9K3K">신고센터</a>
											</div>
											<div class="zIIzj">
												<a href="${contextPath }/main.do" target="_blank" role="button"><span
													class="place_blind">먹고보자</span>
													<img src="image/mainlogo2.png" width=50>
												</a>
											</div>
										</footer>
									</div>
							
						<!-- footer:end -->
						<!-- menu:end -->
						
						
						
						
						
							<!--review:start  -->
									<div data-nclicks-area-code="rrv" id="review">
									
										<div class="place_section lcndr Xj_yJ">
										<c:forEach var="rev" items="${reviewavgsum }" varStatus="reviewNum">
										<c:if test="${rev.seller_id eq store.seller_id}">
											<h2 class="place_section_header">
												리뷰<span class="place_section_count">${rev.review_count }</span>
											<span class="m7jAR ohonc">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 13 13" class="SuAGt" aria-hidden="true">
												<path d="M8.26 4.68h4.26a.48.48 0 01.28.87L9.35 8.02l1.33 4.01a.48.48 0 01-.18.54.48.48 0 01-.56 0l-3.44-2.5-3.44 2.5a.48.48 0 01-.74-.54l1.33-4L.2 5.54a.48.48 0 01.28-.87h4.26l1.3-4a.48.48 0 01.92 0l1.3 4z">
												</path>
												</svg>
												<em>${rev.rating_avg }</em>
											</span>
											<div class="Qo7sP">
														총 리뷰 개수는 <em>${rev.review_count }</em> 평균 별점은 <em>${rev.rating_avg }</em>입니다.
											</div>
											</h2>
											</c:if>
											</c:forEach>
											<div class="place_section_content">
												<div id="_tag_filters"></div>
												<ul class="eCPGL" style="padding:0; margin-bottom: 0">
												<c:forEach var="review" items="${reviewList }" varStatus="reviewNum" end="6">
												<c:if test="${review.seller_id eq store.seller_id}">
													<div style="border-bottom: 1px solid #ecf0f2">
													<li class="YeINN"><div class="Lia3P">
															<a
																href="#"
																target="_blank" role="button" class="DqSJm"><div
																	class="place_thumb">
																	<img
																		src="https://pcmap.place.naver.com/assets/shared/images/icon_default_profile.png"
																		class="sKXBJ" alt="프로필" width="38" height="38">
																</div></a>
																<a href="#" target="_blank" role="button" class="Hazns">
																<div class="sBWyy">${review.seller_id }</div>
																<div class="Qde7Q">
																	<span class="P1zUJ" style="font-size:small; color:#8f8f8f;">
																	
																	
																	
																	<!-- 별점 -->
																		<div style="CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(image/icon_star2.gif) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH: 90px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
																			<p style="WIDTH: ${review.rating_percent}%; PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(image/icon_star.gif) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
																				
																			</p>
																		</div>
																		<div>
																		<b style="margin-left:5px;font-size:small; color:#8f8f8f;">${review.rating}</b>
																				<%-- <span style="margin-left:90px;font-size:small; color:#8f8f8f;">
																				${review.rating + 0.0}
																				</span> --%>
																		</div>

																	
																	
																	
																	</span>
																</div> 
																</a>
														</div>

														<div class="ZZ4OK"> 
															<a id="#" href="#" target="_self" role="button"
																aria-expanded="false" class="xHaT3"
																style="display: block;">
																<span class="zPfVt" id="reviewcon${reviewNum.index}"> <!--id="reviewcon"  -->
																${review.content}
        														</span>
																	<span class="rvCSr">
																	<a href="#" onclick="btnmore(moreOpen${reviewNum.index}, reviewcon${reviewNum.index});" id="moreOpen${reviewNum.index}" style="font-size:small; color:#8f8f8f;">더보기</a>
<!-- 																	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 7" class="Ky28p" aria-hidden="true" >
																		<path d="M11.47.52a.74.74 0 00-1.04 0l-4.4 4.45v.01L1.57.52A.74.74 0 10.53 1.57l5.12 5.08a.5.5 0 00.7 0l5.12-5.08a.74.74 0 000-1.05z"></path>
																	</svg> -->
																	<span class="place_blind">내용 더보기</span>
																	</span>
															</a>
														</div>
														<div class="gyAGI">
														
															<span class="P1zUJ">
															<a href="#" onclick="likeValidation(${review.review_num },likenum${reviewNum.index});">
															<img src="image/thumb_up.png" class="PtIou" alt="" width="18" height="18">리뷰가 도움이 됐어요
															</a>
															</span>
															<span target="_self" role="button" class="P1zUJ ZGKcF" aria-haspopup="true" aria-expanded="false">+<span id="likenum${reviewNum.index}">${review.liked}</span>
															<span class="place_blind">개의 좋아요가 있습니다</span><span class="place_blind">펼쳐보기</span></span>
														</div>
														<div class="sb8UA">
															<span class="P1zUJ"><span class="place_blind">최근
																	방문일</span>
															<time aria-hidden="true">${review.reg_date}</time></span>
														</div>
														</li>
														</div>
														</c:if>
														</c:forEach>
												</ul>
											</div>
											<div class="lfH3O">
												<a href="#" target="_self" role="button" class="fvwqf">더보기<svg
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 7"
														class="E4qxG" aria-hidden="true">
														<path d="M6 5.59L11.35 0l.65.7L6 7 0 .7.65 0z"></path></svg></a>
											</div>
										</div>


									<!--풋터  -->
										<footer class="wzfnR" role="contentinfo" data-nclicks-area-code="fot">
											<div class="TRQjy">
												<a href="https://policy.naver.com/policy/service.html"
													target="_blank" role="button" class="X9K3K">이용약관</a><a
													href="https://help.naver.com/alias/NSP_M/NSPM_1.naver"
													target="_blank" role="button" class="X9K3K">고객센터</a><a
													href="https://m.place.naver.com/my/policy/visitorReview"
													target="_blank" role="button" class="X9K3K">리뷰운영정책</a><a
													href="https://help.naver.com/alias/myplace/myplace_70.naver"
													target="_blank" role="button" class="X9K3K">신고센터</a>
											</div>
											<div class="zIIzj">
												<a href="${contextPath }/main.do" target="_blank" role="button"><span
													class="place_blind">먹고보자</span>
													<img src="image/mainlogo2.png" width=50>
												</a>
											</div>
										</footer>
									</div>
							
						<!-- footer:end -->
						<!-- review:end -->
						
						
						
						
						
						
						
						
						
						</div>
						</div>
					</div>
					</div>


				
  			<!-- </a> -->
  			
  			
  			
  		
  			
  			
  			
  			</c:forEach>
		</c:when>
	</c:choose>
 </section>

</body>
</html>