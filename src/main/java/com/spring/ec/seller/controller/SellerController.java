package com.spring.ec.seller.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ec.seller.vo.MemberVO;

public interface SellerController {

	public ModelAndView memberform_sdetail(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public ModelAndView regadmin(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;
//	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request, HttpServletResponse response)throws Exception{

}
