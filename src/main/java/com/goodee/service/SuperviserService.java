package com.goodee.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.goodee.dao.MemberDAO;
import com.goodee.dao.SuperviserDAO;
import com.goodee.vo.BoardVO;
import com.goodee.vo.HotelViserVO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.OrderjoinVO;
import com.goodee.vo.ProductOptionVO;
import com.goodee.vo.ShopVO;

@Service
public class SuperviserService  {
	private SuperviserDAO superdao;
	private MemberDAO dao;
	
	
	public SuperviserService(SuperviserDAO superdao, MemberDAO dao) {
		super();
		this.superdao = superdao;
		this.dao = dao;
	}

	public void viseradd(String[] opts, ShopVO vo){
		superdao.addproc(vo);
		ProductOptionVO opvo = new ProductOptionVO();
		opvo.setProductId(vo.getProductId());
		for(int i = 0 ; i< opts.length; i++) {
			opvo.setOption(opts[i]);
			superdao.addprodoption(opvo);
		}
		 
	}

	
	   public void godelete(int productId) {
		      System.out.println("오나안오나");
		      superdao.godelete(productId);
		   }

	public void updateInfo(ShopVO vo) {
		superdao.updateInfo(vo);
	}
	
	public void deleteBoard(BoardVO vo) {
		superdao.deleteBoard(vo);
	}
	
	public void getList(String boardCategory,Model model,HttpSession session) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = dao.getmemberinfo(vo1);
		model.addAttribute("mem",vo2);
		model.addAttribute("list",superdao.getList(boardCategory));
		
	}
	public void createboard(BoardVO vo) {
		superdao.createboard(vo);
	}
	
	public void getCSOrder(String id,String orderStatus,Model model) {
		
		model.addAttribute("list",superdao.getCSOrder(id,orderStatus));
	}
	public void CSOrderModify(OrderjoinVO vo) {
		superdao.CSOrderModify(vo);
		
	}
	public void memberInfo(MemberVO vo,Model model) {
		
		model.addAttribute("list",superdao.memberInfo(vo));
	}
	
	public void checkRes(HotelViserVO hotelviservo, Model model) {
		model.addAttribute("reslist", superdao.checkRes(hotelviservo));
		System.out.println("서비스"+hotelviservo.getMemName());
		System.out.println("서비스"+hotelviservo.getId());
		System.out.println("데이터는 오는가");
	}
}
