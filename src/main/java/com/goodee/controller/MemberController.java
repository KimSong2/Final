package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.MemberService;
import com.goodee.vo.MemberVO;

@Controller
public class MemberController {
	private MemberService mbservice;

	public MemberController(MemberService mbservice) {
		super();
		this.mbservice = mbservice;
	}
	
	@PostMapping("membership2")
	public String membership2(MemberVO vo, HttpSession session) {
		if(!mbservice.ismember1(vo)) {
		mbservice.membership2(vo);
		session.setAttribute("user", vo);
		return "redirect:gomain";
		}else {
			return "main/membershipfail";
		}
	}
	
	@GetMapping("login")
	public String login(@RequestParam("mem_id1") String mem_id, 
						@RequestParam("mem_pw1") String mem_pw,
						HttpSession session) {
	MemberVO vo =new MemberVO();
	vo.setMemId(mem_id);
	vo.setMemPw(mem_pw);
		if(mbservice.ismember2(vo)) {
			mbservice.getmemberinfo(vo);
			session.setAttribute("user",vo);
			return "redirect:gomain2";
		}else if(mbservice.isadmin(vo)){
			return "superviser/viser-main";
		}else {
			return "redirect:gomain";
		}
	}
	
	@GetMapping("logout")
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:gomain2";
	}
	
	@PostMapping("/idcheck")
	@ResponseBody
	public int idcheck(@RequestBody MemberVO vo ) {
		return mbservice.idCheck(vo);
	}
	@GetMapping("userinfo")
	public String userinfo(MemberVO vo,HttpSession session, Model model) {
		mbservice.getmemberinfo(vo,session, model);
		
		return "main/userinfo";
	}
	
	@PostMapping("userupdate")
	public String userupdate(@ModelAttribute MemberVO vo, HttpSession session) {
		mbservice.updateinfo(vo, session);
		return "redirect:/userinfo";
	}
	@GetMapping("mail")
	public String mail() {
		return "main/mailtest";
	}
	
	@PostMapping("/check")
	@ResponseBody
	public Map<String, String> check(@RequestBody Map<String, String> email) {
	    System.out.println("이메일 인증 요청이 들어옴!");
	    System.out.println("이메일 인증 이메일 : " + email.get("email"));
	    
	    return mbservice.joinEmail(email);   
	}

	//아이디찾기
		@GetMapping("/findidmail")
		public String findidmail(MemberVO vo, Model model) {
				mbservice.findidmail(vo, model);
			
			return "main/sucfindid";
		}
		
		@GetMapping("/findidphone")
		public String findidphone(MemberVO vo, Model model) {
				mbservice.findidphone(vo, model);
			
			
			return "main/sucfindid";
		}
		
		@GetMapping("/findmailcheck")
		public String findmailcheck() {
			
			return "main/findpopup";
		}
		
		@PostMapping("/checkId")
		@ResponseBody
		public int checkId(@RequestBody Map<String, String> map) {
		
			if(mbservice.findpw(map) != null) {
				return 1;
			} else {
				return 0;
			}
		       
		}
		
		@GetMapping("/repw")
		public String repw(MemberVO vo) {

			if(mbservice.updatepw(vo)) {
				
				return "main/main";
			} else {
				return "redirect:findpw";
			}
			
		}
		
		@PostMapping("/checkEmail")
		@ResponseBody
		public int checkEmail(@RequestBody Map<String, String> map) {
		
			System.out.println("체크메일"+map.get("email"));
			
			if(mbservice.checkEmail(map.get("email")) != null) {
				System.out.println("메일 있음");
				return 0;
			} else {
				return 1;
			}
		       
		}
}
