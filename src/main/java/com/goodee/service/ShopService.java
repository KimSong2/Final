package com.goodee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MemberDAO;
import com.goodee.dao.ShopDAO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.OrderVO;
import com.goodee.vo.OrderdetailVO;
import com.goodee.vo.ProductboardVO;
import com.goodee.vo.ShopVO;
import com.goodee.vo.WishVO;

@Service
public class ShopService {
	private ShopDAO dao;
	private MemberDAO mbdao;
		
	public ShopService(ShopDAO dao, MemberDAO mbdao) {
		super();
		this.dao = dao;
		this.mbdao = mbdao;
	}

	
	  public void getProductList(Model model) { model.addAttribute("list",
	  dao.getProductList()); }
	 
	public void getCateList(String category, Model model) {
		
		
//		Pageutil test = new Pageutil();
//		System.out.println("-------------------------");
//		System.out.println(test.test());
//		model.addAttribute("list", dao.getCateList(category));
		model.addAttribute("category", category);
	}
	
	//임싯 생성
	public void getCateList2(String category, Model model) {
		model.addAttribute("category", category);
	}
	
	
	
	public void getListById(String id, Model model) {
		
		model.addAttribute("qna", dao.getQna(id));
		model.addAttribute("qnacount", dao.getQnaCount(id));
		model.addAttribute("reviews", dao.getReview(id));
		model.addAttribute("reviewcount", dao.getReviewCount(id));
		model.addAttribute("option", dao.getOptionById(id));
		model.addAttribute("list", dao.getListById(id));
	}
	public void getListByIdS(String id, Model model,HttpSession session) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = mbdao.getmemberinfo(vo1);
		
