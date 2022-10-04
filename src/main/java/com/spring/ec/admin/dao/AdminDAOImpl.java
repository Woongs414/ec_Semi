package com.spring.ec.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ec.admin.vo.MemberVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SqlSession sqlSession;
	@Autowired
	MemberVO memberVO;
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}
}
