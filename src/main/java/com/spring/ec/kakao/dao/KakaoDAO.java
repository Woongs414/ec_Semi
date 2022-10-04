package com.spring.ec.kakao.dao;

import java.util.HashMap;

import org.springframework.dao.DataAccessException;

import com.spring.ec.kakao.vo.KakaoVO;

public interface KakaoDAO {
	public void kakaoinsert(HashMap<String, Object> userInfo) throws DataAccessException;
	
	public KakaoVO findkakao(HashMap<String, Object> userInfo) throws DataAccessException;
	
	/* public KakaoVO kakaoNumber(KakaoVO userInfo) throws DataAccessException; */
		
		
	
}
