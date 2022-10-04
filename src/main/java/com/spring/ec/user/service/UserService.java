package com.spring.ec.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ec.seller.vo.ProductVO;
import com.spring.ec.seller.vo.SellerVO;
import com.spring.ec.seller.vo.StoreVO;
import com.spring.ec.user.vo.BoardVO;
import com.spring.ec.user.vo.CommentVO;
import com.spring.ec.user.vo.MemberVO;
import com.spring.ec.user.vo.ReservVO;
import com.spring.ec.user.vo.ReviewVO;
import com.spring.ec.user.vo.WishVO;

public interface UserService {

	// ����� �Խ��� ���� �޼ҵ�
	// �÷��� ����Ʈ �Խ��� ���
	public List<BoardVO> listBoards(int page) throws Exception;

	// ���ø� �Խù���ϸ� ����
	public List<BoardVO> eatListBoards(int page) throws Exception;

	// ���ø� �Խù� ��ϸ� ����
	public List<BoardVO> seeListBoards(int page) throws Exception;

	// �÷��̸���Ʈ ������ ����
	public int allListCount() throws Exception;

	// ���ø� ������ ����
	public int eatListCount() throws Exception;

	// ���ø� ������ ����
	public int seeListCount() throws Exception;

	// �Խù� ��â
	public BoardVO viewBoard(int list_num) throws Exception;

	// �Խù� Ŭ����
	public void addHits(int list_num) throws Exception;

	// �Խñ� ����
	public int addNewBoard(Map boardMap) throws Exception;

	// ��� �ҷ�����
	public List<CommentVO> listComments(int list_num) throws Exception;

	// ��� �ۼ�
	public int addNewComment(Map commentMap) throws Exception;

	// ī�װ� ����
	public String find_id_Result(MemberVO member) throws DataAccessException;

	public List<SellerVO> selectAllStores() throws Exception;
	
	public String find_pwd_Result(MemberVO member) throws DataAccessException;

	public List<SellerVO> selectSearchStores(Map<String, String> listMap) throws Exception;

	public List<SellerVO> selectsearcharea(String area) throws Exception;

	public StoreVO selectstoreInfo(String seller_id) throws Exception;

	public List<ProductVO> selectMenu() throws Exception;

	public List<ReviewVO> selectReview() throws Exception;

	public int updatereviewlike(int reviewnum) throws Exception;

	public String selectreviewlike(int reviewnum) throws Exception;

	public List<ReviewVO> selectReviewavgsum() throws Exception;

	public int addwish(Map<String, String> listMap) throws DataAccessException;

	public List<WishVO> selectwish(String user_id) throws Exception;

	public int delwish(Map<String, String> listMap) throws DataAccessException;

	public List selectwishsum() throws DataAccessException;

	// ����
	public ReservVO selectStoreInfo(String seller_id) throws Exception;

	// ȸ������
	public int addMember(MemberVO memberVO) throws DataAccessException;

	// �α���
	public MemberVO login(MemberVO member) throws DataAccessException;
}
