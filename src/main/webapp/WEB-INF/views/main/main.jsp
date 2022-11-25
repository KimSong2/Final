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
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fyiyg55rlb"></script>
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
      height: 3000px
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
      width: 100vw;
      height: 82vh;
    }
	
    #sec1 {
      z-index: 1;
      transform: translateX(0);
      position: absolute;
      background: url("final/image/main/메인.jpg") no-repeat;
      background-size: contain;
      background-position:right;
      
    }

    #sec2 {
      z-index: 1.1; 
      transform: translateX(101%);
      position: absolute;
      background-color: #f5ebe0;
      display: grid;
      grid-template-columns:1fr 2fr;
      align-items: center;
      border-left: 2px dashed gray;
      
    }
    #sec2 img,#sec3 img, #sec4 img{
		width: 90%;
    	height: 72vh;
	}

    #map{
    	width: 21vw;
    	height: 40vh;
    }
    #sec2 div, #sec3 div, #sec4 div{
      line-height: 34px;
    }
    #sec2-div1, #sec3-div1, #sec4-div1{
    	margin-left: 15%;
    }
    #sec2 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }

    #sec3 {
      z-index: 1.2;
      transform: translateX(101%);
      position: absolute;
      
      background-color: #f5ebe0;
      display: grid;
      grid-template-columns:1fr 3fr;
      align-items: center;
      
      border-left: 2px dashed black;
    }
    #sec3 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }
    #sec3 button{
      border:none;
      background-color: lightgray;
      font-size: 20px;
      width:200px;
      height:40px;
      border-radius: 5%;
      margin-top: 15px;
    }
    #sec4 {
      width:100vw;
      z-index: 1.3;
      transform: translateX(101%);
      position: absolute;
      
      background-color: #f5ebe0;
      display: grid;
      grid-template-columns:1fr 3fr;
      align-items: center;
      
      border-left: 2px dashed black;
    }

    #sec4 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }
    #sec4 button{
      border:none;
      background-color: lightgray;
      font-size: 20px;
      width:200px;
      height:40px;
      border-radius: 5%;
      margin-top: 15px;
    }
    
    html {
      scroll-behavior: smooth;
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
        <div>
          
        </div>
      </section>
      <section id="sec2">
        <div id="sec2-div1">
          <h1>About Us</h1>
          <a href="${pageContext.request.contextPath}/viser/main">관리자 페이지 테스트</a>
          <p>품격있는 애견 사이트</p>
          <p>최고의 서비스</p>
          <p>댕누리만이 사람과 반려견을 더 아름답게 하는</p>
          <p>소명을 이루고자 미의 여정을 이어갑니다.</p>
          <h5><오시는 길></h5>
          <div id="map" ></div>
			<script>
				var mapOptions = {
   				 center: new naver.maps.LatLng(37.478909798053834, 126.88135430793452),
    			zoom: 18
				};
				
				var map = new naver.maps.Map('map', mapOptions);
				
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(37.478909798053834, 126.88135430793452),
				    map: map
				});
			</script>
        </div>
        <div>
        	<img alt="" src="final/image/main/메인섹션.png">
        </div>

      </section>
      <section id="sec3">
        <div id="sec3-div1">
          <form action="${pageContext.request.contextPath}/goshop">
          	<h1>Shop</h1>
          	<p>사랑하는 우리 애기들을 쇼핑</p>
          	<p>우리집 막둥이를 위한 선물</p>
          	<p>최고의 서비스로 모시겠습니다</p>
          	<button>Go Shopping</button>
          </form>
        </div>
        <div>
        	<img alt="" src="final/image/main/쇼핑섹션.png">
        </div>
        
      </section>
      <section id="sec4">
        <div id="sec4-div1">
        <form action="${pageContext.request.contextPath}/gohotel">
          <h1>Hotel</h1>
          <p>품격있는 호텔</p>
          <p>품격있는 서비스로</p>
          <p>최고의 쉼터가 되겠습니다</p>
          <button>Go Hotel</button>
            </form>
        </div>
        <div>
        	<img alt="" src="final/image/main/호텔섹션.png">
        </div>
      </section>

    </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
  <script>
    const sec1 = document.getElementById("sec1");
    const sec2 = document.getElementById("sec2");
    const sec3 = document.getElementById("sec3");
    const sec4 = document.getElementById("sec4");
    window.addEventListener("scroll", function () {
      // 스크롤 상단의 위치를 가져오기
      let winScroll = document.documentElement.scrollTop; //스크롤바가 밑에 닿았을때 스크롤바 윗부분부터 천장까지의 길이
      // 스크롤 전체 길이를 뺀 나머지 높이를 가져오기
      let height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
      //스크롤 전체 높이                         //화면에 보이는 길이
      // 전체 화면 높이에 대한 퍼센트 추출
      let percent = (winScroll / height) * 100;
      
      // progress-bar에 width 적용
      function fnscroll (a){
    	// 주석 제거시 섹션별로 덮는 효과  
       /*  if(a<0){
          return a=0;
        }else{ */
          return a;
        /* }  */
      }
      sec1.style.transform = "translateX(" + fnscroll((0 - (percent * 3))) + "%)";
      sec2.style.transform = "translateX(" + fnscroll((100 - (percent * 3))) + "%)";
      sec3.style.transform = "translateX(" + fnscroll((200 - (percent * 3))) + "%)";
      sec4.style.transform = "translateX(" + fnscroll((300 - (percent * 3))) + "%)";
    });
    const a1 = document.getElementById("mainA1");
    const a2 = document.getElementById("mainA2");
    const a3 = document.getElementById("mainA3");
    const a4 = document.getElementById("mainA4");
    
    let height = document.documentElement.scrollHeight - document.documentElement.clientHeight
    
    a1.addEventListener("click", function () {
      document.documentElement.scrollTop = 0;
    });
    a2.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 1;
    });
    a3.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 2;
    });
    a4.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 3;
    });
  </script>
</body>

</html>