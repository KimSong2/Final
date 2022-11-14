<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

        body {
            height: 100vh;
        }
		main img{
			width:100px;
			height:100px;
		}
		a{
			text-decoration: none;
			color: black;
		}
		a:visited{
			color:black;
		}
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            grid-template-areas: 'header' 'main' 'footer';
        }

       #search-div{
       		display:flex;
       		flex-direction: row;
       }
		#search-div-info{
			margin:20px;
		}
        main {
            width: 100%;
            background-color: #f5ebe0;
            grid-area: main;
        }

        section {
            width: 50%;
			
        }
        #sec1{
        	padding: 10px;
    		margin-top: 30px;
    		padding-bottom: 30px;
    		border-bottom: 2px dashed black;
        }
		#sec2{
			padding:10px;
		}
        button {
            cursor: pointer;
        }
        html {
            scroll-behavior: smooth;
        }
        #main-container {
            height:100%;
            display: flex;
            flex-direction: column;
            gap: 20px;
            align-items: center;
        }
        
    </style>
</head>

<body>

    <div id="container">
        <header>
           <%@ include file="../frame/mypage/header.jsp" %>
        </header>

        <main>
            <div id="main-container">
            	<section id="sec1">
            			<h4>검색어 : "${search}" (으)로 검색한 결과입니다.</h4>
            			<p>검색 결과로 총 (${fn:length(shop)+fn:length(hotel)}) 건이 검색되었습니다.</p>
            	</section>
            	<c:if test="${shop !=null}">
            		<section id="sec2">
            			<c:forEach var="item" items="${shop}">
            			<div id="search-div">
            			 	<div>
            			 		<a href="${pageContext.request.contextPath}/shop/main/buy/${item.productId}">
            			 			<img src="${item.productImage }" >
            			 		</a>
            			 	</div>
            			 	<div id="search-div-info">
            			 		<p><a href="${pageContext.request.contextPath}/shop/main/buy/${item.productId}">상품명 : ${item.productName }</a></p>
            			 		<p>분류 : ${item.productCategory }</p>
            			 		<p>가격 : <fmt:formatNumber value="${item.productPrice}" pattern="#,###" />원</p>
            			 	</div>
            			 </div>
            			</c:forEach>
            		</section>
            	</c:if>
            	<c:if test="${hotel != null}">
            		<section id="sec2">
            			<c:forEach var="item" items="${hotel}">
            			<div id="search-div">
            			 	<div>
            			 		<img src="${shop.hotelImg}" >
            			 	</div>
            			 	<div id="search-div-info">
            			 		<p>호텔명 ${item.hotelName }</p>
            			 		<p>분류 : ${item.hotelCategory }</p>
            			 		<p>주소 : ${item.hotelAddr }</p>
            			 		<p>연락처 : ${item.hotelTel }</p>
            			 	</div>
            			 </div>
            			</c:forEach>
            		</section>
            	</c:if>	    
            </div>
        </main>


        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
</body>

</html>