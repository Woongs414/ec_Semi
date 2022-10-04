package com.spring.ec.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ec.admin.service.AdminService;
import com.spring.ec.admin.vo.MemberVO;


@Controller("adminController")
public class AdminControllerImpl implements AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminControllerImpl.class);
	@Autowired
	AdminService adminService;
	@Autowired
	MemberVO memberVO;

	@Override
	@RequestMapping(value = "/admin/login.do" , method = RequestMethod.GET)
	public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/admin/main.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberVO = adminService.login(member);
		if (memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			session.setAttribute("isLogOn", true);
			String action = (String) session.getAttribute("action");
			session.removeAttribute("action");
			if (action != null) {
				mav.setViewName("redirect:" + action);
			} else {
				mav.setViewName("redirect:/member/listMembers.do");
			}
		} else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/admin/main.do");
		}
		return mav;
	}
}
