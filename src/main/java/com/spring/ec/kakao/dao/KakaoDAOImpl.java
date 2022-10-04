package com.spring.ec.kakao.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ec.kakao.vo.KakaoVO;

@Repository("kakaoDAO")
public class KakaoDAOImpl implements KakaoDAO {
	
	//mapper를 호출하기 위한 클래스 주입.
	@Autowired
	private SqlSession sqlSession;
	
	//정보 저장
	@Override
	public void kakaoinsert(HashMap<String, Object> userInfo) throws DataAccessException{
		sqlSession.insert("mapper.member.kakaoInsert",userInfo);
	}
	//정보 확인
	@Override
	public KakaoVO findkakao(HashMap<String, Object> userInfo) throws DataAccessException {
		System.out.println("RN: " + userInfo.get("nickname"));
		System.out.println("RE: " + userInfo.get("email"));
		
		return sqlSession.selectOne("mapper.member.findKakao", userInfo);
	}
	
//	@Override
//	public KakaoVO kakaoNumber(KakaoVO userInfo) {
//		return sqlSession.selectOne("mapper.member.kakaoNumber", userInfo);
//	}
	
}



