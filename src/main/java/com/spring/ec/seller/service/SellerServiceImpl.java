package com.spring.ec.seller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ec.seller.dao.SellerDAO;
import com.spring.ec.seller.vo.BoardVO;


@Service("sellerSerivce")
public class SellerServiceImpl implements SellerService {
	@Autowired
	SellerDAO sellerDAO;

	@Override
	public List<BoardVO> listBoards() throws Exception {
		return sellerDAO.selectAllBoardsList();
	}

	@Override
	public List<BoardVO> eatListBoards() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> seeListBoards() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
