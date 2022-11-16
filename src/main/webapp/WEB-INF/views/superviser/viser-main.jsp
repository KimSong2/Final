<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<style>
body{
margin:0px;
padding:0px;
overflow-x:hidden;
}
#container {
		margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
	width: 100vw;
	height: 100vh;
	display: grid;
	grid-template-columns: 300px 1fr;
	grid-template-rows: 70px 1fr 70px;
	grid-template-areas: 'header header' 'main main'
		'footer footer';
}
footer p{
display:inline;
}

header {
	grid-area: header;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color:#f1f1f1;
}


main{
	display: grid;
	grid-area : main;
	grid-template-columns:300px 1fr;
}

#sec1 {
	height: 100%;
	align-items: center;
 	padding-left: 2.4rem; 
	padding-top:4rem;
	border-right : 2px solid black;
}

#sec2-form {
	display: flex;
    flex-direction: column;
    padding-top : 4rem;
    padding-left : 4rem;
}

footer {
	grid-area: footer;
}
footer li{
line-height:100%;
}
li {
	list-style: none;
	line-height: 3.5rem;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: gray;
	width: 200px;
}

a:hover {
	color: black;
}

.li{
    margin-left: 30px;
}

.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
}

label {
	line-height : 3rem;
width : 5rem; 
}
form{
display:flex;
flex-direction: column;
justify-content:center;
align-items:center;
width:100%;
height:500px;
text-align:center;
}
form input{
width:300px;
height:50px;
border-radius:10px;
border:2px dotted darkblue;
margin-bottom:5px;
text-align:center;
}
form button{
width:200px;
height:30px;
border-radius:10px;
border:1px dotted darkblue;
cursor:pointer;
background-color:black;
color:white;

}
form button:hover{
background-color:white;
color:black;
border:1px solid black;
}
.h1{
margin-left:20px;
margin-top:20px;
}
p{

}
</style>

</head>
<body>
	<div id="container">
		<header>
        <%@ include file="../frame/viser/top.jsp"%>
        </header>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				
				<ul>
				
				<h2>쇼핑몰</h2>
				<li><a style="text-decoration:underline" href="${pageContext.request.contextPath}/viser/main">쇼핑몰 배송 현황</a></li>
					
					<li><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li><a href="${pageContext.request.contextPath}/viser/hotelRes">예약 확인</a></li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
				
			<div id="sec2">
			<h1 class="h1">고객 검색</h1>
			<div class="sec2-container">
			
			<form action="${pageContext.request.contextPath}/viser/memInfo">
			<input type="text" id="name" name="memName" value="" placeholder="이름을 검색하세요(정확히)"/><br />
			<button id="memName" >검색하기</button>
			</form>
			
			</div>
			</div>
		</main>
		 
		</div>
		<footer>
      <%@ include file="../frame/viser/footer.jsp" %>
    </footer>
		<script>
		
		document.getElementById("memName").addEventListener("click",function(e){
			var value = document.getElementById("name").value;
			
			
			if(value==""){
				e.preventDefault();
				alert("이름을 입력하세요");
			}
		});
		
	
		</script>
</body>
</html>