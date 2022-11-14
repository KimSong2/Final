package com.goodee.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.service.BoardService;
import com.goodee.service.ShopService;
import com.goodee.service.SuperviserService;
import com.goodee.vo.BoardVO;
import com.goodee.vo.HotelViserVO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.OrderjoinVO;
import com.goodee.vo.ShopVO;

@Controller
public class SuperviserController {

	private SuperviserService superservice;
	private ShopService spservice;
	private BoardService bdservice;
	
	public SuperviserController(SuperviserService superservice, ShopService spservice,BoardService bdservice) {
		super();
		this.superservice = superservice;
		this.spservice = spservice;
		this.bdservice = bdservice;
	}

	
	@GetMapping("viser/main")
	public String viserMain(Model model) {
		/* spservice.getProductList(model); */
		return"superviser/viser-main";
	}
	
	// 상품 추가 
	@GetMapping("viser/shop-add")
	public String addPage() {
		return"/superviser/viser-shop-add";
	}
	
//	@PostMapping("viser/add-success")
//	public String success(ShopVO vo,
//							@RequestParam("thumnail") MultipartFile thumnail,
//							@RequestParam("contImage") MultipartFile contImage) throws IOException {
//		superservice.viseradd(vo, thumnail, contImage);
//		
//			if (!contImage.getOriginalFilename().isEmpty()) {
//				Path path = Paths.get("C:/sample/" + contImage.getOriginalFilename());
//				contImage.transferTo(path);
//				System.out.println(contImage.getOriginalFilename() + "저장이 되었습니다.");
//			} else {
//				System.out.println("에러가 발생헀습니다.");
//			}
//		
//		return "/superviser/viser-main";
//	}
	
	
	   @PostMapping("viser/add-success")
	   public String success(ShopVO vo,@RequestParam("thumnail") MultipartFile thumnail,@RequestParam("contImage") MultipartFile contImage
			   				,@RequestParam("options") String[] opts) throws IllegalStateException, IOException {
		   for (String a : opts) {
			System.out.println(a);
		}		   
	      
	     
	      if (!thumnail.getOriginalFilename().isEmpty()) {
		         Path path = Paths.get("c:/finalprojectimage"+"/shop/"+vo.getProductCategory()+"/"+thumnail.getOriginalFilename());
		         thumnail.transferTo(path);
		         
		         vo.setProductContent("upload"+"/shop/"+vo.getProductCategory()+"/"+thumnail.getOriginalFilename());
		         
		      } else {
		         
		      }
		
	      
	      
	      if (!contImage.getOriginalFilename().isEmpty()) {
	         Path path = Paths.get("c:/finalprojectimage"+"/shop/"+vo.getProductCategory()+"/"+contImage.getOriginalFilename());
	         System.out.println("섬네일 문제1");
	         
	         contImage.transferTo(path);
	         System.out.println("섬네일 문제2");
	         System.out.println(contImage.getOriginalFilename() + "저장이 되었습니다.");
	         vo.setProductImage("upload"+"/shop/"+vo.getProductCategory()+"/"+contImage.getOriginalFilename());
	         System.out.println("너는 왔냐");
	      } else {
	         System.out.println("에러가 발생헀습니다.");
	      }
		
	      
		
		
		
		superservice.viseradd(opts, vo);
		
		System.out.println("아무거나2");
		return "/superviser/viser-main";
	}
	
	// 상품 수정
	@GetMapping("viser/modify/{category}")
	public String modCategory(@PathVariable("category")String category,Model model) {
		spservice.getCateList(category, model);
		return "/superviser/viser-shop-modify";
	}
	
	@PostMapping("getList")
	@ResponseBody
	public Map<String,Object> getPdList(@RequestBody String inParam) {
		JSONParser parser = new JSONParser();
		Map<String,Object> map=new HashMap<String,Object>();
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(inParam);
			map=spservice.getPdList(jsonObject);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
	//상품 삭제
	@GetMapping("viser/delete/{category}")
	public String viserDelete(@PathVariable("category")String category,Model model) {
		spservice.getCateList2(category, model);
		return "/superviser/viser-shop-delete";
	}
	@GetMapping("viser/update/id/{id}")
	public String updateshowid(@PathVariable("id")String id,Model model) {
		spservice.getListById(id, model);
		return "superviser/viser-shop-updateinfo";
	}
	

	@GetMapping("shop/delete/main/{id}")
	   public String deletePage(@PathVariable("id") String id,Model model) {
	      spservice.getListById(id, model);
	      return "/superviser/viser-shop-delete-main";
	      }
	   
	   @GetMapping("delete/success/{productId}")
	   public String deleteProc(@PathVariable int productId) {
	      System.out.println("오나보까");
	      superservice.godelete(productId);
	      return "/superviser/viser-main";
	   }
	

	//상품 수정
	@GetMapping("viser/update")
	public String updateInfo(ShopVO vo) {
		superservice.updateInfo(vo);
		return "superviser/viser-main";
	}
	@GetMapping("viser/notice/delete/{boardCategory}")
	public String noticeDelete(@PathVariable("boardCategory") String boardCategory,Model model,HttpSession session) {
		
		superservice.getList(boardCategory, model, session);
		return "superviser/viser-notice-delete";
	}
	@GetMapping("viser/QNA/delete/{boardCategory}")
	public String QNADelete(@PathVariable("boardCategory") String boardCategory,Model model,HttpSession session) {
		superservice.getList(boardCategory, model, session);
		return "superviser/viser-qna-delete";
	}
	
	@GetMapping("viser/delete/modify")
	public String noticeDeleteModify(BoardVO vo) {
		superservice.deleteBoard(vo);
		return "superviser/viser-main";
	}
	
	@GetMapping("viser/create/modify")
	public String createboard(BoardVO vo) {
		superservice.createboard(vo);
		return "superviser/viser-main";
	}
	@GetMapping("viser/CSOrderInfo/{id}")
	public String getCSOrder(@PathVariable("id") String id,String orderStatus,Model model) {
		superservice.getCSOrder(id,orderStatus, model);
		return "superviser/viser-shop-orderinfo";
	}
	@GetMapping("viser/CSOrderModify")
	public String CSOrderModify(OrderjoinVO vo) {
		superservice.CSOrderModify(vo);
		return "superviser/viser-main";
	}
	@GetMapping("viser/memInfo")
	public String memInfo(MemberVO vo,Model model) {
		superservice.memberInfo(vo, model);
		return "superviser/viser-shop-memName";
	}
	
	@GetMapping("viser/hotelRes")
	public String hotelRes(HotelViserVO hotelviservo, Model model) {
		System.out.println("컨트롤러"+hotelviservo.getMemName());
		superservice.checkRes(hotelviservo, model);
		return "superviser/viser-hotel-res";
	}
	
	
}
