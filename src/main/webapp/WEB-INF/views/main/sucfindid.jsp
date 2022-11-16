<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fyiyg55rlb"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
  <title>Document</title>
  <style type="text/css">		 
	    html,
    body,
    header,
    main,
    footer,
    section,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    p,
    a,
    ul,
    li,
    nav {
      font-family: 'Noto Sans KR', sans-serif;
      margin: 0;
      padding: 0;
    }

    body {
      position: relative;
 
    }

	button{
		cursor:pointer;
	}
    #container {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    display: grid;
                    grid-template-rows: 70px 1fr 70px;
                    grid-template-columns: 1fr;
                }


                main {
                    width: 100%;
                    background-color: #f5ebe0;

                }

               section {
                    width: 50vw;
                    min-height: 82vh;
                    margin: 0 auto;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }

                #sec1>h2 {
                    padding: 2vh;
                }

                .suc_container {
                    
                    margin: 0 auto;
                    display: flex;
                    flex-direction: column;
                    gap: 2vh;
                }

                .suc_info{
                    display: flex;
    flex-direction: row;
                }

                .info_img{
                    width: 22%;
                }

                .info_p {
                    display: flex;
    flex-direction: column;
    width: 100%;
    gap:1vh;
                }

                .info_name,.info_mail{
                    display: flex;
    flex-direction: row;
    justify-content: space-between;
                }
                .info_id{
                    display: flex;
    flex-direction: row;
    justify-content:flex-end;
    
                }
                
                .suc_a{
                    display: flex;
    justify-content: center;
                }
                
                .suc_a>a{
                    background: black;
    color: white;
    padding: 2px 20px;

                }
  	
  </style>
</head>

<body>
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
    <main>
    <section id="sec1">
                        
                         <h2>고객님 아이디 찾기가 완료 되었습니다.</h2>
                        <c:choose>
                        <c:when test="${not empty vo}">
                      
                      
                      
                        <div class="suc_container">
                            <div class="suc_p">
                                <p>저희 쇼핑몰를 이용해주셔서 감사합니다.</p>
          						<p>다음정보로 가입된 아이디가 총 ${count}개 있습니다.</p>
                            </div>
                            <c:forEach var="vo" items="${vo}" varStatus="status">
                             
                            	<div class="suc_info">
                                <div class="info_p">
                                    <div class="info_name">
                                        <p class="p1">이름</p>
                                        
                                        <p class="p2">${vo.memName }</p>
                                        
                                    </div>
                                    <div class="info_mail">
                                        <p class="p1">이메일</p>
                                        <p class="p2">${vo.memEmail }</p>
                                    </div>
                                    <div class="info_id">
                                    <c:set var="id" value="${vo.memId }"/>
                                        <input type="radio" name="" id="" checked><p><c:out value="${fn:substring(id, 0, fn:length(id) - 3)}" /> ***</p>
                                    </div>
                                    
                                </div>
                                
                            </div>
                           </c:forEach>
                           <div class="suc_a">
                           <a href="${pageContext.request.contextPath }/findpw">비밀번호 재설정</a>
                                    </div>
                        </div>
                       
                       </c:when>
                       <c:when test="${empty vo}">
                      
                        <div class="suc_container">
                            <div class="suc_p" style="display: flex; flex-direction: column; justify-content: center; align-items: center">
                                <p>저희 쇼핑몰를 이용해주셔서 감사합니다.</p>
                                <p>다음정보로 가입된 아이디가 없습니다.</p>
                                 <a href="${pageContext.request.contextPath}/membership" style="font-size:13px">회원 가입</a>
                            </div>
                            
                            
                          
                          
                        </div>
                       </c:when>
                      </c:choose>
                    </section>
    </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
 
</body>

</html>