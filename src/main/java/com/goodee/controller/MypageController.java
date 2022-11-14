package com.goodee.controller;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.vo.MailVO;

@Controller
public class MypageController {
	   @Autowired
	   private JavaMailSender mailSender;
	   
	   @GetMapping("mailing")
	   public String email(MailVO vo) throws NullPointerException, UnsupportedEncodingException{
	      
	      try {
	       
	         MimeMessage msg = mailSender.createMimeMessage();
	          
	            // 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)
	            msg.addRecipient(RecipientType.TO, new InternetAddress("kimsong2_0325@naver.com"));
	 
	            /*
	             * createMimeMessage() : MimeMessage객체를 생성시킴 (이것을 이용해서 메시지를 구성한 뒤 메일 발송)
	             * addRecipient() : 메시지의 발신자를 설정 InternetAddress() : 이메일 주소 getReceiveMail() :
	             * 수신자 이메일 주소
	             */
	 
	            // 보내는 사람(이메일주소+이름)
	            // (발신자, 보내는 사람의 이메일 주소와 이름을 담음)
	            // 이메일 발신자
	            msg.addFrom(new InternetAddress[] { new InternetAddress(vo.getSenderMail(), vo.getSenderName()) });
	            
	 
	            // 이메일 제목 (인코딩을 해야 한글이 깨지지 않음)
	            msg.setSubject(vo.getTitle(), "utf-8");
	            // 이메일 본문 (인코딩을 해야 한글이 깨지지 않음)
	            msg.setContent("주문번호 : "+vo.getOrdernumber()+"<br>"            		 
	            			+"문의분류 : "+vo.getQacategory()+"<br>"
	            		    +"문의내용 : "+ vo.getContent(), "text/html; charset=utf-8");

	 
	            // 이메일 보내기
	            mailSender.send(msg);
	      } catch (MessagingException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return "main/question";
	   }
	
	   
}
