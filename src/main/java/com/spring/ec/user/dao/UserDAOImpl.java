package com.spring.ec.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ec.seller.vo.ProductVO;
import com.spring.ec.seller.vo.SellerVO;
import com.spring.ec.seller.vo.StoreVO;
import com.spring.ec.user.vo.BoardVO;
import com.spring.ec.user.vo.CommentVO;
import com.spring.ec.user.vo.ImageVO;
import com.spring.ec.user.vo.MemberVO;
import com.spring.ec.user.vo.ReservVO;
import com.spring.ec.user.vo.ReviewVO;
import com.spring.ec.user.vo.WishVO;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//먹플리 볼플리
	@Override
	public List selectAllBoardsList(int page) throws DataAccessException{
		page = (page-1)*10;
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectAllBoardsList", page);
		return boardsList;
	}
	
	@Override
	public String find_pwd_Result(MemberVO memberVO) throws DataAccessException {
		String vo = sqlSession.selectOne("mapper.member.find_pwd_Result", memberVO);
		return vo;
	}
	
	@Override
	public List selectEatBoardsList(int page) throws DataAccessException{
		page = (page-1)*10;
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectEatBoardsList", page);

		return boardsList;
	}
	@Override
	public String find_id_Result(MemberVO memberVO) throws DataAccessException {
		String vo = sqlSession.selectOne("mapper.member.find_id_Result", memberVO);
		return vo;
	}
	
	
	@Override
	public List selectSeeBoardsList(int page) throws DataAccessException{
		page = (page-1)*10;
		List<BoardVO> boardsList = sqlSession.selectList("mapper.board.selectSeeBoardsList", page);
		return boardsList;
	}
	
	@Override
	public BoardVO selectBoard(int list_num) throws DataAccessException{
		return sqlSession.selectOne("mapper.board.selectBoard", list_num);
	}
	//이미지 파일 리스트 호출
	@Override
	public List selectImageFileList(int list_num) throws DataAccessException {
		List<ImageVO> imageFileList = null;
		imageFileList = sqlSession.selectList("mapper.board.selectImageFileList", list_num);
		return imageFileList;
	}
	
	@Override
	public void addHits(int list_num)throws DataAccessException{
		sqlSession.update("mapper.board.addHits", list_num);
	}
	
	@Override
	public int insertNewBoard(Map boardMap) throws Exception {
		int list_num = selectNewList_num();
		boardMap.put("list_num", list_num);
		sqlSession.insert("mapper.board.insertNewBoard", boardMap);
		return list_num;
	}
	
	@Override
	public void insertNewImage(Map boardMap) throws DataAccessException {
		String image_fileName = (String)boardMap.get("image_fileName");
		System.out.println("DAO"+image_fileName);
		int list_num = (Integer)boardMap.get("list_num");
		int image_num = selectNewImage_num();
		ImageVO imageVO = new ImageVO();
		imageVO.setImage_num(image_num);
		imageVO.setList_num(list_num);
		imageVO.setOrigin_fileName(image_fileName);
		imageVO.setImage_fileName(image_fileName);
		
		sqlSession.insert("mapper.board.insertNewImage", imageVO);
	}
	
	@Override
	public List selectAllCommentsList(int list_num) throws DataAccessException{
		List<CommentVO> commentsList = sqlSession.selectList("mapper.board.selectAllCommentsList", list_num);
		return commentsList;
	}
	
	@Override
	public int insertNewComment(Map commentMap) throws Exception {
		int comment_num = selectNewComment_num();
		commentMap.put("comment_num", comment_num);
		sqlSession.insert("mapper.board.insertNewComment", commentMap);
		return comment_num;
	}
	
	private int selectNewList_num() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewList_num");
	}
	
	
	private int selectNewImage_num() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewImage_num");
	}
	
	private int selectNewComment_num() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewComment_num");
	}
	@Override
	public int eatBoardPaging() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectEatBoardCount");
	}
	@Override
	public int seeBoardPaging() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectSeeBoardCount");
	}
	
	@Override
	public int allBoardPaging() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectAllBoardCount");
	}
	
	// 카占쌓곤옙
		@Override
		public List<SellerVO> selectAllStores() throws Exception {
			List<SellerVO> articlesList = sqlSession.selectList("mapper.member.selectAllStores");
			return articlesList;
		}
		
		/*�궎�썙�뱶 寃��깋*/
		@Override
		public List<SellerVO> selectSearchStores(Map<String, String> listMap) throws Exception {
			List<SellerVO> articlesList = sqlSession.selectList("mapper.member.selectSearchStores",listMap);
			return articlesList;
		}
		
		/*吏��뿭 寃��깋*/
		@Override
		public List<SellerVO> selectsearcharea(String area) throws Exception {
			List<SellerVO> articlesList = sqlSession.selectList("mapper.member.selectsearcharea",area);
			return articlesList;
		}
		
		/*媛�寃� �긽�꽭 寃��깋*/
		@Override
		public StoreVO selectstoreInfo(String seller_id) throws Exception {
			StoreVO articlesList = sqlSession.selectOne("mapper.member.selectstoreInfo",seller_id);
			return articlesList;
		}
		
		/*硫붾돱寃��깋*/
		@Override
		public List<ProductVO> selectMenu() throws Exception {
			List<ProductVO> articlesList = sqlSession.selectList("mapper.member.selectMenu");
			return articlesList;
		}
		
		/*由щ럭*/
		@Override
		public List<ReviewVO> selectReview() throws Exception {
			List<ReviewVO> articlesList = sqlSession.selectList("mapper.member.selectReview");
			return articlesList;
		}
		
		/*由щ럭 醫뗭븘�슂 up*/
		@Override
		public int updatereviewlike(int review_num) throws Exception {
			int result = sqlSession.update("mapper.member.updatereviewlike", review_num);
			return result;
		}
		
		
		/*由щ럭 醫뗭븘�슂 select*/
		@Override
		public String selectreviewlike(int review_num) throws Exception {
			String result = sqlSession.selectOne("mapper.member.selectreviewlike", review_num);
			return result;
		}
		
		/*由щ럭 蹂꾩젏 �룊洹�,由щ럭媛쒖닔*/
		@Override
		public List<ReviewVO> selectReviewavgsum() throws Exception {
			List<ReviewVO> articlesList = sqlSession.selectList("mapper.member.selectReviewavgsum");
			return articlesList;
		}
		/* 李� 紐⑸줉 異붽�*/
		@Override
		public int addwish(Map<String, String> listMap) throws DataAccessException {
			int result = sqlSession.insert("mapper.member.addwish", listMap);
			return result;
		}
		
		/* 李� 紐⑸줉 �궘�젣*/
		@Override
		public int delwish(Map<String, String> listMap) throws DataAccessException {
			int result = sqlSession.delete("mapper.member.delwish", listMap);
			return result;
		}
		
		
		
		/*濡쒓렇�씤 李� 紐⑸줉 議고쉶*/
		@Override
		public List<WishVO> selectwish(String user_id) throws Exception {
			List<WishVO> articlesList = sqlSession.selectList("mapper.member.selectwish",user_id);
			return articlesList;
		}
		
		/*가게 별 찜개수*/
		@Override
		public List selectwishsum() throws DataAccessException {
			List result = sqlSession.selectList("mapper.member.selectwishsum");
			return result;
		}
	// 예약
	
	@Override 
	public ReservVO selectStoreInfo2(String seller_id) throws DataAccessException{ 
		return sqlSession.selectOne("mapper.reserv.selectStoreInfo", seller_id); 
	}
	//로그인
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException {
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}
	//회원가입
	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}
	
}
