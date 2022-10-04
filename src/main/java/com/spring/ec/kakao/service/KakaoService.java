package com.spring.ec.kakao.service;

import com.spring.ec.kakao.vo.KakaoVO;

public interface KakaoService {
	public KakaoVO getUserInfo(String access_Token) throws Exception;

	public String getAccessToken(String authorize_code) throws Exception;
	
//	public KakaoVO kakaoNumber(KakaoVO userInfo) throws Exception;
}
