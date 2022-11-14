package com.goodee.service;



import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MemberDAO;
import com.goodee.vo.MemberVO;

@Service
public class MemberService{
	private MemberDAO dao;
	
	public MemberService(MemberDAO dao) {
		super();
		this.dao = dao;
	}

	// 회원가입
	public void membership2(MemberVO vo) {
		dao.insertmembership(vo);
	}
	public boolean ismember1(MemberVO vo) {
		int i = dao.idCheck(vo);
		return (i>0)?true:false;
	}
	public boolean ismember2(MemberVO vo) {
		int i = dao.ismember2(vo);
		return (i>0)?true:false;
	}
	public boolean isadmin(MemberVO vo) {
		int i = dao.isadmin(vo);
		return (i>0)?true:false;
	}
	public int idCheck(MemberVO vo) {
		return dao.idCheck(vo);
	}
	public MemberVO getmemberinfo(MemberVO vo) {
		return dao.getmemberinfo(vo);
	
	}
	public void getmemberinfo(MemberVO vo,HttpSession session, Model model) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = dao.getmemberinfo(vo1);
		model.addAttribute("list",vo2);
		model.addAttribute("separateVO",dao.separate(vo2));
	}
	
	public void updateinfo(MemberVO vo,HttpSession session) {
		MemberVO vo2 = (MemberVO)session.getAttribute("user");
		vo.setMemId(vo2.getMemId());
		dao.updateinfo(vo);
	}
	
	// 이메일 인증 관련 로직
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNumber; 
	// 난수 발생(여러분들 맘대러)
	
		public void makeRandomNumber() {
			// 난수의 범위 111111 ~ 999999 (6자리 난수)
			Random r = new Random();
			int checkNum = r.nextInt(888888) + 111111;
			System.out.println("인증번호 : " + checkNum);
			authNumber = checkNum;
		}
		
		
				//이메일 보낼 양식! 
		public Map<String,String> joinEmail(Map<String, String> email) {
			makeRandomNumber();
			String setFrom = "spdlwhdwls@naver.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
			String toMail = email.get("email");
			String title = "회원 가입 인증 이메일 입니다."; // 이메일 제목 
			String content = 
					"홈페이지를 방문해주셔서 감사합니다." + 	//html 형식으로 작성 ! 
	                "<br><br>" + 
				    "인증 번호는 " + authNumber + "입니다." + 
				    "<br>" + 
				    "해당 인증번호를 인증번호 확인란에 기입하여 주세요."; //이메일 내용 삽입
			mailSend(setFrom, toMail, title, content);
			email.put("authNumber", Integer.toString(authNumber));
			return email;
		}
		
		//이메일 전송 메소드
		public void mailSend(String setFrom, String toMail, String title, String content) { 
			MimeMessage message = mailSender.createMimeMessage();
			// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
				helper.setFrom(setFrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
				helper.setText(content,true);
				mailSender.send(message);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		
		//아이디찾기
				public void findidmail(MemberVO vo, Model model) {
					model.addAttribute("vo",dao.findidmail(vo));
				}
				public void findidphone(MemberVO vo, Model model) {
					model.addAttribute("vo", dao.findidphone(vo));
					
				}
}