		model.addAttribute("separateVO",mbdao.separate(vo2)); 
		model.addAttribute("user", vo2);
		model.addAttribute("list", dao.getListById(id));
	}
	
	public List<ProductboardVO> getReviewMore(String id,int page) {
		return dao.getReviewMore(id, page);
	}
	public List<ProductboardVO> getQnaMore(String id,int page) {
		return dao.getQnaMore(id, page);
	}
	public void insertReview(ProductboardVO vo) {
		vo.setProboardCategory("review");
		dao.insertBoard(vo);
	}
	public void insertQna(ProductboardVO vo) {
		vo.setProboardCategory("qna");
		dao.insertBoard(vo);
	}
	
	public void insertWish(WishVO vo) {
		//
		MemberVO mbvo = new MemberVO();
		mbvo.setMemId(vo.getMemId());
		vo.setId( mbdao.getmemberinfo(mbvo).getId());
		
		dao.insertWish(vo);
	}
	public void getWishList(Model model, HttpSession session) {
		//장바구니에는 상품 정보와 위시 정보가 들어있어야 하기때문에 두개를 불러오는것
		// 세션에 저장된 아이디를 통해 memId로 -> id를 불러오는 로직
		MemberVO vo = (MemberVO)session.getAttribute("user");
		int id = mbdao.getmemberinfo(vo).getId();
		
		
		// 위시리스트에 저장된 상품id를 통해 한줄 한줄 상품 정보를 배열형태로 새로 만든 list에 담는 로직
		List<ShopVO> list = new ArrayList<ShopVO>();
		for (int j = 0; j < dao.getWishList(id).size(); j++) {
			String a = Integer.toString(dao.getWishList(id).get(j).getProductId());
       		 	list.add(dao.getListById(a));
		}
		// 배열형태로 담긴 상품 정보를 model로 뿌려줌
		model.addAttribute("wish",dao.getWishList(id));
		model.addAttribute("item", list);
		/*
		 * for(ShopVO a :list) { System.out.println(a.getProductName()); } for(WishVO b
		 * : dao.getWishList(id)) { System.out.println(b.getCount()); }
		 */
	}
	
	public void deletewish(int wishId) {
		dao.deletewish(wishId);
	}
	
	public void insertorder(OrderVO vo, OrderdetailVO vo1,HttpSession session, int point ) {
		MemberVO uservo = (MemberVO)session.getAttribute("user");
		int updatepoint = mbdao.getmemberinfo(uservo).getPoint()+point;
		int id= mbdao.getmemberinfo(uservo).getId();
		
		System.out.println(updatepoint);
		uservo.setId(id);
		uservo.setPoint(updatepoint);
		dao.updatePoint(uservo);
		vo.setId(id);
		dao.insertOrder(vo);
		vo1.setOrderId(vo.getOrderId());
		vo1.setOrderStatus("배송준비중");
		dao.insertOrderdetail(vo1);
	}
	
	public void getMyOrder(HttpSession session, Model model) {
		MemberVO uservo = (MemberVO)session.getAttribute("user");
		int id = mbdao.getmemberinfo(uservo).getId();
		model.addAttribute("list",dao.getMyOrder(id) );
	}

	public Map<String,Object> getPdList(Map<String,Object> inParam) {
		Map<String,Object> dataMap=new HashMap<String,Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();

		inParam.put("stPage", (Integer.parseInt(inParam.get("page").toString())-1)*Integer.parseInt(inParam.get("pageCount").toString()));
		list = dao.getPdList(inParam);
		
		dataMap.put("list", list);
		dataMap.put("total", dao.getPdListCnt(inParam));		
		return dataMap;
	}
	public Map<String,Object> getWlList(Map<String,Object> inParam) {
		Map<String,Object> dataMap=new HashMap<String,Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();

		inParam.put("stPage", (Integer.parseInt(inParam.get("page").toString())-1)*Integer.parseInt(inParam.get("pageCount").toString()));
		list = dao.getWlList(inParam);
		
		dataMap.put("list", list);
		dataMap.put("total", dao.getWlListCnt(inParam));		
		return dataMap;
	}
	public Map<String,Object> getOdList(Map<String,Object> inParam) {
		Map<String,Object> dataMap=new HashMap<String,Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();

		inParam.put("stPage", (Integer.parseInt(inParam.get("page").toString())-1)*Integer.parseInt(inParam.get("pageCount").toString()));
		list = dao.getOdList(inParam);
		
		dataMap.put("list", list);
		dataMap.put("total", dao.getOdListCnt(inParam));		
		return dataMap;
	}
	public void orders(String[] checks, Model model, HttpSession session) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = mbdao.getmemberinfo(vo1);
		
		model.addAttribute("separateVO",mbdao.separate(vo2)); 
		model.addAttribute("user", vo2);
		model.addAttribute("list", dao.ordersInfo(checks));
		model.addAttribute("checks",checks);
	}
	public void deleteWishAll(String[] checks) {
		dao.deleteWishAll(checks);
	}
	public void insertorders(int[] productIds, int[] productCounts, OrderVO vo,
							HttpSession session, int point ) {
		//세션에 저장된 id를 통해 고유번호 추출
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = mbdao.getmemberinfo(vo1);
		
		//orderVO에 유저고유번호 저장
		vo.setId(vo2.getId());
		dao.insertOrder(vo);
		System.out.println( vo.getOrderId());;
		
		OrderdetailVO dvo = new OrderdetailVO();
		dvo.setOrderId(vo.getOrderId()); // 새로뽑아낸 orderId
		dvo.setOrderStatus("배송준비중");
		for (int i = 0; i < productCounts.length; i++) {
			dvo.setProductId(productIds[i]);
			dvo.setProductCount(productCounts[i]);
			int totalprice = dao.getListById2(productIds[i]).getProductPrice()*productCounts[i];
			dvo.setOrderPrice(totalprice);
			dao.insertOrderdetail(dvo);
		}
		
		//포인트 업데이트 로직
		int updatepoint = vo2.getPoint()+point;
		vo2.setPoint(updatepoint);
		dao.updatePoint(vo2);
	}
	public void deleteOrder(int orderId) {
		dao.deleteOrder(orderId);
	}
	public void returnOrder(int orderId) {
		dao.returnOrder(orderId);
	}
}
