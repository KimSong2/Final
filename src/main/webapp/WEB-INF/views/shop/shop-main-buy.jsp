<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/shop/header.css">

<title>Document</title>
<style>
* {
	margin: 0 auto;
	/* box-sizing: border-box; */
}

html {
	scroll-behavior: smooth;
	height:100%;
}

body {
	background-color: white;
	height:100%;
	overflow-x:hidden;
}

/*승철짱 CSS*/
nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}
#nav1 ul{
	padding:0;
}
body {
	height: 100%;
	
}

#container {
	min-height:100vh;
	display: grid;
	grid-template-rows: 70px 1fr 70px;
}

main {
	width: 95%;
}

#main-container {
	background-color: #D9D9D9;
}

#main-box {
	display: grid;
	grid-template-columns: 2fr 3fr;
	width: 61%;
	height: 500px;
	justify-items: center;
	align-items: center;
}

#shop-option {
	width: 60%;
	border-radius: 5px;
	border: 1px solid white;
	height: 30px;
}

#main-text>h4 {
	margin-top: 20px;
}

option {
	border-radius: 2px;
	border: 1px solid white;
}

/* 중간 sub 내용*/
.line {
	width: 80%;
	height: 0%;
	border-top: 2px dotted black;
	padding-bottom: 2rem;
	margin: 0 auto;
}

/* 리뷰를 위한 CSS*/
.review {
	width: 60%;
	margin: 0 auto;
	margin-bottom: 2rem;
}

.review img {
	width: 100px;
	height: 100px;
	margin-left: 20px;
}

.h3 {
	margin-top: 55px;
	margin-bottom: 5px;
	margin-left: 10px;
}

#fixed {
	font-weight: 700;
	display: flex;
	justify-content: center;
	text-align: center;
	position: fixed;
	bottom: 9%;
	right: 3%;
	border: none;
	width: 60px;
	height: 60px;
	background-color: lightgray;
	align-items: center;
}

/* 메인 박스 css */
#main1 {
	width: 500px;
	height: 400px;
	right: 10px;
}

#main1 img {
	width: 100%;
	height: 100%;
}

#main2 {
	width:500px;
	margin:20px;
}

#main2>h3, h4 {
	font-size: 1.2rem;
}

#main2>h4 {
	line-height: 3.5rem
}

#main2-btn1, #main2-btn2, #main2-btn1-logout {
	height: 35px;
	border-radius: 5px;
	width: 48%;
	border: none;
	margin-top: 10px;
}

#main2-btn1 {
	margin-right: 10px;
}

#p-line {
	margin-top: 5px;
	color: gray;
	font-size: 15px;
}

#p-line1 {
	line-height: 5rem;
}

#total {
	background-color: #D9D9D9;
	border:none;
	width: 15px;
	outline: none;
}

#plus-btn, #minus-btn {
	padding: 0;
	width: 20px;
	height: 20px;
	background-color: #f0f0f0;
	border: none;
}

#plus-btn {
	margin-right: 5px;
}

#size-opt {
	height: 30px;
	width: 45%;
	border: none;
	outline:none;
	border-radius: 5px;
	color: black;
}

/* sub-box, 상태창, 상세상품 설명 */
#sub-box {
	width: 90%;
	display: grid;
	grid-template-columns: 300px 3fr;
	padding: 10px 10px;
}

#status-bar {
	margin-top: 50px;
	position: sticky;
	top: 20%;
	width: 40%;
	height: 200px;
	line-height: 40px;
}

#status-bar div {
	border-right: 2px solid lightgray;
}

#status-bar>div:hover {
	border-right: 2px solid black;
	cursor: pointer;
	font-size: 1.2rem;
}

.on {
	border-right: 2px solid black !important;
}

.fadeIn {
	animation: fadeIn 1.5s ease-out forwards;
}

@
keyframes fadeIn { 
	0%{
		opacity: 0;
	}
	100%{
		opaciry:1;
	}
}
#proc-wrapper {
	width: 65%;
	height: 100%;
	margin: 50px;
}

