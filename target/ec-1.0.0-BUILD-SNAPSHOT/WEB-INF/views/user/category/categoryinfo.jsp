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

<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
 
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">


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
}

body, input, textarea, select, table, button, code {
    font-family: -apple-system,BlinkMacSystemFont,helvetica,"Apple SD Gothic Neo",sans-serif;
    font-size: 1.6rem;
    letter-spacing: -0.3px;
    line-height: 2rem;
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

.Jxtsc .tpj9w:first-child {
    padding: 0 12px 0 20px;
}

.Jxtsc .tpj9w {
    display: table-cell;
    padding: 0 12px;
    text-align: center;
}

.Jxtsc .tpj9w:last-child {
    padding: 0 20px 0 12px;
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

.Jxtsc .tpj9w[aria-selected=true] .veBoZ {
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
}

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
    padding: 0 18px 3px;
}

.Uf1BQ .qrzj_ {
    padding: 18px 0;
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
    fill: rgba(var(--place-color-text3), 1);
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



</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05169d60664947410852341b56c43f34&libraries=services,clusterer,drawing"></script>
</head>
<body>
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel" style="margin-left:63px; overflow-x:hidden; overflow-y:auto; background-color: rgb(233,236,239);">
  <div class="offcanvas-header">
  
				<div role="main">
				<div>
					<div class="CB8aP" data-nclicks-area-code="btp" >
					<!-- <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" style="float:right"></button> -->
						<div class="uDR4i fnRPu">
							<div class="CEX4u">
							
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
							</div>
						</div>
					</div>
					<div class="place_section OP4V8" data-nclicks-area-code="btp">
						<div class="zD5Nm f7aZ0">
							<div id="_title" class="YouOG">
								<span class="Fc1rA">${StoreList.store_nic}</span><span class="DJJvD">정육식당</span>
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
								<span class="yxkiA">
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
									</span>
							</div>
							
						</div>
						<!-- 링크공유 -->
						<div class="popup_layer" id="popup_layer" style="display: none;">
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
						</div>
						
						<div class="UoIF_ Afmx0 cgBhJ">
							<div class="gR5KI">
								<span class="yxkiA">
								<a href="#" arget="_self" role="button" class="D_Xqt ">

									<span class="yJySz">예약</span></a></span>
							</div>
						</div>
					</div>
					</div>
					<div class="c1m0f"></div>
					<div id="_tab-menus"></div>
					<div class="place_fixed_maintab" >
						<div class="Jxtsc MpTT1" role="tablist"
							data-nclicks-area-code="tab">
							<div class="ngGKH">
								<div class="flicking-viewport"
									style="user-select: none; -webkit-user-drag: none; touch-action: pan-y;">
									<div class="flicking-camera" style="transform: translate(0px);">
										<a
											href="/restaurant/33875361/home?entry=pll&amp;n_ad_group_type=10&amp;n_query=%EC%82%BC%EA%B2%B9%EC%82%B4&amp;from=map&amp;fromPanelNum=1&amp;ts=1663814214403"
											role="tab" class="tpj9w _tab-menu" aria-selected="true"
											title="" id="" style="width: 96px;"><span class="veBoZ">홈</span></a><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/list?more=false&amp;entry=pll&amp;pcmap=1"
											target="_self" role="tab" class="tpj9w _tab-menu"
											aria-selected="false" title="" id="" style="width: 96px;"><span
											class="veBoZ">메뉴</span></a><a
											href="/restaurant/33875361/review?entry=pll&amp;n_ad_group_type=10&amp;n_query=%EC%82%BC%EA%B2%B9%EC%82%B4&amp;from=map&amp;fromPanelNum=1&amp;ts=1663814214403"
											role="tab" class="tpj9w _tab-menu" aria-selected="false"
											title="" id="" style="width: 96px;"><span class="veBoZ">리뷰</span></a><a
											href="/restaurant/33875361/photo?entry=pll&amp;n_ad_group_type=10&amp;n_query=%EC%82%BC%EA%B2%B9%EC%82%B4&amp;from=map&amp;fromPanelNum=1&amp;ts=1663814214403"
											role="tab" class="tpj9w _tab-menu" aria-selected="false"
											title="" id="" style="width: 96px;"><span class="veBoZ">예약</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="min-height: 862px;">
						<div data-nclicks-area-code="btp">
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
													class="IH7VW">대전 동구 백룡로6번길 104</span><span class="KP_NF"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 7"
															class="nHf7b" aria-hidden="true">
															<path
																d="M11.47.52a.74.74 0 00-1.04 0l-4.4 4.45v.01L1.57.52A.74.74 0 10.53 1.57l5.12 5.08a.5.5 0 00.7 0l5.12-5.08a.74.74 0 000-1.05z"></path></svg></span></a>
												<div class="jyfLw">
													<span class="fv9Gn"><span class="nHf7b"
														style="background: #3cb44a">1</span></span><strong>대동<!-- -->역
													</strong> 7번 출구
													<!-- -->
													에서<em>330<!-- -->m
													</em>
												</div>
											</div></li>
										<li class="SF_Mq"><strong class="RmIE4"><svg
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
											</div></li>
										<li class="SF_Mq Sg7qM"><strong class="RmIE4"><svg
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
																<em>영업 중</em><span class="MxgIj"><time
																		aria-hidden="true">14:00에 브레이크타임</time><span
																	class="place_blind">14시 0분에 브레이크타임</span></span>
															</div>
															<span class="KP_NF"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 7"
																	class="nHf7b" aria-hidden="true">
																	<path
																		d="M11.47.52a.74.74 0 00-1.04 0l-4.4 4.45v.01L1.57.52A.74.74 0 10.53 1.57l5.12 5.08a.5.5 0 00.7 0l5.12-5.08a.74.74 0 000-1.05z"></path></svg><span
																class="place_blind">펼쳐보기</span></span>
														</div>
													</div></a>
											</div></li>
										<li class="SF_Mq SjF5j"><strong class="RmIE4"><svg
													xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 18"
													class="nHf7b" aria-hidden="true">
													<path
														d="M2.92 1.15L.15 3.93a.5.5 0 00-.14.45 16.09 16.09 0 0012.6 12.61.5.5 0 00.46-.14l2.78-2.78a.5.5 0 000-.71l-4.18-4.18-.07-.06a.5.5 0 00-.64.06l-1.9 1.9-.28-.18a9.53 9.53 0 01-2.65-2.63L5.96 8 7.88 6.1a.5.5 0 000-.71L4.41 1.93l-.78-.78a.5.5 0 00-.7 0zm5.62 10.79l.37.21.09.04a.5.5 0 00.49-.13l1.82-1.82 3.48 3.47-2.24 2.24-.07-.01A15.1 15.1 0 011.14 4.84l-.1-.4 2.24-2.23 3.54 3.53-1.84 1.84a.5.5 0 00-.08.6 10.54 10.54 0 003.64 3.76z"></path></svg></strong>
										<div class="x8JmK">
												<span class="dry01" id="tel">0507-1424-5230</span>
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
												class="place_blind">설명</span></strong>
										<div class="x8JmK">
												<div class="xHaT3" style="display: block;">
													<span class="zPfVt">최상등급의 한우암소,국내산암돼지 를 저렴하게 파는
														정육식당입니다. 테이블간 거리두기 시행! 신도정육점 고기촌에서 상호만 변경</span>
												</div>
											</div></li>
									</ul>
								</div>
							</div>
							
							<div class="place_section" data-nclicks-area-code="qmn">
								<h2 class="place_section_header">
									메뉴<em class="place_section_count">25</em>
									<div class="rNxBQ" role="listbox">
										<span class="N5pEx"><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/list?more=false&amp;entry=pll&amp;pcmap=1"
											target="_self" role="option" class="EMAxw"
											aria-selected="true">배달의민족</a></span>
									</div>
								</h2>
								<div class="place_section_content">
									<ul class="mpoxR">
										<li class="yhGu6"><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/1014811300?more=false&amp;entry=pll&amp;pcmap=1"
											target="_blank" role="button" class="Ozh8q"><div
													class="ZHqBk">
													<div class="place_thumb">
														<img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f400_300&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200114_125%2F1578973566680qzTVW_JPEG%2Fm001291_286.jpg"
															alt="최고급한우육회(소)" width="100%" height="auto">
													</div>
												</div>
												<div class="MN48z">
													<div class="erVoL">
														<div class="MENyI">최고급한우육회(소)</div>
													</div>
													<div class="Yrsei">
														<div class="gl2cc">20,000원</div>
													</div>
													<div class="Qh_eq"></div>
												</div></a></li>
										<li class="yhGu6"><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/1014811301?more=false&amp;entry=pll&amp;pcmap=1"
											target="_blank" role="button" class="Ozh8q"><div
													class="ZHqBk">
													<div class="place_thumb">
														<img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f400_300&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200114_125%2F1578973566680qzTVW_JPEG%2Fm001291_286.jpg"
															alt="최고급한우육회(중)" width="100%" height="auto">
													</div>
												</div>
												<div class="MN48z">
													<div class="erVoL">
														<div class="MENyI">최고급한우육회(중)</div>
													</div>
													<div class="Yrsei">
														<div class="gl2cc">30,000원</div>
													</div>
													<div class="Qh_eq"></div>
												</div></a></li>
										<li class="yhGu6"><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/1014811302?more=false&amp;entry=pll&amp;pcmap=1"
											target="_blank" role="button" class="Ozh8q"><div
													class="ZHqBk">
													<div class="place_thumb">
														<img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f400_300&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200114_125%2F1578973566680qzTVW_JPEG%2Fm001291_286.jpg"
															alt="최고급한우육회(대)" width="100%" height="auto">
													</div>
												</div>
												<div class="MN48z">
													<div class="erVoL">
														<div class="MENyI">최고급한우육회(대)</div>
													</div>
													<div class="Yrsei">
														<div class="gl2cc">40,000원</div>
													</div>
													<div class="Qh_eq"></div>
												</div></a></li>
										<li class="yhGu6"><a
											href="https://m.store.naver.com/restaurants/33875361/tabs/menus/baemin/1024120004?more=false&amp;entry=pll&amp;pcmap=1"
											target="_blank" role="button" class="Ozh8q"><div
													class="ZHqBk">
													<div class="place_thumb">
														<img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f400_300&amp;src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20201214_106%2F1607930668224OjEN5_JPEG%2Fm001296_286.jpg"
															alt="최고급한우육사시미(소)" width="100%" height="auto">
													</div>
												</div>
												<div class="MN48z">
													<div class="erVoL">
														<div class="MENyI">최고급한우육사시미(소)</div>
													</div>
													<div class="Yrsei">
														<div class="gl2cc">30,000원</div>
													</div>
													<div class="Qh_eq"></div>
												</div></a></li>
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
													class="place_bluelink wpUMQ">플라잉팬 예약</span></a>
											</div>
											<div class="aEtnX">
												<div class="fdBhP">플라잉팬입니다. 중학생 이상은 성인으로 초등학생 이하는 어린이로
													예약 부탁드립니다. 아기 의자가 필요한 경우 유아로 예약 해주시면 됩니다.</div>
											</div>
											<div class="Q8Tuk">
												<a href="/restaurant/16045148/review/visitor" role="button"
													class="b0JYf"><span class="XHTaR">예약자 리뷰 55</span></a>
											</div>
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
												src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f87_87&amp;src=https%3A%2F%2Fnaverbooking-phinf.pstatic.net%2F20220725_86%2F16587360756272uhvr_JPEG%2FKakaoTalk_20220509_142654413_01.jpg"
												class="_img" alt="플라잉팬 예약" width="87" height="87"></a>
										</div>
										</li>
								</ul>
							</div>
						</div>
						<div class="place_section" data-nclicks-area-code="rrr">
								<h2 class="place_section_header no_line">
									방문자 리뷰<em class="place_section_count">71</em>
								</h2>
								<div class="place_section_content">
									<div class="TraH1">
										<ul class="Uf1BQ">
											<li class="qrzj_"><div class="IEbo1">
													<div class="GP2eR">
														<div class="RGkHL">
															<a href="#" target="_self" role="button"
																aria-expanded="false" class="xHaT3"
																style="display: block;"><span class="zPfVt">사장님
																	항상 친절하시구 고기도 신선해요!</span></a>
														</div>
														<div class="ozEbl">
															<a
																href="https://m.place.naver.com/my/5ecf84b18f87a842bc927267/review?v=2"
																target="_blank" role="button" class="iz4rh"><div
																	class="place_thumb">
																	<img
																		src="https://pcmap.place.naver.com/assets/shared/images/icon_default_profile.png"
																		class="YMYlP" alt="프로필" width="28" height="28">
																</div></a><a
																href="https://m.place.naver.com/my/5ecf84b18f87a842bc927267/review?v=2"
																target="_blank" role="button" class="iKqnp"><div
																	class="rg88i">YP8871</div>
																<div class="FrWK3">
																	<span class="ExHfk"><span class="place_blind">최근
																			방문일</span>
																	<time aria-hidden="true">8.3.수</time><span
																		class="place_blind">2022년 8월 3일 수요일</span></span><span
																		class="ExHfk">2번째 방문</span><span class="ExHfk">영수증</span>
																</div></a>
														</div>
													</div>
												</div></li>
											<li class="qrzj_"><div class="IEbo1">
													<div class="GP2eR">
														<div class="RGkHL">
															<a href="#" target="_self" role="button"
																aria-expanded="false" class="xHaT3"
																style="display: block;"><span class="zPfVt">너무맛있어요</span></a>
														</div>
														<div class="ozEbl">
															<a
																href="https://m.place.naver.com/my/5b964dae72f931305e58ae5b/review?v=2"
																target="_blank" role="button" class="iz4rh"><div
																	class="place_thumb">
																	<img
																		src="https://pcmap.place.naver.com/assets/shared/images/icon_default_profile.png"
																		class="YMYlP" alt="프로필" width="28" height="28">
																</div></a><a
																href="https://m.place.naver.com/my/5b964dae72f931305e58ae5b/review?v=2"
																target="_blank" role="button" class="iKqnp"><div
																	class="rg88i">우힛9285</div>
																<div class="FrWK3">
																	<span class="ExHfk"><span class="place_blind">최근
																			방문일</span>
																	<time aria-hidden="true">7.16.토</time><span
																		class="place_blind">2022년 7월 16일 토요일</span></span><span
																		class="ExHfk">4번째 방문</span><span class="ExHfk">영수증</span>
																</div></a>
														</div>
													</div>
													<div class="x0W33">
														<a href="#" target="_self" role="button"
															class="place_thumb"><img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f87_87&amp;src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA3MjBfMjA1%2FMDAxNjU4MzE2MDEzNTUw.WK3i_5HyGjHsznVbXtV7UAaUhFCkvoSEBazpgDeV3Rwg.Poa6D4KLjS-kYqMastLL-Ec8p9LblB_5QR6Q8XFYIeYg.JPEG%2Fupload_4b48b27d4084b752261b53ffa52f761f.jpg"
															class="_img" alt="방문자리뷰"></a>
													</div>
												</div></li>
											<li class="qrzj_"><div class="IEbo1">
													<div class="GP2eR">
														<div class="RGkHL">
															<a href="#" target="_self" role="button"
																aria-expanded="false" class="xHaT3"
																style="display: block;"><span class="zPfVt">너무
																	맛있어여ㅎㅎ 셀프볶음밥인데 나름 성공했네요ㅎㅎ</span></a>
														</div>
														<div class="ozEbl">
															<a
																href="https://m.place.naver.com/my/5efe954f68401871104ed4cc/review?v=2"
																target="_blank" role="button" class="iz4rh">
																<div class="place_thumb">
																	<img
																		src="https://pcmap.place.naver.com/assets/shared/images/icon_default_profile.png"
																		class="YMYlP" alt="프로필" width="28" height="28">
																</div></a><a
																href="https://m.place.naver.com/my/5efe954f68401871104ed4cc/review?v=2"
																target="_blank" role="button" class="iKqnp">
																<div class="rg88i">또디2</div>
																<div class="FrWK3">
																	<span class="ExHfk"><span class="place_blind">최근
																			방문일</span>
																	<time aria-hidden="true">7.5.화</time><span
																		class="place_blind">2022년 7월 5일 화요일</span></span><span
																		class="ExHfk">4번째 방문</span><span class="ExHfk">영수증</span>
																</div></a>
														</div>
													</div>
													<div class="x0W33">
														<a href="#" target="_self" role="button"
															class="place_thumb"><img
															src="https://search.pstatic.net/common/?autoRotate=true&amp;quality=95&amp;type=f87_87&amp;src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA3MjBfMjQ0%2FMDAxNjU4MzE1OTU4NzY4.OB0Da8ofipt9LoX9FI0zPd_aMz3E210iobuJ3wyPatUg.TXQoCJ-tqaeMeo1Oxt8Ujj5Q6oqeV03FRiiv6YcSDJwg.JPEG%2Fupload_ae58db016af01193bca91b81360e4e34.jpg"
															class="_img" alt="방문자리뷰"></a>
													</div>
												</div></li>
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
					</div>
				</div>

</div>











</body>
</html>