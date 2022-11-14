package com.goodee.service;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.lang.model.element.ModuleElement;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;
import com.goodee.dao.MemberDAO;
import com.goodee.vo.HotelDetailResVO;
import com.goodee.vo.HotelQnaVO;
import com.goodee.vo.HotelResVO;
import com.goodee.vo.HotelReviewVO;
import com.goodee.vo.HotelRoomVO;
import com.goodee.vo.HotelVO;
import com.goodee.vo.MemberVO;

@Service
public class HotelService {
	private HotelDAO dao;
	private MemberDAO mbdao;

	public HotelService(HotelDAO dao, MemberDAO mbdao) {
		this.dao = dao;
		this.mbdao = mbdao;
	}
	
	//메인에서 호텔 메인으로 넘어갈 때 랜덤 호텔 출력 서비스
	public void ranHotelList(Model model, Set<Integer> set) {
		model.addAttribute("ranhotel", dao.selectRanHotel(set));

	}
	
	//main에서 list로 페이지 이동할때 지역구 값 받아서 호텔 리스트 불러오는 서비스
	public void getHotelList(Model model, String[] cate, String startdate, String enddate) {

		//지역구에 따른 호텔 리스트
		//dao.selectHotelList(cate);
		
		List<Integer> idlist = new ArrayList<Integer>();
		
		//출력된 호텔의 개수만큼 for문이 반복. 해당 데이터의 hotelid를 출력해서 배열에 저장
		for (int i = 0; i < dao.selectHotelList(cate).size(); i++) {
			idlist.add(dao.selectHotelList(cate).get(i).getHotelId());
		}
		
		model.addAttribute("hotel", dao.selectHotelList(cate));
		model.addAttribute("room", dao.selectroom(idlist));
		model.addAttribute("roomimg", dao.selectRoomImg(idlist));
	}
		
	public void detailHotelList(Model model, int hotelId, String startdate, String enddate) {
		
		List<Integer> roomid = new ArrayList<Integer>();
		
		for (int i = 0; i < dao.detailRoomId(startdate, enddate).size(); i++) {
			System.out.println(dao.detailRoomId(startdate, enddate).get(i).getRoomId());
			roomid.add(dao.detailRoomId(startdate, enddate).get(i).getRoomId());
		}
		
		if(roomid.isEmpty()) {
			model.addAttribute("hotel", dao.detailHotelnotRoomid(hotelId));
		} else {
			model.addAttribute("hotel", dao.detailHotelRoom(hotelId, roomid));
		}
		
		System.out.println("roomid"+roomid);
		System.out.println("hotelid"+hotelId);
		
		
		
		HotelQnaVO vo1 = new HotelQnaVO();
		HotelReviewVO vo2 = new HotelReviewVO();
		
		vo1.setHotelId(hotelId);
		vo2.setHotelId(hotelId);
		
		
		model.addAttribute("hotelqnacount", dao.getHotelQnaCount(vo1));
		model.addAttribute("hotelreviewcount", dao.getHotelReviewCount(vo2));
		
	}
			
		public List<HotelReviewVO> getHotelReview(HotelReviewVO vo){
			return dao.getHotelReview(vo);
		}
		public List<HotelReviewVO> getMoreHotelReview(String id, int page) {
			return dao.getMoreHotelReview(id, page);
		}
		
		public List<HotelQnaVO> getHotelQna(HotelQnaVO vo){
			return dao.getHotelQna(vo);
		}
		public void insertHotelReview(HotelReviewVO vo, HttpSession session){
	         MemberVO mbvo = (MemberVO)session.getAttribute("user");
	         vo.setMemId(mbdao.getmemberinfo(mbvo).getMemId());
	         dao.insertHotelReview(vo);
	      }
		public void insertHotelQna(HotelQnaVO vo){
			dao.insertHotelQna(vo);
		}
		public List<HotelQnaVO> getMoreHotelQna(String id, int page) {
			return dao.getMoreHotelQna(id, page);
		}
		
		public void goreserve(int hotelId,Model model, HttpSession session,  String startdate, String enddate) {
			MemberVO vo1 = (MemberVO)session.getAttribute("user");
			model.addAttribute("user",mbdao.getmemberinfo(vo1));
			model.addAttribute("separateVO",mbdao.separate(mbdao.getmemberinfo(vo1))); 
			
			List<Integer> roomid = new ArrayList<Integer>();
			
			for (int i = 0; i < dao.detailRoomId(startdate, enddate).size(); i++) {
				System.out.println(dao.detailRoomId(startdate, enddate).get(i).getRoomId());
				roomid.add(dao.detailRoomId(startdate, enddate).get(i).getRoomId());
			}
			
			if(roomid.isEmpty()) {
				model.addAttribute("hotel", dao.detailHotelnotRoomid(hotelId));
			} else {
				model.addAttribute("hotel", dao.detailHotelRoom(hotelId, roomid));
			}
		
			
		}
		
		public HotelRoomVO getRoomInfo(HotelRoomVO vo) {
			return dao.getRoomInfo(vo);
		}

		public void resSuccess(HotelDetailResVO vo, HotelResVO vo1, HttpSession session) {
			MemberVO mbvo = (MemberVO)session.getAttribute("user");
			MemberVO mbvo2 = mbdao.getmemberinfo(mbvo);
			
			vo.setResStatus("예약 완료");
			dao.setDetailRes(vo);
			vo1.setResDetailNum(vo.getResDetailNum());
			vo1.setId(mbvo2.getId());
			dao.setRes(vo1);

		}
		public void getMyHotelRes(Model model,HttpSession session){
			MemberVO mbvo = (MemberVO)session.getAttribute("user");
			MemberVO mbvo2 = mbdao.getmemberinfo(mbvo);
			model.addAttribute("list",dao.getMyHotelres(mbvo2));
			model.addAttribute("history",dao.getMyHotelHistoryres(mbvo2));
			model.addAttribute("cancel",dao.getMyHotelCancelres(mbvo2));
		}

		public void resCancel(int resDetailNum) {
			dao.resDetailCancel(resDetailNum);
		}

		
		
}
