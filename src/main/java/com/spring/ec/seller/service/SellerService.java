package com.spring.ec.seller.service;

import java.util.List;

public interface SellerService {
public List<com.spring.ec.seller.vo.BoardVO> listBoards()throws Exception;
	
	public List<com.spring.ec.seller.vo.BoardVO> eatListBoards()throws Exception;
	
	public List<com.spring.ec.seller.vo.BoardVO> seeListBoards()throws Exception;
}
