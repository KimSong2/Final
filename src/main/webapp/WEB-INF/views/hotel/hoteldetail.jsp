
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
   <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/hotel/header.css?11">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <title>Document</title>
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
            position: relative;
            height: 100%;
            overflow-x:hidden;
        }

       
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            min-height: 100vh;
        }

        header {
            z-index: 100;
            background-color: #EDEDE9;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            width: 100vw;
            height: 100%;
        }

        main {
            width: 100%;
            background-color: #EDEDE9;

        }

        section {
            width: 100%;
            height: 100%;
        }

        /* img */
        #hotel_img {
            display: grid;
            grid-template-rows: repeat(5, 1fr);
            grid-template-columns: repeat(3, 1fr);
            grid-template-areas: 'img1 img1 img2'
                'img1 img1 img2'
                'img1 img1 img5'
                'img3 img4 img5'
                'img3 img4 img5';
            gap: 10px;
            height: inherit;
            width: 90%;
            margin: 10px auto;
        }

        #img1 {
            grid-area: img1;
            background-color: red;
        }

        img {
            size: inherit;
        }

        #img2 {
            grid-area: img2;
            background-color: yellow;
        }

        #img3 {
            grid-area: img3;
            background-color: green;
        }

        #img4 {
            grid-area: img4;
            background-color: blue;
        }

        #img5 {
            grid-area: img5;
            background-color: purple;
        }

        .date {
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center
        }

        #list,
        #option_list {
            width: 80%;
            margin: 5px auto;
            display: flex;
            flex-direction: row;
            display: hidden;

        }

        #inner1 {
            width: 25%;
            background-color: red;

        }

        #inner2 {
            width: 65%;
            padding-left: 20px;
        }

        #innerbtn {
            display: flex;
            flex-direction: row;
            align-items: end;

            width: 15%;

        }

        #reservebtn {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 5vh;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        #intr {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 5px 20px;
        }

        #intr_a {
            display: flex;
            flex-direction: row;

        }

        td {
            border: 1px solid black;
        }

        #td1 {
            width: 80%;
        }

        #td2 {
            text-align: center;
        }

        #option_list {
            display: none;
        }

        .content {
            width: 80%;
            display: flex;
            flex-direction: column;
            gap: 45px;
            position: relative;
            align-items: center;
        }
		#hotel-img{
			max-width:400px;
			max-height:300px;
		}
		#hotel-img img{
			width:100%;
		}
		#hotel-info{
			display:flex;
			flex-direction:column;
			align-items:center;
		}
		#hotel-info button{
			width: 200px;
    		height: 45px;
    		color: white;
    		font-size: 15px;
    		padding: 10px;
   			background-color: black;
		}
        .detail {
            width: 65vw;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 1fr;
			justify-items: center;

        }
		.c_title{
			display:grid;
			grid-template-columns: 1fr 1fr;
			justify-items:center;
			align-items:center;
			width:100%;
		}
        .c_p {
            width: 100%;
            border-bottom: 1px solid black;
            padding-bottom: 10px;
        }

        .p_cont {
            padding: 10px 0px 20px 0px;
        }

        .price {
            display: flex;
            flex-direction: column;
            gap: 15px;
            border: 1px solid black;
            height: fit-content;
            padding: 4vh 3vw;
            position: sticky;
            left: 70%;
            top: 5%;
        }

        .p_box,
        .total {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .c_review {
            padding-bottom: 5vh;
        }

        #c_img {
            width: 100%;

        }
        
        .date {
            width: 90%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: 5vh;
            padding: 1vh 0;
        }

        

        .indate {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            width: fit-content;
            align-items: center;
            gap: 15px;
        }

        #datepicker1 {
            width: fit-content;
            border: 0;
            background-color: #edede9;
            font-size: 17px;
        }

        /* #selecbtn {
            height: 70%;
            border: 0;
            background-color: black;
            width: 5vw;
            color: white;
        } */
	
		.selecbtn {
            height: 70%;
    border: 0;
    background-color: black;
    width: 5vw;
    color: white !important;
    text-align: center;
            
        }

