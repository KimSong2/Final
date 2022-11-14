<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
  <style>
 
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
    body{
        background-color: #f5ebe0;
    }
	/* 헤더 관련 css*/
	 header {
      z-index: 100;
      background-color: #f5ebe0;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: space-between;
      width: 100vw;
      height: 100%;
    }
	
    nav div {
      width: 100%;
      height: 100%;
    }
	
	
    

    #container {
      position: relative;
      width: 100%;
      height: 100%;
      min-height: 100vh;
      display: grid;
      grid-template-rows: 70px 1fr 70px;
      grid-template-columns: 1fr;
    }

    main {
        margin-top: 20px;
      width: 100%;
      background-color: #f5ebe0;
	overflow : scroll;
    }
 ::-webkit-scrollbar {
display: none;
}
      
    html {
      scroll-behavior: smooth;
    }
   .art1{
    width: 80%;
    margin: 0 auto;
    border-top: 2px solid black;
   }
   .art2{
    width: 60%;
    margin: 0 auto;
    height: 50px;
    background-color: black;
    color: white;
    text-align: center;
    
   }
  
   .art3-container{
    width: 59.9%;
    margin: 0 auto;
    display: flex;
    border: 1px solid black;
    height: 100px;
    align-items: center;
    overflow: hidden;
   }
  .art3-container-span{
    display: inline-block;
    width: 50px;
    text-align: center;
    border: 2px solid darkcyan;
    color: darkcyan;
    border-radius: 1rem;
  }
  .art3-first{
    width: 100%;
    min-width: 200px;
    margin-left: 40px;
     white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .art3-first a{
  margin-left : 10px;
  }
  .art3-second{
    width: 1300px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .art3-third{
    text-align: right;
    width: 100%;
    margin-right: 30px;
  }

  </style>
</head>

<body>

  <div id="container">
    <header>
      <%@ include file="../frame/mypage/header.jsp" %>
    </header>
   <main>
    <article class="art1">
        
    </article>
    <article class="art2">
        <h2>공지사항</h2>
    </article>
<c:forEach var="item" items="${list}">
     
      <div class="art3-container">
      
        <div class="art3-first"><span class="art3-container-span">제목</span>
         <a href="${pageContext.request.contextPath}/noticedetail/${item.boardId}">${item.boardTitle }</a></div>
        <div class="art3-second">
         <a href="${pageContext.request.contextPath}/noticedetail/${item.boardId}">${item.boardContent}</a>
        </div>
        
        <div class="art3-third">
      ${item.boardDate }
      </div>
      </div>
  
    </c:forEach>
   </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>