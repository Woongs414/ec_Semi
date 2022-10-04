package com.spring.ec.kakao.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface KakaoController {
	 public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model model) throws Exception;
	 
	 public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
