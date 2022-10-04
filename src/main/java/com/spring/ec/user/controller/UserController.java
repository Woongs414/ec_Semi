package com.spring.ec.user.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ec.user.vo.MemberVO;

public interface UserController {
	//����� ���������� ���� �޼ҵ�
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView find_pwd_Result(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	//����� �Խ��� ���� �޼ҵ�
	public ModelAndView listBoards(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView listEatBoards(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView listSeeBoards(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView viewboard(@RequestParam("list_num") int list_num, HttpServletRequest request,HttpServletResponse response) throws Exception;
		
	public ModelAndView boardform(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity addNewBoard(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	
	public ModelAndView addComment(HttpServletRequest Request, HttpServletResponse response)throws Exception;
	
	//����� ī�װ� �޼ҵ�
	public ModelAndView searchcategory(@RequestParam(value = "search") String search,@RequestParam(value = "kind") String kind,@RequestParam(value = "area") String area, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	
	public ModelAndView category(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView storeInfo(@RequestParam(value = "seller_id") String seller_id, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public @ResponseBody String reviewlike(@RequestParam(value = "review_num") int reviewnum, HttpServletRequest request, HttpServletResponse response) throws Exception;

	public @ResponseBody String addwish(@RequestParam(value = "seller_id") String seller_id, @RequestParam(value = "user_id") String user_id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public @ResponseBody String delwish(@RequestParam(value = "seller_id") String seller_id, @RequestParam(value = "user_id") String user_id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView find_id_Result(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	
	// ���� ���
	public ModelAndView reservation(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView reservCheck(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//ȸ������
	public ModelAndView regadmin(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView memberform_main(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;

	public ModelAndView memberform_udetail(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//�α���/�α׾ƿ�
	public ModelAndView loginform(@RequestParam(value = "result", required = false) String result,@RequestParam(value = "action", required = false) String action, HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request, HttpServletResponse response)throws Exception;

	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//���̵�/��й�ȣ ã��
	public ModelAndView find_id(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView find_pwd(HttpServletRequest request, HttpServletResponse response) throws Exception ;
}
