package com.spring.ec.admin.dao;

import org.springframework.dao.DataAccessException;

import com.spring.ec.admin.vo.MemberVO;

public interface AdminDAO {
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
}
