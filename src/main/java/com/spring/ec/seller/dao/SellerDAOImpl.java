package com.spring.ec.seller.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ec.user.vo.BoardVO;

@Repository("sellerDAO")
public class SellerDAOImpl implements SellerDAO {
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public List selectAllBoardsList() throws DataAccessException{
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectAllBoardsList");
		return boardsList;
	}
	
	
	@Override
	public List selectEatBoardsList() throws DataAccessException{
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectEatBoardsList");
		return boardsList;
	}
	
	
	@Override
	public List selectSeeBoardsList() throws DataAccessException{
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectSeeBoardsList");
		return boardsList;
	}
}
