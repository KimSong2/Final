package com.goodee.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;


// 주의 : 스프링에서 제공하는 Model 및 여러 어노테이션 기능들을 사용할 수 없다.
public class MypageInterceptor1 implements HandlerInterceptor {
	
	// Controller 의 메서드가 호출되기 전에 호출되는 메서드
	// false를 반환하면 요청 처리에 대한 진행이 중단된다.
				// model 사용 불가   request. response만 사용!!!!!!!!!!!!
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
				
		if(session.getAttribute("user") != null) {
			return true;
		}else {
			System.out.println("여기는 세션없는 쇼핑인터셉터");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			
			String beforeURL = request.getHeader("referer"); String[] urlStr =
			beforeURL.split("\\?"); response.sendRedirect(request.getContextPath()+"/gomain?isalert=true");
			 
			
//			PrintWriter printwriter = response.getWriter();
//			printwriter.print("<script>alert('로그인을 해주세요'); history.go(-1);</script>");
//			printwriter.flush();
//			printwriter.close();
			//session.invalidate();
			
			/* response.sendRedirect(request.getContextPath()+"/gomain2"); */
			return false;
		}
	}
	
	/*
	 * // Controller의 메서드가 호출되고 난 후에 호출된다.
	 * 
	 * @Override public void postHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler, ModelAndView modelAndView)
	 * throws Exception { System.out.println("TestInterceptor1 - postHandle"); }
	 * 
	 * // View 처리까지 완료되면 호출된다.
	 * 
	 * @Override public void afterCompletion(HttpServletRequest request,
	 * HttpServletResponse response, Object handler, Exception ex) throws Exception
	 * { System.out.println("TestInterceptor1 - afterCompletion"); }
	 */
}