.isbx-toggle {
	display: block !important;
}
/*  #ioutbox {
           display: none;
            width: 90%;
            margin: 0 auto;
            padding-bottom: 1vh;
        }
 */
        .outbox {
            display: block !important;
            width: 90%;
            margin: 0 auto;
        }

        #bxform>label {
            padding: 0px 5px;
        }
        
        .clicked {
        	display : block !important;
        	display : flex !important;
        	
        }
        #isbx {
            display: flex;
            flex-direction: row;
            justify-content: left;
            width: 70%;
            gap: 4vw;
            margin: 0 auto;
            display:none;

        }
        #selectp{
        	cursor:default;
        }
        .c_info{
        	width: 100%;
			display: grid;
			grid-template-rows: 55px 1fr;
        }
        #nav{
        	background-color: gray;
        	color:white;
        	display: flex;
    		justify-content: space-around;
    		position:sticky;
    		top:0;
    		z-index:10;
        }
        #nav div{
        	padding-top:14px;
        	width: 25%;
    		text-align: center;
    		cursor:pointer;
        }
        #info-container li{
        	display:block;
        }
        .info-container-div{
        	margin:30px;
        }
        .on{
        	background-color: black;
        }
        .fadeIn {
			animation: fadeIn 1.5s ease-out forwards;
		}
		
		@keyframes fadeIn { 
			0%{
				opacity: 0;
			}
			100%{
				opaciry:1;
			}
		}
		#notice-title{
			margin-bottom:15px
		}
		#notice-content{
			margin-left:10px;
		}
		.room-list{
			position:relative;
			margin:10px 0 10px 20px;
			border-bottom: 2px dashed black;
		}
		.room-list-div{
			padding: 10px 0;
		}
		.material-symbols-outlined{
			float:left;
			padding-top:5px;
			margin-right:10px;
		}
		.room-info{
			font-size:25px;
		}
		.room-type{
			margin-left:10px;
			font-weight: 400;
			font-size: 16px;
		}
		.room-price{
			position:absolute;
			top: 30px;
			right:13px;
			float:right;
			font-size:23px;
			font-weight:400;
		}
		.room-content{
			margin-left:20px;
		}
		.review-box, .qna-box{
			position:relative;
			margin:20px 20px 0 20px;
		}
		.review-write, .qna-title{
			font-size:18px;
		}
		.review-roomname{
			font-size:13px;
			color:gray;
			margin-left:5px;
		}
		.qna-writer{
			margin-left:5px;
		}
		.review-date, .qna-date{
			position:absolute;
			right:25px;
			top:20px;
			float:right;
		}
		.review-content, .qna-content{
			padding:10px;
		}
		#review-count, #qna-count{
			color: blue;
		}
		#qna-button, #qna-button2{
			color: white;
			background-color:black;
			float:right;
			width:100px;
			height:30px;
		}
		#writebox-qna{
			
			margin-top:15px;
			gap:20px;
			margin: 20px 0 0 20px;
			clear:both;
			display:none;
			flex-direction:row;
			justify-content:center;
			padding-top:20px;
		}
		#insertqna{
			float:right;
			color:white;
			background-color:gray;
			width:90px;
			height:25px;
			border:none;
		}
		#qnatitle{
			margin-left:10px;
		}
		button{
			cursor:pointer;
		}
		.showmore-div{
			display:flex;
			justify-content:center;
		}
		.showmore-div button{
			border:none;
			font-size:18px;
			background-color: #EDEDE9;
			margin-top:10px;
		}
    </style>
</head>

