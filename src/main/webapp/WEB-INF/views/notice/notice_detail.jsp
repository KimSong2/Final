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
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
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
	
    #container {
      position: relative;
      width: 100%;
      height: 100%;
      min-height : 100vh;
      display: grid;
      grid-template-rows: 70px 1fr 70px;
      grid-template-columns: 1fr;
    }

 
    main {
        margin-top: 20px;
      	width: 100%;
      	background-color: #f5ebe0;

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
    margin-bottom: 5rem;
   }
   .art3{
    width: 60%;
    margin: 0 auto;
    border-bottom: 2px solid black;
    margin-bottom: 3rem;
   }
   .art4{
    width: 50%;
    margin: 0 auto;
   }
   #mainA1{
    margin-left: 9rem;
   }
   .img-container{
   width:70%;
   margin-top : 50px;
   margin: 0 auto;
   }
   .noticedog{
  width:100%;
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
    
    <article class="art3">
        <h2>${list.boardTitle}</h2>
    </article>
    <article class="art4">
        <p>${list.boardContent}</p>
    </article>
    <div class="img-container">
  <img class="noticedog" src="${pageContext.request.contextPath}/final/image/main/메인.jpg" alt="" />
  </div>
   </main>
    <footer>
     <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>