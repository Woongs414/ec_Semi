package com.spring.ec.seller.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ec.seller.service.SellerService;
import com.spring.ec.seller.vo.MemberVO;

	@Controller("sellerController")
	public class SellerControllerImpl implements SellerController  {
		private static final Logger logger = LoggerFactory.getLogger(SellerControllerImpl.class);
		@Autowired
		SellerService sellerserivce;
		@Autowired
		MemberVO memberVO;
		
		@Override
		@RequestMapping(value = "/seller/memberForm_sdetail.do", method = RequestMethod.GET)
		public ModelAndView memberform_sdetail(@RequestParam(value = "result", required = false) String result,
				@RequestParam(value = "action", required = false) String action, HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			HttpSession session = request.getSession();
			session.setAttribute("action", action);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			mav.setViewName(viewName);
			System.out.println("controller:" + viewName);
			return mav;
			
		}
		@Override
		@RequestMapping(value = "/seller/s_regadmin.do", method = RequestMethod.GET)
		public ModelAndView regadmin(@RequestParam(value = "result", required = false) String result,
				/*가져올데이터이름(value="result") 가져올데이터를담을변수(String result) */	
			@RequestParam(value = "action", required = false) String action, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			//String viewName = getViewName(request); interceptor이용하기에 아래 getviewName주석처리
			String viewName = (String)request.getAttribute("viewName"); /*intercepotor getviewName메서드이용*/
			HttpSession session = request.getSession();  /*session객체 이용하여 viewName받음 */
			session.setAttribute("action", action); /*session객체 이용하여 action키 값 받음 */
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result); /*ModelAndView객체 이용하여 값 추가*/
			mav.setViewName(viewName);
			System.out.println("controller:" + viewName);
			return mav;	 /* ModelAndView객체 이용하여 값을 전달 */
		}
		
//		@Override
//		@RequestMapping(value="/seller/login.do",method=RequestMethod.POST)
//		public ModelAndView login(@ModelAttribute("member") MemberVO member, 
//				RedirectAttributes rAttr, 
//				HttpServletRequest request, 
//				HttpServletResponse response)throws Exception{
//			ModelAndView mav= new ModelAndView();
//			memberVO = sellserService.login(member);
//			if(memberVO != null) { /*DB에 있는 값과 일치하지않으면 */
//				HttpSession session = request.getSession();
//				session.setAttribute("member",memberVO);
//				session.setAttribute("isLogOn", true);
//				String action =(String) session.getAttribute("action");
//				session.removeAttribute("action");
//				if(action!=null) {
//					mav.setViewName("redirect:"+ action); /* action도메인 비어있음 */
//				}else {
//					mav.setViewName("redirect:/main.do");  /*로그인 성공시*/
//				}
//			}else {
//				rAttr.addFlashAttribute("result", "loginFailed"); /*login.jsp의 loginFailed <choose>구문 실행 */
//				mav.setViewName("redirect:/user/loginForm.do");   /* login.jsp redirect한다 */
//			}
//			return mav;
//		}
//		
		
}

	

	
