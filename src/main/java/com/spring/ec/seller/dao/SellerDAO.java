package com.spring.ec.seller.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface SellerDAO {

	List selectAllBoardsList() throws DataAccessException;

	List selectEatBoardsList() throws DataAccessException;

	List selectSeeBoardsList() throws DataAccessException;

}
