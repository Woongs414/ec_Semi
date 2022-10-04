package com.spring.ec.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ec.admin.dao.AdminDAO;
import com.spring.ec.admin.vo.MemberVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO adminDAO;
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception{
		return adminDAO.loginById(memberVO);
	}
}
