package com.goodee.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.HotelService;
import com.goodee.vo.HotelDetailResVO;
import com.goodee.vo.HotelQnaVO;
import com.goodee.vo.HotelResVO;
import com.goodee.vo.HotelReviewVO;
import com.goodee.vo.HotelRoomVO;
import com.goodee.vo.ProductboardVO;

@Controller
public class HotelController {
	
	private HotelService service;
	
	public HotelController(HotelService service) {
		super();
		this.service = service;
	}
	
	//hotelmain에서 hotellist로 넘어가는 컨트롤러
	//메인에서 지역구와 일자를 선택했을 때 선택한 지역구에 해당하는 호텔의 목록이 넘어옴
		
	@GetMapping("golist/{startDate}/{endDate}/{cate}")
	public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, @PathVariable("cate") String[] category,
						Model model) {
		
		String stringcate = Arrays.toString(category);

		
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		
		service.getHotelList(model, category, startdate, enddate);
		
		return "hotel/hotellist";
	}
			
	@GetMapping("godetail/{hotelId}/{startDate}/{endDate}")
	public String godetail(@PathVariable("hotelId") int hotelId, @PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, Model model) {
		
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		service.detailHotelList(model, hotelId, startdate, enddate);
		
		return "hotel/hoteldetail";
	}
		
		@GetMapping("goreserve/{hotelId}/{startdate}/{enddate}")
		public String goreserve(@PathVariable("hotelId") int hotelId,
								@PathVariable("startdate") String startdate,
								@PathVariable("enddate") String enddate,
								Model model,HttpSession session) {
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			service.goreserve(hotelId,model,session, startdate, enddate);
			return "hotel/hotelreserve";
		}
		
		@PostMapping("gethotelreview")
		@ResponseBody
		public List<HotelReviewVO> getHotelReview(@RequestBody HotelReviewVO vo){
	        return service.getHotelReview(vo);
	    }
		
		@PostMapping("gethotelqna")
		@ResponseBody
		public List<HotelQnaVO> getHotelQna(@RequestBody HotelQnaVO vo){
	        return service.getHotelQna(vo);
	    }
		@PostMapping("insertHotelReview")
	    public String insertHotelReview(HotelReviewVO vo, HttpSession session) { 
	        service.insertHotelReview(vo,session);
	        return "redirect:/myhotelres";
	    }
		@PostMapping("inserthotelqna")
		@ResponseBody
		public void insertHotelQna(@RequestBody HotelQnaVO vo){
			service.insertHotelQna(vo);
	    }
		@PostMapping("getMoreHotelReview")
		@ResponseBody
		public List<HotelReviewVO> getMoreHotelReview(@RequestBody Map<String, String> map) {
			int page = Integer.parseInt(map.get("page"));
			String id = map.get("id");
			return service.getMoreHotelReview(id, page);
		}
		
		@PostMapping("getMoreHotelQna")
		@ResponseBody
		public List<HotelQnaVO> getMoreHotelQna(@RequestBody Map<String, String> map) {
			int page = Integer.parseInt(map.get("page"));
			String id = map.get("id");
			return service.getMoreHotelQna(id, page);
		}
		
		@PostMapping("getroominfo")
		@ResponseBody
		public HotelRoomVO getRoomInfo(@RequestBody HotelRoomVO vo){
			System.out.println(vo.getRoomId());
			return service.getRoomInfo(vo);
	    }
		
		@GetMapping("myhotelres/{startdate}/{enddate}")
		public String resSuccess(@PathVariable String startdate, 
								@PathVariable String enddate,
								HotelDetailResVO vo, HotelResVO vo1,
								HttpSession session) {
			vo.setResStart(startdate);
			vo.setResEnd(enddate);
			System.out.println(vo1.getResMsg());
			
			service.resSuccess(vo,vo1,session);
			
			return "redirect:/myhotelres";
		}
		
		@GetMapping("resCancel/{resDetailNum}")
		public String resCancel(@PathVariable int resDetailNum) {
			service.resCancel(resDetailNum);
			return "redirect:/myhotelres";
		}
		
		
		
}
