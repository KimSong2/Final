<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/shop/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
  <style>
  
   

    nav div {
      width: 100%;
      height: 100%;
    }

    
    #container {
      position: relative;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 70px 2fr 70px 1fr 70px;
      grid-template-columns: 1fr;
      justify-items:center;
    }

    main {
      width: 100%;
      background-color: white;

    }

    section {
      width: 100vw;
      height: 82vh;
    }

  
    .category-menu{
    	
        padding: 15px 0 15px 0;
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        margin-top: 10px;
        margin: 0 auto;
        width: 80%;
        display: flex;
        flex-direction: row;
        justify-content: left;
        gap: 30px;
        text-align: center;
        margin-bottom: 30px;
    }
    .category-menu img{
        margin-top: 10px;
        width: 40px;
        height: 40px;
    }
    .img-header{
        display: flex;
        align-items: center;
        justify-content: center;
       }
       .img-header img{
       width : 80%;
      margin-left : 10%;
      margin-bottom : 50px;
       }
       .slide_wrapper{
            position: relative;
            width: 1240px;
            margin: 0 auto;
            height: 300px;
            overflow: hidden;
        }
        li{
            list-style-type: none;
        }
        .slides{
            position: absolute;
            left: 0; top: 0;
            width: 3060px;
            transition: left 0.5s ease-out;
           
            
        }
        .slides p{
        	color: gray;
        	font-size:13px;
        }
        .slides li:not(:last-child){
            float: left;
            margin-right: 60px;
        }
        .slides img{
            width: 200px;
            height: 200px;
            
        }
        .art2{
        	width:80%;
        	display:grid;
        	grid-template-columns: 130px 1fr 130px;
        	align-items:center;
        	justify-content:center;
        }
        .prev, .next{
        	z-index:10;
        	margin:0;
        	margin-top:10%;
            text-align: center;
        	cursor:pointer;
            font-size:18px;
            color: black;
            
        }
        .prev{
        	text-align:right;
        	float:right;
        }
		.next{
			text-align:left;
			float:left;
		}        
       /*  .prev:hover{
            color: antiquewhite;
            cursor: pointer;
        }
        .next:hover{
            color: antiquewhite;
            cursor: pointer;
        } */

     
    article,.new-arr,.New-Arr{
      background-color: white;
    }
    
    .new-arr{
      text-align: center;
    }
    .sh3{
    font-weight: 400;
    font-size:15px;
    width: 200px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-bottom: 5px;
   }
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
	overflow-x:hidden;
	}
  </style>
</head>

<body>

  <div id="container">
    <header>
      <%@ include file="../frame/shop/header.jsp" %>
    </header>
    
    <main>
    	
        <div class="category-menu">
            <li><a href="${pageContext.request.contextPath}/shop/list/home"><img src="${pageContext.request.contextPath}/final/image/shop/Home.png" alt=""><br>Home</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/walk"><img src="${pageContext.request.contextPath}/final/image/shop/Walk.png" alt=""><br>Walk</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/carrier"><img src="${pageContext.request.contextPath}/final/image/shop/Carrier.png" alt=""><br>Carrier</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/clothes"><img src="${pageContext.request.contextPath}/final/image/shop/Clothes.png" alt=""><br>Clothes</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/dining"><img src="${pageContext.request.contextPath}/final/image/shop/Dining.png" alt=""><br>Dining</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/grooming"><img src="${pageContext.request.contextPath}/final/image/shop/Grooming.png" alt=""><br>Grooming</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/toy"><img src="${pageContext.request.contextPath}/final/image/shop/Toy.png" alt=""><br>Toy</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/food"><img src="${pageContext.request.contextPath}/final/image/shop/Food.png" alt=""><br>Food</a></li>
        </div>
    	
        <article class="sec1">
            <div class="img-header">
                <a href="${pageContext.request.contextPath}/shop/list/carrier"><img class="slide1" id="imgSlide" src="${pageContext.request.contextPath}/final/image/shop/EventImg1.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list/toy"><img class="slide1" id="imgSlide" src="${pageContext.request.contextPath}/final/image/shop/EventImg2.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list/clothes"><img class="slide1" id="imgSlide" src="${pageContext.request.contextPath}/final/image/shop/EventImg3.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list/food"><img class="slide1" id="imgSlide" src="${pageContext.request.contextPath}/final/image/shop/EventImg4.png" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list/walk"><img class="slide1" id="imgSlide" src="${pageContext.request.contextPath}/final/image/shop/EventImg5.jpg" alt=""></a>
                </div>
        </article>
    </main>
    <script>
      
    var index = 0;   //이미지에 접근하는 인덱스
    window.onload = function(){
        slideShow();
    }
    
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1");  //slide1에 대한 dom 참조
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    }
    index++;
    if (index > x.length) {
        index = 1;  //인덱스가 초과되면 1로 변경
    }   
    x[index-1].style.display = "block";  //해당 인덱스는 block으로
    setTimeout(slideShow, 4000);   //함수를 4초마다 호출
}
    </script>
     <div class="New-Arr">
      <h1 class="new-arr">New Arrivals</h1>
    </div>
    <article class="art2">
      <span class="prev"><span class="material-symbols-outlined">
		arrow_back_ios
		</span></span>      
      <div class="slide_wrapper">
      
        <ul class="slides">
				<c:forEach var="item" items="${list}" >
           		   <li><a href="${pageContext.request.contextPath}/shop/main/buy/${item.productId}"><img src="${item.productImage}" alt=""><h3 class="sh3">${item.productName}</h3><p>${item.productShop}</p><h4><fmt:formatNumber value="${item.productPrice}" pattern="#,###"/>원</h4></a></li>
           		</c:forEach>
        </ul>
    	</div>
    	<span class="next"><span class="material-symbols-outlined">
			arrow_forward_ios
		</span></span>

    </article>
    
    <script>
      var slides = document.querySelector('.slides'),
  slide = document.querySelectorAll('.slides li'),
  currentIdx = 0,
  slideCount = slide.length,
  prevBtn = document.querySelector('.prev'),
  slideWidth = 200,
  slideMargin = 60,
  nextBtn = document.querySelector('.next');

  slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px';

  function moveSlide(num){
      slides.style.left = -num * 260 + 'px';
      currentIdx = num;
  }
  nextBtn.addEventListener('click' , function(){
      if(currentIdx < slideCount - 5){
      moveSlide(currentIdx + 1);
  } else{
      moveSlide(0);
  }
  });
  prevBtn.addEventListener('click' , function(){
      if(currentIdx > 0){
          moveSlide(currentIdx - 1);
      }else{
          moveSlide(slideCount -5);
      }
  })
  </script>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>