<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="${pageContext.request.contextPath}/final/css/frame/shop/header.css?11">

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
	width: 500px;
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
	grid-template-columns: 1fr 3fr;
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
keyframes fadeIn { 0%{
	opacity: 0;
}

100


%
{
opaciry


:


1
;


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
		<form action="${pageContext.request.contextPath}/delete/success/${list.productId}">
			<div id="main-container">
				<div id="main-box">
					<div id="main1">
						<img src="/FinalProject/${list.productImage}">
					</div>
					<div id="main2">
						<h3>${list.productName}</h3>
						<p id="p-line">
							BRAND-NAME <span>ㅡ</span> ${list.productShop}
						</p>
						<p id="p-line1">MADE IN KOREA</p>
						<br>
						<button id="btn">제품을 삭제하겠습니다.</button>
						
					</div>
				</div>
			</div>
			</form>
		</main>
		<script type="text/javascript">
			document.getElementById("btn").addEventListener("click",function(){
				if(confirm("제품을 삭제하시겠습니까?")){
					
				}
			})
		</script>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>

</body>
</html>