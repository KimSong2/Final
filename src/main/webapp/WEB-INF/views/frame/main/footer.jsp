<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String a = request.getParameter("isalert");	
	if(a==null){a="false";};
	if( a.equals("true")){%>
		<script> alert("로그인을 해주세요")</script>		
<% }else if(a.equals("login")){%>
		<script> alert("로그인에 성공하셨습니다")</script>
<% }else if(a.equals("logout")){%>	
		<script> alert("로그아웃 하셨습니다")</script>
<% }%>
	<ul id="footer-1stul">
        <li><a href="${pageContext.request.contextPath}/gomain">Déng Nuri</a></li>
      </ul>
      <ul>
        <li>
          <p>대표 : 김송이</p>
        </li>
        <li>
          <p>전화번호 : 010-1234-5678</p>
        </li>
        <li>
          <p>이메일 : abcde@abcdef.com</p>
        </li>
        <li>
          <p>팩스번호 : 02-1234-5678</p>
        </li>
        <li>
          <p>영업시간 : 00:00~23:59</p>
        </li>
        <li>
          <p>주소 : 서울특별시 구로구 구디동123-4</p>
        </li>
        <li>
          <p><a href="${pageContext.request.contextPath}/question">문의하기</a> </p>
        </li>
      </ul>
      <ul id="social">
        <li><a href="https://www.facebook.com" target='_blank'><img src="https://i.ibb.co/LrVMXNR/social-fb.png" alt=""></a></li>
        <li><a href="https://twitter.com/?lang=ko" target='_blank'><img src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt=""></a></li>
        <li><a href="https://kr.linkedin.com" target='_blank'><img src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt=""></a></li>
      </ul>