#prdInfo>p {
	font-size: 0.8rem;
	margin-top: 0.6rem;
}

h5 {
	font-size: 0.9rem;
	line-height: 1.3rem;
}

font {
	size: 2;
}

.board {
	line-height: 2rem;
}

.board>p {
	font-size: 0.8rem;
	color: #979797;
}

.board-box {
	padding:5px;
	border: 1px solid #d9d9d9;
	justify-content: center;
	align-items: center;
	margin-top: 1rem;
}

#btn-box1, #btn-box2 {
	display: flex;
	clear: both;
	float:right;
	margin-top: 0.7rem;
}

#write-btn1,#write-btn2{
	background-color: black;
	color: white;
	border: 1px solid;
	width: 100px;
	height: 32px;
}
#write-box , #write-box2{
	display:none;
	margin-top:10px;
}

#write-box button , #write-box2 button{
	float:right;
	cursor: pointer;
	border:none;
	height:30px;
	margin-top:5px;
	margin-bottom:10px;
}

#writebox-content ,#writebox-content2{
	height:30px;
	width:100%;
	margin-bottom:5px;
}
#writebox-title2{
	    width: 40%;
	    height:30px;
	    margin-bottom:10px;
}
#writebox-content2{
	height:150px;
}
#view-btn1, #view-btn2 {
	background-color: white;
	color: black;
	border: 0.4px solid;
	width: 175%;
	height: 30px;
}

#view-btn1:hover, #view-btn2:hover, #write-btn1:hover, #write-btn2:hover
	{
	background-color: rgba(166, 166, 166, 0.7);
}
#review-btn-div, #review-btn-div2{
	display:flex;
	justfy-content:center;
	
}
#review-btn-div button, #review-btn-div2 button{
	border:none;
	font-size:18px;
	background-color: white;
	margin-top:10px;
	
}
button{
	cursor:pointer;
}
</style>