<body>
    <div id="container">
        <header>
            <%@ include file="../frame/hotel/header.jsp" %>
        </header>
        
        <main>
            <section>
               <div class="date">
					<div>
						<p> 선택날짜 : ${startdate} ~ ${enddate}</p> 
					</div>
				</div>
				
                <div class="detail">
                    <div class="content">
                        <div class="c_title">
                        	<div id="hotel-img">
                        		<img src="https://www.qplace.kr/content/images/2021/09/9-14.jpg">
                        	</div>
                        	<div id="hotel-info">
                        		<div>
                            		<h1>${hotel[0].hotelName}</h1><br>
                            		<p>상세주소: ${hotel[0].hotelAddr }</p>
                            		<p>전화번호: ${hotel[0].hotelTel}</p><br>
                            	</div>
                            	<div>
                            		<button type="button" id="goreserve">RESERVATION</button>
                            	</div>
                            	<script type="text/javascript">
                            		document.getElementById("goreserve").addEventListener("click",function(){
                            			location.href="${pageContext.request.contextPath}/goreserve/${hotel[0].hotelId}/${startdate}/${enddate}"
                            		})
                            	</script>
                            </div>
                        </div>
                        <div class="c_info">
                            <div id="nav">
								<div class="on">Information</div>
								<div>Notice</div>
								<div id="review">Review</div>
								<div id="qna">Q&A</div>
                            </div>
                            <div id="info-container">
                            	<div style="display: block;" class="info-container-div">
                            		<div>
                            			<h1>객실정보</h1>
                            		</div>
                            		<ul>
                            		<c:forEach var="item" items="${hotel}">
                            			<li class="room-list">
                            				<div class="room-list-div">
                            					
                            					<p class="room-info"><span class="material-symbols-outlined">pets</span> ${item.roomName}
                            						<span class="room-price"><fmt:formatNumber value="${item.roomPrice}" pattern="#,###" /> KRW</span>
                            					</p>
                            					
                            					<p class="room-content"><span class="room-type">[${item.roomType}견 전용]</span> ${item.roomContent}</p>
                            				</div>
                            			</li>
                            		</c:forEach>
                            		</ul>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<div id="notice-title"><h1>유의사항</h1></div>
                            		<div id="notice-content">
                            			<p>☑ 1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 인플루엔자, 광견병) 받지 않은 반려견은 입실이 제한됩니다.<br>
										   ※ 접종기록은 접종병원명이 꼭 필요하므로 증빙 자료는 미리 준비해주세요.</p>
										<p>☑ 1살 미만의 반려견인 경우 항체 검사가 필수 입니다. (단, 1살 이상 시 재접종 기록 확인)</p>
										<p>☑ 생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 되는 반려견 일 경우 입실이 제한됩니다.</p>
                            		</div>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<h1>Review</h1>
                            		<p>호텔의 방문후기를 작성해주세요</p><hr/>
                            		&nbsp;&nbsp;<h3>후기 <span id="review-count"></span>개</h3>
                            		<div id="review-container">
                            			
                            			
                            		</div>
                            		<c:if test="${hotelreviewcount> 5}">
                            			<div class="showmore-div">
                            				<button id="showmore-review">- Show More -</button>
                            			</div>
                            		</c:if>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<h1> Q&A</h1>
                            		<p>궁금한 사항은 이곳에 작성해주세요</p><hr/>
                            		&nbsp;&nbsp;<h3>문의 <span id="qna-count"></span>개</h3>
                            		<div id="qna-container">
                            			
                            			
                            		</div>
                            		<c:if test="${hotelqnacount> 5}">
                            			<div class="showmore-div">
                            				<button id="showmore-qna">- Show More -</button>
                            			</div>
                            		</c:if>
                            		<c:if test="${sessionScope.user !=null }">
                            			<button id="qna-button">Write</button>
                            		</c:if>
                            		<c:if test="${sessionScope.user ==null }">
                            			<button id="qna-button2">Write</button>
                            		</c:if>
                            		
                            		<div id="writebox-qna" >
                            			<div>
											<label for="qnatitle">문의 분류 * </label>
											<select name="qnatitle" id="qnatitle">
												<option value="호텔 문의">호텔 문의</option>
												<option value="날짜 문의">날짜 문의</option>
												<option value="예약 문의">예약 문의</option>
												<option value="견종 문의">견종 문의</option>
												<option value="기타 문의">기타 문의</option>
											</select>
										</div>
										<div>
											<textarea id="writecontent-qna" placeholder="문의 내용" cols="70" rows="3"></textarea><br><button id="insertqna">작성 완료</button>
										</div>
									</div>
                            	</div>
                            	<script type="text/javascript">
                            		
                            		if(document.getElementById("qna-button")){
                            			document.getElementById("qna-button").addEventListener("click",function(){
                            				if(document.getElementById("writebox-qna").style.display=="flex"){
												document.getElementById("writebox-qna").style.display="none";
											}else{
												document.getElementById("writebox-qna").style.display="flex";
											}
										});
                            		}
                            		if(document.getElementById("qna-button2")){
                            			document.getElementById("qna-button2").addEventListener("click",function(){
                            				alert('로그인 후에 이용해주세요');
                            			});
                            		}
                            		document.getElementById("insertqna").addEventListener("click",function(e){
            							e.preventDefault();
            							let today = new Date();

            							let year = today.getFullYear();
            							let month = ('0' + (today.getMonth() + 1)).slice(-2);
            							let day = ('0' + today.getDate()).slice(-2);
            							let hours = ('0' + today.getHours()).slice(-2); 
            							let minutes = ('0' + today.getMinutes()).slice(-2);
            							let seconds = ('0' + today.getSeconds()).slice(-2); 							
            							let hotelqnaDate = year + '-' + month  + '-' + day +" "+ hours + ':' + minutes  + ':' + seconds;
            							
            							
            							let hotelqnaContent = document.getElementById("writecontent-qna").value;
            							let hotelqnaTitle = document.getElementById("qnatitle").value;
            							let memId = '${sessionScope.user.memId}';
            							let hotelId= ${hotel[0].hotelId}
            							
            							fetch("${pageContext.request.contextPath}/inserthotelqna", 
            								{ method: "POST",
            								  headers: {
            								    "Content-Type": "application/json"
            								  },
            								  body: JSON.stringify({hotelqnaContent,hotelId, hotelqnaTitle,memId,hotelqnaDate})
            								})<%-- .then((response) => response.json()) --%>
            								.then(() => {
            									const div = document.createElement("div");
                                    			div.setAttribute("class","qna-box")

                                    			const p1 = document.createElement("p");
                                    			const strong = document.createElement("strong");
                                    			strong.setAttribute("class","qna-title");
                                    			strong.innerText = '['+hotelqnaTitle+']';

                                    			const sp1 = document.createElement("span");
                                    			sp1.setAttribute("class","qna-writer");
                                    			sp1.innerText= 'by. '+memId;

                                    			const sp2 = document.createElement("span");
                                    			sp2.setAttribute("class","qna-date");
                                    			sp2.innerText= formatDate(hotelqnaDate);

                                    			p1.append(strong);
                                    			p1.append(sp1);
                                    			p1.append(sp2);

                                    			const p2 = document.createElement("p");
                                    			p2.setAttribute("class","qna-content")
                                    			p2.innerText = hotelqnaContent;
                                    			
                                    			const hr = document.createElement("hr");
                                    			div.append(p1);
                                    			div.append(p2);
                                    			div.append(hr);
                                    			const container = document.getElementById("qna-container");
                                    			container.prepend(div);
            									let sp = document.getElementById("qna-count").innerText;
            									document.getElementById("qna-count").innerText= Number(sp)+1;
            									document.getElementById("writecontent-qna").value="";
            									
            								});
            						})
                            	</script>
                            	
                            </div>
							<script type="text/javascript">
									<%-- nav div 클릭 hide/block 효과 --%>
									$("#nav div").click(function(){
										var idx=$(this).index();
										$("html").animate({scrollTop : 0}, 0);
										$("#nav> div").removeClass("on");
										$("#nav> div").eq(idx).addClass("on");
					
										$("#info-container> div").hide();
										$("#info-container> div").removeClass("fadeIn")
										$("#info-container> div").eq(idx).addClass("fadeIn");
										$("#info-container> div").eq(idx).show();
									})
									
									function formatDate(date) {
		                            	var d = new Date(date),
		                            	month = '' + (d.getMonth() + 1),
		                            	day = '' + d.getDate(),
		                            	year = d.getFullYear();

		                            	if (month.length < 2) month = '0' + month;
		                             	if (day.length < 2) day = '0' + day;
										return [year, month, day].join('. ');
		                            }
									
									<%-- 호텔 리뷰 불러오기--%>
									$("#review").click(function(){
										let hotelId = ${hotel[0].hotelId};
										
										fetch("${pageContext.request.contextPath}/gethotelreview", {
		                                    method: "POST",
		                                    headers: { "Content-Type": "application/json" },
		                                    body: JSON.stringify({ hotelId })
		                                }).then(response => response.json())
		                                    .then(data => {
		                                    	$("#review-container").empty();
		                                        document.getElementById("review-count").innerText = data.length;
		                                        if(data.length>0){
		                                        	for (let review of data) {
		                                    			const div = document.createElement("div");
		                                    			div.setAttribute("class","review-box")

		                                    			const p1 = document.createElement("p");
		                                    			const strong = document.createElement("strong");
		                                    			strong.setAttribute("class","review-writer");
		                                    			strong.innerText = review.memId;

		                                    			const sp1 = document.createElement("span");
		                                    			sp1.setAttribute("class","review-roomname");
		                                    			sp1.innerText= '['+review.hotelreviewRoomname+']';

		                                    			const sp2 = document.createElement("span");
		                                    			sp2.setAttribute("class","review-date");
		                                    			sp2.innerText= formatDate(review.hotelreviewDate);

		                                    			p1.append(strong);
		                                    			p1.append(sp1);
		                                    			p1.append(sp2);

		                                    			const p2 = document.createElement("p");
		                                    			p2.setAttribute("class","review-content")
		                                    			p2.innerText = review.hotelreviewContent;
		                                    			
		                                    			const hr = document.createElement("hr");
		                                    			div.append(p1);
		                                    			div.append(p2);
		                                    			div.append(hr);
		                                    			const container = document.getElementById("review-container");
		                                    			container.append(div);
		                                        	}
		                                        }else{
		                                        	const div = document.createElement("div");
		                                        	const p1 = document.createElement("p");
		                                        	p1.innerText='아직 작성된 후기가 없습니다.'
		                                        	p1.style.textAlign="center";
		                                        	div.append(p1);
		                                        	const container = document.getElementById("review-container");
	                                    			container.append(div);
		                                        }
		                                    }).catch(error => {
		                                        console.log("error");
		                                    });
									})
									
									
									<%-- 호텔 문의 불러오기--%>
									$("#qna").click(function(){
										let hotelId = ${hotel[0].hotelId};
										console.log(hotelId);
										fetch("${pageContext.request.contextPath}/gethotelqna", {
		                                    method: "POST",
		                                    headers: { "Content-Type": "application/json" },
		                                    body: JSON.stringify({ hotelId })
		                                }).then(response => response.json())
		                                    .then(data => {
		                                    	$("#qna-container").empty();		                           
		                                        
		                                        document.getElementById("qna-count").innerText = ${hotelqnacount};
		                                        
		                                        if(data.length>0){
		                                       		for (let qna of data) {
		                                    			const div = document.createElement("div");
		                                    			div.setAttribute("class","qna-box fadeIn")

		                                    			const p1 = document.createElement("p");
		                                    			const strong = document.createElement("strong");
		                                    			strong.setAttribute("class","qna-title");
		                                    			strong.innerText = '['+qna.hotelqnaTitle+']';

		                                    			const sp1 = document.createElement("span");
		                                    			sp1.setAttribute("class","qna-writer");
		                                    			sp1.innerText= 'by. '+qna.memId;

		                                    			const sp2 = document.createElement("span");
		                                    			sp2.setAttribute("class","qna-date");
		                                    			sp2.innerText= formatDate(qna.hotelqnaDate);

		                                    			p1.append(strong);
		                                    			p1.append(sp1);
		                                    			p1.append(sp2);

		                                    			const p2 = document.createElement("p");
		                                    			p2.setAttribute("class","qna-content")
		                                    			p2.innerText = qna.hotelqnaContent;
		                                    			
		                                    			const hr = document.createElement("hr");
		                                    			div.append(p1);
		                                    			div.append(p2);
		                                    			div.append(hr);
		                                    			const container = document.getElementById("qna-container");
		                                    			container.append(div);
		                                        	}
		                                        }else{
		                                        	const div = document.createElement("div");
		                                        	const p1 = document.createElement("p");
		                                        	p1.innerText='아직 작성된 문의가 없습니다.'
		                                        	p1.style.textAlign="center";
		                                        	div.append(p1);
		                                        	const container = document.getElementById("qna-container");
	                                    			container.append(div);
		                                        }
		                                    }).catch(error => {
		                                        console.log("error");
		                                    });
									})
									<%--호텔 리뷰 페이징--%>
									let page1 = 5;
									let hotelId = '${hotel[0].hotelId}';
									if(document.getElementById("showmore-review")){
										document.getElementById("showmore-review").addEventListener("click",function(){
											console.log(page2);
											fetch("${pageContext.request.contextPath}/getMoreHotelReview", 
													{ method: "POST",
													  headers: {
													    "Content-Type": "application/json"
													  },
													  body: JSON.stringify({id: hotelId,page: page1})
													}).then((response) => response.json())
													.then((data) => {
														console.log("hi");
														for( review in data){
															const div = document.createElement("div");
			                                    			div.setAttribute("class","review-box")

			                                    			const p1 = document.createElement("p");
			                                    			const strong = document.createElement("strong");
			                                    			strong.setAttribute("class","review-writer");
			                                    			strong.innerText = data[review].memId;

			                                    			const sp1 = document.createElement("span");
			                                    			sp1.setAttribute("class","review-roomname");
			                                    			sp1.innerText= '['+data[review].hotelreviewRoomname+']';

			                                    			const sp2 = document.createElement("span");
			                                    			sp2.setAttribute("class","review-date");
			                                    			sp2.innerText= formatDate(data[review].hotelreviewDate);

			                                    			p1.append(strong);
			                                    			p1.append(sp1);
			                                    			p1.append(sp2);

			                                    			const p2 = document.createElement("p");
			                                    			p2.setAttribute("class","review-content")
			                                    			p2.innerText = data[review].hotelreviewContent;
			                                    			
			                                    			const hr = document.createElement("hr");
			                                    			div.append(p1);
			                                    			div.append(p2);
			                                    			div.append(hr);
			                                    			const container = document.getElementById("review-container");
			                                    			container.append(div);
														
														if(page1>=${hotelreviewcount})document.getElementById("showmore-review").style.display="none";
														}
													});
											page1 = page1+5;
										});
										}
									
									<%--호텔 문의 페이징--%>
									let page2 = 5;
									
									if(document.getElementById("showmore-qna")){
										document.getElementById("showmore-qna").addEventListener("click",function(){
											console.log(page2);
											fetch("${pageContext.request.contextPath}/getMoreHotelQna", 
													{ method: "POST",
													  headers: {
													    "Content-Type": "application/json"
													  },
													  body: JSON.stringify({id: hotelId,page: page2})
													}).then((response) => response.json())
													.then((data) => {
														console.log("hi");
														for( qna in data){
															const div = document.createElement("div");
			                                    			div.setAttribute("class","qna-box")

			                                    			const p1 = document.createElement("p");
			                                    			const strong = document.createElement("strong");
			                                    			strong.setAttribute("class","qna-title");
			                                    			strong.innerText = '['+data[qna].hotelqnaTitle+']';

			                                    			const sp1 = document.createElement("span");
			                                    			sp1.setAttribute("class","qna-writer");
			                                    			sp1.innerText= 'by. '+data[qna].memId;

			                                    			const sp2 = document.createElement("span");
			                                    			sp2.setAttribute("class","qna-date");
			                                    			sp2.innerText= formatDate(data[qna].hotelqnaDate);

			                                    			p1.append(strong);
			                                    			p1.append(sp1);
			                                    			p1.append(sp2);

			                                    			const p2 = document.createElement("p");
			                                    			p2.setAttribute("class","qna-content")
			                                    			p2.innerText = data[qna].hotelqnaContent;
			                                    			
			                                    			const hr = document.createElement("hr");
			                                    			div.append(p1);
			                                    			div.append(p2);
			                                    			div.append(hr);
			                                    			const container = document.getElementById("qna-container");
			                                    			container.append(div);
														
														if(page2>=${hotelqnacount})document.getElementById("showmore-qna").style.display="none";
														}
													});
											page2 = page2+5;
										});
										}
							</script>		
                        </div>
                    </div>
				</div>
            </section>
        </main>
        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>