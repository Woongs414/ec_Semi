package com.spring.ec.user.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ec.seller.vo.StoreVO;
import com.spring.ec.user.service.UserService;
import com.spring.ec.user.vo.BoardVO;
import com.spring.ec.user.vo.CommentVO;
import com.spring.ec.user.vo.ImageVO;
import com.spring.ec.user.vo.MemberVO;
import com.spring.ec.user.vo.ReservVO;

@Controller("userController")
public class UserControllerImpl implements UserController  {
	private static final Logger logger = LoggerFactory.getLogger(UserControllerImpl.class);
	private static final String U_IMAGE_REPO="C:\\board\\u_board_imagefile";
	public static final int pagePerList = 10;
	public static final int pagingCount = 10;
	@Autowired
	private UserService userService;
	@Autowired
	MemberVO memberVO;
	@Autowired
	BoardVO boardVO;
	@Autowired
	CommentVO commentVO;
	@Autowired
	ReservVO reservVO;
	
	//?????? ?????????
	@Override
	@RequestMapping(value = "/main.do" , method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	// ????????? ????????? ?????????
	@Override
	@RequestMapping(value = "/user/u_board", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listBoards(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		int boardCount = userService.allListCount();
		int displayNum = 10;
		int page = 0;
		if(request.getParameter("page") != null){
		page = Integer.parseInt(request.getParameter("page"));
		}else {
		page = 1;
		}
		int endPage = (int)(Math.ceil(page/(double)displayNum)* displayNum);
		int tempEndPage = (int)(Math.ceil(boardCount/(double)displayNum));
		int startPage = (endPage-displayNum) + 1;
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		boolean prev = startPage == 1? false : true;
		boolean next = endPage*displayNum >= boardCount ? false : true;
		
		Map paging = new HashMap();
		paging.put("boardCount", boardCount);
		paging.put("displayNum", displayNum);
		paging.put("startPage", startPage);
		paging.put("nowPage", page);
		paging.put("endPage", endPage);
		paging.put("prev", prev);
		paging.put("next", next);
		List boardsList = userService.listBoards(page);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("paging", paging);
		mav.addObject("boardsList", boardsList);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/u_board/eatpl", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listEatBoards(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		int boardCount = userService.eatListCount();
		int displayNum = 10;
		int page = 0;
		if(request.getParameter("page") != null){
		page = Integer.parseInt(request.getParameter("page"));
		}else {
		page = 1;
		}
		int endPage = (int)(Math.ceil(page/(double)displayNum)* displayNum);
		int tempEndPage = (int)(Math.ceil(boardCount/(double)displayNum));
		int startPage = (endPage-displayNum) + 1;
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		boolean prev = startPage == 1? false : true;
		boolean next = endPage*displayNum >= boardCount ? false : true;
		
		Map paging = new HashMap();
		paging.put("boardCount", boardCount);
		paging.put("displayNum", displayNum);
		paging.put("startPage", startPage);
		paging.put("nowPage", page);
		paging.put("endPage", endPage);
		paging.put("prev", prev);
		paging.put("next", next);
		List boardsList = userService.eatListBoards(page);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("paging", paging);
		mav.addObject("boardsList", boardsList);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/u_board/seepl", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listSeeBoards(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		
		int boardCount = userService.seeListCount();
		int displayNum = 10;
		int page = 0;
		if(request.getParameter("page") != null){
		page = Integer.parseInt(request.getParameter("page"));
		}else {
		page = 1;
		}
		int endPage = (int)(Math.ceil(page/(double)displayNum)* displayNum);
		int tempEndPage = (int)(Math.ceil(boardCount/(double)displayNum));
		int startPage = (endPage-displayNum) + 1;
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		boolean prev = startPage == 1? false : true;
		boolean next = endPage*displayNum >= boardCount ? false : true;
		
		Map paging = new HashMap();
		paging.put("boardCount", boardCount);
		paging.put("displayNum", displayNum);
		paging.put("startPage", startPage);
		paging.put("nowPage", page);
		paging.put("endPage", endPage);
		paging.put("prev", prev);
		paging.put("next", next);
		List boardsList = userService.seeListBoards(page);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("paging", paging);
		mav.addObject("boardsList", boardsList);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/u_board/u_boardView", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView viewboard(@RequestParam("list_num") int list_num, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		userService.addHits(list_num);
		BoardVO board = userService.viewBoard(list_num);
		List commentsList = userService.listComments(list_num);
		ModelAndView mav = new ModelAndView();
//		HttpSession session = request.getSession();
//		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		mav.setViewName(viewName);
		mav.addObject("board", board);
		mav.addObject("comments", commentsList);
		return mav;
	}

	@Override
	@RequestMapping(value = "/user/u_board/boardForm", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView boardform(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/board/addNewboard", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewBoard(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
	  multipartRequest.setCharacterEncoding("utf-8");
	  String image_fileName = null;
	  Map boardMap = new HashMap();
	  Enumeration enu = multipartRequest.getParameterNames();
	  while(enu.hasMoreElements()) { 
	  String name = (String)enu.nextElement();
	  String value = multipartRequest.getParameter(name);
	  boardMap.put(name, value); 
	  }
	  System.out.println(multipartRequest.getParameter("category_code"));
	  int category_code = Integer.parseInt(multipartRequest.getParameter("category_code"));
	  
	  String category = null;
	  if(category_code == 1) {
		  category = "eatpl";
	  }else if(category_code == 2) {
		  category = "seepl";
	  }
	  image_fileName = upload(multipartRequest);
	  System.out.println("conroller=" + image_fileName);
	  HttpSession session = multipartRequest.getSession();
	  MemberVO memberVO = (MemberVO)session.getAttribute("member");
//	  String user_id = memberVO.getUser_id();
	  boardMap.put("user_id", "test1");
	  boardMap.put("parent_num", 0);
	  boardMap.put("category_code", category_code);
	  boardMap.put("image_fileName", image_fileName);
	  String message;
	  ResponseEntity resEnt = null;
	  HttpHeaders responseHeaders = new HttpHeaders();
	  responseHeaders.add("Content-Type", "text/html; charset=utf-8"); 
	  try {
		  int list_num = userService.addNewBoard(boardMap);
		  System.out.println(list_num);
		  if(image_fileName != null && image_fileName.length() != 0) {
			  File srcFile = new File(U_IMAGE_REPO + "\\" + "temp" + "\\" + image_fileName);
			  File destDir = new File(U_IMAGE_REPO + "\\" + list_num);
			  FileUtils.moveFileToDirectory(srcFile, destDir, true);
		  }
		  message = "<script>";
			message += " alert('????????? ??????????????????.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/user/u_board'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	  } catch (Exception e) {
		  File srcFile = new File(U_IMAGE_REPO + "\\" + "temp" + "\\" + image_fileName);
			srcFile.delete();

			message = "<script>";
			message += " alert('????????? ??????????????????. ?????? ????????? ?????????');";
			message += " location.href='" + multipartRequest.getContextPath() + "/user/u_board'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
	  }	  
	  return resEnt;
	}
	
	@Override
	@RequestMapping(value = "/u_board/addcomment", method = RequestMethod.POST)
	public ModelAndView addComment(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		  Map commentMap = new HashMap(); 
		  String comment_id = request.getParameter("comment_id"); 
		  String comments = request.getParameter("comments"); 
		  int list_num =Integer.parseInt(request.getParameter("list_num"));
		  commentMap.put("comment_id", "test1"); 
		  commentMap.put("comments", comments);
		  commentMap.put("list_num", list_num); 
		  commentMap.put("parent_num", "0");
		  userService.addNewComment(commentMap);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user/u_board/u_boardView?list_num="+list_num);
		return mav; 
	}
	
	private String upload(MultipartHttpServletRequest multipartRequest)throws Exception{
		String image_fileName = null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			image_fileName = mFile.getOriginalFilename();
			System.out.println("upload="+image_fileName);
			File file = new File(U_IMAGE_REPO + "\\" + "temp" + "\\" + fileName);
			if(mFile.getSize() !=0) {
				if(!file.exists()) {
					file.getParentFile().mkdirs();
					mFile.transferTo(new File(U_IMAGE_REPO + "\\" + "temp" + "\\" + image_fileName));
				}
			}
		}
		return image_fileName;
	}
	//????????????
	@Override
	@RequestMapping(value = "/category.do", method = RequestMethod.GET)
	public ModelAndView category(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = "/category/categorymain";
		List StoreList = userService.selectAllStores();
		List MenuList = userService.selectMenu();
		List ReviewList = userService.selectReview();
		List Reviewavgsum = userService.selectReviewavgsum();
		List wishList= null;
		HttpSession session = request.getSession();
		
		
		if(session.getAttribute("member") != null) {
			MemberVO mm = (MemberVO) session.getAttribute("member");
			wishList = userService.selectwish(mm.getUser_id());
		}
		
		List wishsum = userService.selectwishsum();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("StoreList", StoreList);
		mav.addObject("menuList", MenuList);
		mav.addObject("reviewList", ReviewList);
		mav.addObject("reviewavgsum", Reviewavgsum);
		mav.addObject("wishList", wishList);
		mav.addObject("wishsum", wishsum);
		return mav;
	}

	/*??????*/
	@Override
	@RequestMapping(value = "/searchcategory.do", method = RequestMethod.GET)
	public ModelAndView searchcategory(@RequestParam(value = "search") String search,@RequestParam(value = "kind") String kind,@RequestParam(value = "area") String area, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = "/category/searchcategory";
		ModelAndView mav = new ModelAndView(viewName);
		List<String> searchword = Arrays.asList(search.split(" "));
		Map<String, String> listMap = new HashMap<String, String>();
		for (int i = 0; i < searchword.size(); i++) {
			listMap.put("key0" + (i + 1), searchword.get(i));

		}
		
		if(area == null || area.equals("null") ) {
			mav.setViewName("redirect:/category.do");
		} else {
			listMap.put("area", area);
		}
		
		if (area.equals("null") && kind.equals("null") && search == null ) {
			mav.setViewName("redirect:/category.do");
		}
		
		
		List StoreList = userService.selectSearchStores(listMap);
		List MenuList = userService.selectMenu();
		List ReviewList = userService.selectReview();
		List Reviewavgsum = userService.selectReviewavgsum();
		

		mav.addObject("StoreList", StoreList);
		mav.addObject("menuList", MenuList);
		mav.addObject("reviewList", ReviewList);
		mav.addObject("reviewavgsum", Reviewavgsum);
		return mav;
	}
	
	
	/*????????????*/
	@Override
	@RequestMapping(value = "/storeInfo.do", method = RequestMethod.GET)
	public ModelAndView storeInfo(@RequestParam(value = "seller_id") String seller_id, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = "/category/storeInfo";
		//Map<String, String> listMap = new HashMap<String, String>();

		StoreVO StoreList = userService.selectstoreInfo(seller_id);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("StoreList", StoreList);
		return mav;
	}
	
	
	/* ?????? ????????? up*/
	@Override
	@RequestMapping(value = "/reviewlike.do", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody String reviewlike(@RequestParam(value = "review_num") int reviewnum, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		userService.updatereviewlike(reviewnum);
		String result = userService.selectreviewlike(reviewnum);
		return result;
	}
	
	//?????????
	@Override
	@RequestMapping(value="/addwish.do", method = RequestMethod.POST)
	public @ResponseBody String addwish(@RequestParam(value = "seller_id") String seller_id, @RequestParam(value = "user_id") String user_id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		Map<String, String> listMap = new HashMap<String, String>();
		listMap.put("seller_id", seller_id);
		listMap.put("user_id", user_id);
		int result = userService.addwish(listMap);
		String state ="";
		if(result == 1) {
			state = "true";
		} else {
			state = "false";
		}
		return state;
	}
	
	//?????????
	@Override
	@RequestMapping(value="/delwish.do", method = RequestMethod.POST)
	public @ResponseBody String delwish(@RequestParam(value = "seller_id") String seller_id, @RequestParam(value = "user_id") String user_id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		Map<String, String> listMap = new HashMap<String, String>();
		listMap.put("seller_id", seller_id);
		listMap.put("user_id", user_id);
		int result = userService.delwish(listMap);
		String state ="";
		if(result == 1) {
			state = "false";
		} else {
			state = "true";
		}
		return state;
	}
	
	//???????????????
	@Override
	@RequestMapping(value = "/reservation.do" , method = {RequestMethod.POST, RequestMethod.GET})
	   public ModelAndView reservation(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		String seller_id = "stest002";
		ReservVO reservInfo = userService.selectStoreInfo(seller_id);
		ModelAndView mav = new ModelAndView();		
		mav.setViewName(viewName);
		mav.addObject("reservInfo", reservInfo);
		return mav;
	   }
	@Override
	@RequestMapping(value = "/reservCheck" , method = {RequestMethod.POST, RequestMethod.GET})
	   public ModelAndView reservCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	   }
	
	//?????????
	@RequestMapping(value = "/user/loginForm.do", method = RequestMethod.GET)
	public ModelAndView loginform(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping(value = "/user/memberForm_main.do", method = RequestMethod.GET)
	public ModelAndView memberform_main(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
		
	}
	@RequestMapping(value = "/user/memberForm_udetail.do", method = RequestMethod.GET)
	public ModelAndView memberform_udetail(@RequestParam(value = "result", required = false) String result,
			/*????????????????????????(value="result") ?????????????????????????????????(String result) */	
		@RequestParam(value = "action", required = false) String action, 
		HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//String viewName = getViewName(request); interceptor??????????????? ?????? getviewName????????????
		String viewName = (String)request.getAttribute("viewName"); /*intercepotor getviewName???????????????*/
		HttpSession session = request.getSession();  /*session?????? ???????????? viewName?????? */
		session.setAttribute("action", action); /*session?????? ???????????? action??? ??? ?????? */
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result); /*ModelAndView?????? ???????????? ??? ??????*/
		mav.setViewName(viewName);
		return mav;	 /* ModelAndView?????? ???????????? ?????? ?????? */
	}
	@Override
	@RequestMapping(value="/user/login.do",method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, 
			RedirectAttributes rAttr, 
			HttpServletRequest request, 
			HttpServletResponse response)throws Exception{
		ModelAndView mav= new ModelAndView();
		memberVO = userService.login(member);
		if(memberVO != null) { /*DB??? ?????? ?????? ????????????????????? */
			HttpSession session = request.getSession();
			session.setAttribute("member",memberVO);
			session.setAttribute("isLogOn", true);
			String action =(String) session.getAttribute("action");
			session.removeAttribute("action");
			if(action!=null) {
				mav.setViewName("redirect:"+ action); /* action????????? ???????????? */
			}else {
				mav.setViewName("redirect:/main.do");  /*????????? ?????????*/
			}
		}else {
			rAttr.addFlashAttribute("result", "loginFailed"); /*login.jsp??? loginFailed <choose>?????? ?????? */
			mav.setViewName("redirect:/user/loginForm.do");   /* login.jsp redirect?????? */
		}
		return mav;
	}
	@Override
	@RequestMapping(value = "/user/u_regadmin.do" , method = RequestMethod.GET)
	public ModelAndView regadmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value="/user/logout.do",method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav= new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}

	@Override
	@RequestMapping(value="/user/addMember.do",method=RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		int result =0;
		result= userService.addMember(member);
		ModelAndView mav= new ModelAndView("redirect:/main.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/find_id.do" , method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView find_id(HttpServletRequest request, HttpServletResponse response) throws Exception {
/*interceptor?????? gitviewname()????????? ????????? ?????????(viewName)??? setAttribute?????? getAttribute????????? */
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/find_id_Result.do", method = RequestMethod.POST)
	public ModelAndView find_id_Result(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
	
		String user_id = userService.find_id_Result(member);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("user_id",user_id);
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/find_pwd.do" , method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView find_pwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
/*interceptor?????? gitviewname()????????? ????????? ?????????(viewName)??? setAttribute?????? getAttribute????????? */
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value = "/user/find_pwd_Result.do", method = RequestMethod.POST)
	public ModelAndView find_pwd_Result(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
	
		String user_pwd = userService.find_pwd_Result(member);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("user_pwd",user_pwd);
		mav.setViewName(viewName);
		return mav;
	}
	
	//???????????????
	
		@RequestMapping(value = "/mypage.do" , method = RequestMethod.GET)
		   public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = "/mypage";
			ModelAndView mav = new ModelAndView(viewName);
			return mav;
		   }
		
		
		@RequestMapping(value = "/board/myplist.do" , method = RequestMethod.GET)
		public ModelAndView myplist(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
		
		@RequestMapping(value = "/mypage/uReview.do" , method = RequestMethod.GET)
		public ModelAndView uReview(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
		@RequestMapping(value = "/mypage/uBook.do" , method = RequestMethod.GET)
		public ModelAndView uBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
		
		@RequestMapping(value = "/mypage/uLike.do" , method = RequestMethod.GET)
		public ModelAndView uLike(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
		
		@RequestMapping(value = "/mypage/uAsk.do" , method = RequestMethod.GET)
		public ModelAndView uAsk(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
		
		@RequestMapping(value = "/mypage/recent_view.do" , method = RequestMethod.GET)
		   public ModelAndView recentView(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = "/mypage/recent_view";
			ModelAndView mav = new ModelAndView(viewName);
			return mav;
		   }
}
