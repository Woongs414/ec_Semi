	package com.spring.ec.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.ec.seller.vo.ProductVO;
import com.spring.ec.seller.vo.SellerVO;
import com.spring.ec.seller.vo.StoreVO;
import com.spring.ec.user.dao.UserDAO;
import com.spring.ec.user.vo.BoardVO;
import com.spring.ec.user.vo.CommentVO;
import com.spring.ec.user.vo.MemberVO;
import com.spring.ec.user.vo.ReservVO;
import com.spring.ec.user.vo.ReviewVO;
import com.spring.ec.user.vo.WishVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	
	// ���ø� ���ø� 
	@Override
	public List<BoardVO> listBoards(int page)throws Exception{
		return userDAO.selectAllBoardsList(page);
	}
	
	@Override
	public List<BoardVO> eatListBoards(int page)throws Exception{
		return userDAO.selectEatBoardsList(page);
	}
	
	@Override
	public List<BoardVO> seeListBoards(int page)throws Exception{
		return userDAO.selectSeeBoardsList(page);
	}
	
	@Override
	public int allListCount()throws Exception{
		return userDAO.allBoardPaging();
	}
	
	@Override
	public int eatListCount()throws Exception{
		return userDAO.eatBoardPaging();
	}
	
	@Override
	public String find_pwd_Result(MemberVO member) throws DataAccessException {
		return userDAO.find_pwd_Result(member);
	}
	
	@Override
	public int seeListCount()throws Exception{
		return userDAO.seeBoardPaging();
	}
	@Override
	public BoardVO viewBoard(int list_num) throws Exception{
		return userDAO.selectBoard(list_num);
		
	}
	
	@Override
	public int addNewBoard(Map boardMap) throws Exception {
		int list_num = userDAO.insertNewBoard(boardMap);
		boardMap.put("list_num", list_num);
		userDAO.insertNewImage(boardMap);
		return list_num;
	}
	
	@Override
	public void addHits(int list_num)throws Exception{
		userDAO.addHits(list_num);
	}
	// �Խñ� comment �޼ҵ�
	@Override
	public List<CommentVO> listComments(int list_num)throws Exception{
		return userDAO.selectAllCommentsList(list_num);
	}
	@Override
	public int addNewComment(Map commentMap) throws Exception {
		int comment_num = userDAO.insertNewComment(commentMap);
		commentMap.put("comment_num", comment_num);
		return comment_num;
	}
	
	// ī�װ� ����
	@Override
	public List<SellerVO> selectAllStores() throws Exception {
		List<SellerVO> StoreList = userDAO.selectAllStores();
		return StoreList;
	}
	
	@Override
	public List<SellerVO> selectSearchStores(Map<String, String> listMap) throws Exception {
		List<SellerVO> StoreList = userDAO.selectSearchStores(listMap);
		return StoreList;
	}
	
	@Override
	public List<SellerVO> selectsearcharea(String area) throws Exception {
		List<SellerVO> StoreList = userDAO.selectsearcharea(area);
		return StoreList;
	}
	
	@Override
	public StoreVO selectstoreInfo(String seller_id) throws Exception {
		StoreVO StoreList = userDAO.selectstoreInfo(seller_id);
		return StoreList;
	}
	
	@Override
	public List<ProductVO> selectMenu() throws Exception {
		List<ProductVO> MenuList = userDAO.selectMenu();
		return MenuList;
	}
	
	@Override
	public List<ReviewVO> selectReview() throws Exception {
		List<ReviewVO> ReviewList = userDAO.selectReview();
		return ReviewList;
	}
	@Override
	public String find_id_Result(MemberVO member) throws DataAccessException {
		return userDAO.find_id_Result(member);
	}
	
	@Override
	public int updatereviewlike(int reviewnum) throws Exception {
		return userDAO.updatereviewlike(reviewnum);
	}
	
	@Override
	public String selectreviewlike(int reviewnum) throws Exception {
		return userDAO.selectreviewlike(reviewnum);
	}
	
	@Override
	public List<ReviewVO> selectReviewavgsum() throws Exception {
		List<ReviewVO> ReviewList = userDAO.selectReviewavgsum();
		return ReviewList;
	}
	
	
	@Override
	public ReservVO selectStoreInfo(String seller_id) throws Exception{
		return userDAO.selectStoreInfo2(seller_id);
	}
	
	@Override
	public int addwish(Map<String, String> listMap) throws DataAccessException {
		return userDAO.addwish(listMap);
	}
	
	@Override
	public List<WishVO> selectwish(String user_id) throws Exception {
		List<WishVO> WishList = userDAO.selectwish(user_id);
		return WishList;
	}
	
	@Override
	public int delwish(Map<String, String> listMap) throws DataAccessException {
		return userDAO.delwish(listMap);
	}
	
	@Override
	public List selectwishsum() throws DataAccessException {
		return userDAO.selectwishsum();
	}
	@Override
	public MemberVO login(MemberVO memberVO) throws DataAccessException{
		return userDAO.loginById(memberVO);
	}
	@Override
	public int addMember(MemberVO member) throws DataAccessException {
		return userDAO.insertMember(member);
	}
}
