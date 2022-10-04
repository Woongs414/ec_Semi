package com.spring.ec.admin.service;

import com.spring.ec.admin.vo.MemberVO;

public interface AdminService {
	public MemberVO login(MemberVO memberVO) throws Exception;
}