</head>
<body>
	<div id="fixed">
		<a href="#top"> TOP </a>
	</div>
	<a name="top"></a>
	<div id="container">

		<header>
			<%@ include file="../frame/shop/header.jsp" %>
			<a name="top" id="heretop" style="display: none"></a>
		</header>
		<main>
			<div id="main-container">
				<div id="main-box">
					<div id="main1">
						<img src="${pageContext.request.contextPath}/${list.productImage}">
					</div>
					<div id="main2">
						<h3>${list.productName}</h3>
						<p id="p-line">
							BRAND-NAME <span>ㅡ</span> ${list.productShop}
						</p>
						<p id="p-line1">MADE IN KOREA</p>
						<select id="size-opt">
							<option value="옵션선택">옵션을 선택해주세요</option>
							<option value="옵션선택">----------------------------------------</option>
							<c:forEach var="item" items="${option}">
								<option value="${item.option}">${item.option}</option>
							</c:forEach>
						</select>&nbsp; <input type="text" id="total" value="1">개 &nbsp;
						<button type="button" id="plus-btn">+</button>
						<button type="button" id="minus-btn">-</button>
						<h4>Total</h4>
						<h1 id="totalprice">
							<fmt:formatNumber value="${list.productPrice}" pattern="#,###" />
							원
						</h1>
						<br>
						<button id="main2-btn1">BUY NOW</button>
						<button id="main2-btn2">ADD TO CART</button>
						<script>
					document.getElementById("plus-btn").addEventListener("click",function(){
						let total = document.getElementById("total");
						let count = Number(Number(total.value) + Number("1"));
						if(count < 1){ count =1 };
						document.getElementById("total").value = count;
						total.value=count;
						let totalprice = document.getElementById("totalprice");
						totalprice.innerText = (count*${list.productPrice}).toString()
						  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
					})
					document.getElementById("minus-btn").addEventListener("click",function(){
						let total = document.getElementById("total");
						let count = total.value - 1;
						if(count < 1){ count =1 };
						document.getElementById("total").value = count;
						total.value=count;
						let totalprice = document.getElementById("totalprice");
						
						totalprice.innerText = (count*${list.productPrice}).toString()
						  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
					})
					document.getElementById("total").addEventListener("blur",function(){
						let totalprice = document.getElementById("totalprice");
						let count = document.getElementById("total").value;
						if(count < 1){ count =1 };
						total.value=count;
						totalprice.innerText = (count*${list.productPrice}).toString()
						  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
					})
					
					document.getElementById("main2-btn1").addEventListener("click",function(){
						let option = document.getElementById("size-opt").value;
						let count = document.getElementById("total").value;
						if(option=="옵션선택"){
							alert("옵션을 선택해주세요");
						}else{
							location.href = "${pageContext.request.contextPath}/shop/pay/"+${list.productId}+"?option="+option+"&count="+count;
						}
					});
					
					document.getElementById("main2-btn2").addEventListener("click",function(e){
						e.preventDefault();
						let option = document.getElementById("size-opt").value;
						let count = document.getElementById("total").value;
						let memId = '${sessionScope.user.memId}';
						let productId= ${list.productId}
						if(memId==""|| memId==null){
							alert('로그인 후 이용해주세요');
						}else{
							fetch("${pageContext.request.contextPath}/insertWish", 
								{ method: "POST",
							  	headers: {
							    	"Content-Type": "application/json"
							  	},
							 	 body: JSON.stringify({count,productId, memId, option})
								}).then((response) => response.json())
								.then((data) => {
									if (confirm("장바구니에 추가 되었습니다. 장바구니로 이동하시겠습니까? ")) {
										location.href="${pageContext.request.contextPath}/wish"
									}
						});		
						}
					});
					
					
					
					</script>
					</div>
				</div>
			</div>
			<div id="sub-box">
				<div id="status-bar" class="tab_title">
					<div class="on">Detail</div>
					<div>Information</div>
					<div>Review</div>
					<div>Q&A</div>
				</div>
				<div id="proc-wrapper" class="tab_cont">
					<div style="display: block;">
						<div> <img src="${pageContext.request.contextPath}/${list.productContent}"></div>
					</div>
					<div style="display: none;">
						<div id="prdInfo">
							<h3>상세 결제 정보</h3>
							<p>고액 결제의 경구 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다</p>
							<p>확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을
								보류 또는 취소할 수 있습니다.</p>
							<p>무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면
								됩니다.</p>
							<p>주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며
								입금되지 않은 주문은 자동취소 됩니다.</p>
							<br />
							<h5>배송방법 :택배</h5>
							<h5>배송 지역 : 전국지역</h5>
							<h5>배송 비용 : 무료</h5>
							<h5>배송 기간 : 3일 ~ 7일</h5>
							<h5>배송안내</h5>
							<p>뎅누리샵은 편집샵으로 운영되는 샵으로서 ,브랜드별로 출고지가 상이합니다.</p>
							<p>마찬가지로 여러제품의 교환, 반품을 원하시면 이 또한 마찬가지로 배송비가 가각 부가될 수 있습니다.</p>
							<p>**제품의 무게에 따라 배송비가 다를 수 있습니다.</p>
							<p>**네이베 페이 구매시 : 상품별 출고지/수거지가 상이하여 교환,</p>
							<p>반품은 자동수거가 불가 하므로 고객센터로 문의 부탁드립니다.</p>
							<br />
							<h4>교환 및 반품정보</h4>
							<h5 style="line-height: 2.5rem;">택배회사 : 로젠택배, CJ대한통운</h5>
							<p>
								<b>무상 교환 반품 안내</b>
							</p>
							<p>-배송 중에 파손 및 오염이 된 경우</p>
							<p>-주문한 제품이 아닌 다른 제품이 배송되었을 경우</p>
							<p>-제품에 구조적인 문제가 있는 경우</p>
							<p>-쿠션 패브릭의 변색과 찢어짐 등의 품질 불량</p>
							<br />
							<p>
								<b>유상교환/반품</b>
							</p>
							<p>상품 수령후 7일 이내 소비자 단순 변심 및 주문 오류에 의한 교환 및 반품</p>
							<p>(배송비 고객부탐/제품 및 포장 상태가 재판매 가능한 상태여야 함.)</p>
							<p>**반품시 포장 불량으로 인한 파손은 고객님이 부담하셔야합니다.</p>
							<br />
							<p>
								<b>*교환,반품을 원하실 경우 수령을로부터 7일 이내에 연락을 해주셔야 처리가 가능하며,</b>
							</p>
							<p>
								<b>경과시 처리가 불가합니다.(미사용이라도 7일이 지나면 접수가 불가능합니다.)</b>
							</p>
							<br />
							<p>
								<b>교환 및 반품이 불가능한 경우</b>
							</p>
							<p>-교환/반품 요청 기간이 지난 경우</p>
							<p>-상품의 포장이 손상되었거나 텍, 라벨이 제거된 경우</p>
							<p>-사용 흔적이 남아 있거나, 이물질에 의한 오염이 된 경우</p>
							<p>-고객 부주의에 의한 제품 파손 및 손상이 있는 경우</p>
							<p>-구매자의 사용 등에 의해 상품 가치가 감소한 경우</p>
							<p>-주문 제작된 상품일 경우</p>
						</div>
					</div>

					<div style="display: none;">
						<div id="prdReview">
							<div class="board">
								<h3>REVIEW</h3>
								<p id ="board-p">상품의 사용후기를 적어주세요</p>
								<c:if test="${reviews==null}">
									<div class="board-box">
										<p class="nodata">게시물이 없습니다.</p>
									</div>
								</c:if>
								<c:if test="${reviews!=null}">
									<c:forEach var="item" items="${reviews }">
										<div class="board-box">
											<p><b>${item.memId}</b>&nbsp;
											<span><small>
												<fmt:parseDate value="${item.proboardDate}" pattern="yyyy-MM-dd HH:mm:ss.S" var="parseDateTime" type="both"/>
												<fmt:formatDate value="${parseDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
											</small></span>
											</p>
											<p>${item.proboardContent}</p>
										</div>
									</c:forEach>
									
										<div id="write-box">
											<label for="writebox-content">리뷰 내용 * </label><input type="text" id="writebox-content"><br><button id="insertreview">작성 완료</button>
										</div>
										<c:if test="${reviewcount > 5}">
										<div id="review-btn-div">
											<button type="button" id="moreList">- Show More - </button>
										</div>
										</c:if>
										<script type="text/javascript">
											let page = 5;
											let id = '${list.productId}';
											
											if(document.getElementById("moreList")){
											document.getElementById("moreList").addEventListener("click",function(){
												console.log(page);
												fetch("${pageContext.request.contextPath}/getMoreReview", 
														{ method: "POST",
														  headers: {
														    "Content-Type": "application/json"
														  },
														  body: JSON.stringify({id: id,page: page})
														}).then((response) => response.json())
														.then((data) => {
															console.log("hi");
															for( review in data){
																console.log(data[review].memId);
															
															var box = document.getElementById("write-box");
															var div = document.createElement("div");
															var p = document.createElement("p");
															var p1 = document.createElement("p");
															var b = document.createElement("b");
															var text = document.createTextNode("\u00a0\u00a0");
															var span = document.createElement("span");
															var small = document.createElement("small");

															div.setAttribute("class","board-box fadeIn");
															b.innerText= data[review].memId;
															small.innerText = data[review].proboardDate.slice(0,19);
															span.append(small);
															p.append(b);
															p.append(text)
															p.append(span);
															p1.innerText= data[review].proboardContent;
															div.append(p);
															div.append(p1);
															
															box.before(div);
															if(page>=${reviewcount})document.getElementById("moreList").style.display="none";
															}
														});
												page = page+5;
											});
											}
										</script>
								</c:if>
							</div>
						</div>
						<div id="btn-box1">
							<form action="">
								<c:if test="${sessionScope.user != null}">
									<button id="write-btn1" type="button">write</button>
								</c:if>
							</form>
						</div>
							<script type="text/javascript">
								if(document.getElementById("write-btn1")){
								document.getElementById("write-btn1").addEventListener("click",function(){
									if(document.getElementById("write-box").style.display=="block"){
										document.getElementById("write-box").style.display="none";
									}else{
										document.getElementById("write-box").style.display="block";
									}
								});
								document.getElementById("insertreview").addEventListener("click",function(e){
									e.preventDefault();
									let today = new Date();

									let year = today.getFullYear();
									let month = ('0' + (today.getMonth() + 1)).slice(-2);
									let day = ('0' + today.getDate()).slice(-2);
									let hours = ('0' + today.getHours()).slice(-2); 
									let minutes = ('0' + today.getMinutes()).slice(-2);
									let seconds = ('0' + today.getSeconds()).slice(-2); 							
									let proboardDate = year + '-' + month  + '-' + day +" "+ hours + ':' + minutes  + ':' + seconds;
									
									
									let proboardContent = document.getElementById("writebox-content").value;
									let proboardTitle = "리뷰 제목"
									let memId = '${sessionScope.user.memId}';
									let productId= ${list.productId}
									
									fetch("${pageContext.request.contextPath}/insertreview", 
										{ method: "POST",
										  headers: {
										    "Content-Type": "application/json"
										  },
										  body: JSON.stringify({proboardContent,productId, proboardTitle,memId,proboardDate})
										}).then((response) => response.json())
										.then((data) => {
											let box = document.getElementById("board-p");
											let div = document.createElement("div");
											let p = document.createElement("p");
											let p1 = document.createElement("p");
											let b = document.createElement("b");
											var text = document.createTextNode("\u00a0\u00a0");
											let span = document.createElement("span");
											let small = document.createElement("small");

											div.setAttribute("class","board-box");
											b.innerText= memId;
											small.innerText = proboardDate;
											span.append(small);
											p.append(b);
											p.append(text)
											p.append(span);
											p1.innerText= proboardContent;
											div.append(p);
											div.append(p1);
											box.after(div);
											
											document.getElementById("writebox-content").value="";
											
										});
								})
								}
							</script>
						
						
					</div>


					<div style="display: none">

						<div class="board">
							<h3>Q&A</h3>
							<p id="board-p2">상품에 대해 궁금한 점을 해결해 드립니다.</p>
							<c:if test="${qna==null}">
								<div class="board-box">
									<p class="nodata">게시물이 없습니다.</p>
								</div>
							</c:if>
							<c:if test="${qna!=null}">
									<c:forEach var="item" items="${qna}">
										<div class="board-box">
											<p><b>${item.memId}</b>&nbsp;
											<span><small>
												<fmt:parseDate value="${item.proboardDate}" pattern="yyyy-MM-dd HH:mm:ss.S" var="parseDateTime" type="both"/>
												<fmt:formatDate value="${parseDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
											</small></span>
											</p>
											<p>${item.proboardTitle}</p>
											<p>${item.proboardContent}</p>
										</div>
									</c:forEach>
									<div id="write-box2">
										<label for="writebox-title2">문의 제목 * </label>
										<input type="text" id="writebox-title2"><br>
										
										<textarea id="writebox-content2" placeholder="문의 내용"></textarea><br><button id="insertqna">작성 완료</button>
									</div>
									<c:if test="${qnacount > 5}">
										<div id="review-btn-div2">
											<button type="button" id="moreList2">- Show More - </button>
										</div>
										</c:if>
										<script type="text/javascript">
											let page2 = 5;

											
											if(document.getElementById("moreList2")){
											document.getElementById("moreList2").addEventListener("click",function(){
												console.log(page2);
												fetch("${pageContext.request.contextPath}/getMoreQna", 
														{ method: "POST",
														  headers: {
														    "Content-Type": "application/json"
														  },
														  body: JSON.stringify({id: id,page: page2})
														}).then((response) => response.json())
														.then((data) => {
															console.log("hi");
															for( qna in data){
																console.log(data[qna].memId);
															
															var box = document.getElementById("write-box2");
															var div = document.createElement("div");
															var p = document.createElement("p");
															var p1 = document.createElement("p");
															var p2 = document.createElement("p");
															var b = document.createElement("b");
															var text = document.createTextNode("\u00a0\u00a0");
															var span = document.createElement("span");
															var small = document.createElement("small");

															div.setAttribute("class","board-box fadeIn");
															b.innerText= data[qna].memId;
															small.innerText = data[qna].proboardDate.slice(0,19);
															span.append(small);
															p.append(b);
															p.append(text)
															p.append(span);
															p1.innerText= data[qna].proboardTitle;
															p2.innerText= data[qna].proboardContent;
															div.append(p);
															div.append(p1);
															div.append(p2);
															
															box.before(div);
															if(page2>=${qnacount})document.getElementById("moreList2").style.display="none";
															}
														});
												page2 = page2+5;
											});
											}
										</script>
								</c:if>
						</div>
						<div id="btn-box2">
							<form action="">
								<c:if test="${sessionScope.user != null }">
									<button id="write-btn2" type="button">write</button>
								</c:if>
							</form>
						</div>
						<script>
						if(document.getElementById("write-btn2")){
						document.getElementById("write-btn2").addEventListener("click",function(){
									if(document.getElementById("write-box2").style.display=="block"){
										document.getElementById("write-box2").style.display="none";
									}else{
										document.getElementById("write-box2").style.display="block";
									}
						});
						document.getElementById("insertqna").addEventListener("click",function(e){
							e.preventDefault();
							let today = new Date();

							let year = today.getFullYear();
							let month = ('0' + (today.getMonth() + 1)).slice(-2);
							let day = ('0' + today.getDate()).slice(-2);
							let hours = ('0' + today.getHours()).slice(-2); 
							let minutes = ('0' + today.getMinutes()).slice(-2);
							let seconds = ('0' + today.getSeconds()).slice(-2); 							
							let proboardDate = year + '-' + month  + '-' + day +" "+ hours + ':' + minutes  + ':' + seconds;
							
							
							let proboardContent = document.getElementById("writebox-content2").value;
							let proboardTitle = document.getElementById("writebox-title2").value;
							let memId = '${sessionScope.user.memId}';
							let productId= ${list.productId}
							
							fetch("${pageContext.request.contextPath}/insertqna", 
								{ method: "POST",
								  headers: {
								    "Content-Type": "application/json"
								  },
								  body: JSON.stringify({proboardContent,productId, proboardTitle,memId,proboardDate})
								}).then((response) => response.json())
								.then((data) => {
									let box = document.getElementById("board-p2");
									let div = document.createElement("div");
									let p = document.createElement("p");
									let p1 = document.createElement("p");
									let p2 = document.createElement("p");
									let b = document.createElement("b");
									var text = document.createTextNode("\u00a0\u00a0");
									let span = document.createElement("span");
									let small = document.createElement("small");

									div.setAttribute("class","board-box");
									b.innerText= memId;
									small.innerText = proboardDate;
									span.append(small);
									p.append(b);
									p.append(text);
									p.append(span);
									p1.innerText= proboardTitle;
									p2.innerText= proboardContent;
									div.append(p);
									div.append(p1);
									div.append(p2);
									box.after(div);
									
									document.getElementById("writebox-content2").value="";
									document.getElementById("writebox-title2").value="";
								});
						});
						}
						</script>
					</div>
					
				</div>
			</div>

		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".tab_title div").click(function(){
				var idx=$(this).index();
				$("html").animate({scrollTop : 0}, 0);
				$(".tab_title > div").removeClass("on");
				$(".tab_title > div").eq(idx).addClass("on");
				
				$(".tab_cont > div").hide();
				$(".tab_cont > div").removeClass("fadeIn")
				$(".tab_cont > div").eq(idx).addClass("fadeIn");
				$(".tab_cont > div").eq(idx).show();
			})
		});
		
		$("select option[value*='사이즈선택']").prop('disabled',true);
		
	</script>
</body>
</html>