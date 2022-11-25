<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">


<title>Insert title here</title>
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
	background-color:#ccc;
	font-size:1rem;
	
	cursor:pointer;
}

label {
	line-height : 3rem;
/* 	width : 5rem; */
}
table, td,th{
text-align:center;
border:1px solid black;
}
.table{
width:80%;
margin:0 auto;
border-collapse:collapse;
border:1px solid black;

}
.table td{
	height:40px;
}
.h1{
margin-left:20px;
margin-top:20px;
}
#btn{
	border:1px solid black;
}
#orderStatus{
text-align:center;
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
					<li><a style="text-decoration:underline" href="#">쇼핑몰 배송 현황</a></li>
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
			<h1 class="h1">고객 정보</h1>
			<table class="table">
			<tr>
			<th>고유번호</th>
			<th>권한</th>
			<th>이름</th>
			<th>아이디</th>
			<th>주소</th>
			<th>우편번호</th>
			<th>핸드폰번호</th>
			<th>성별</th>
			
			<th>배송상태</th>
			<th>주문정보 들어가기</th>
			</tr>
			<c:forEach var="list" items="${list}">
			<form action="${pageContext.request.contextPath}/viser/CSOrderInfo/${list.id}">
			<tr>
			<td>${list.id}</td>
			<td><c:if test="${list.who=='admin'}">관리자</c:if><c:if test="${list.who=='member'}">고객</c:if></td>
			<td>${list.memName}</td>
			<td>${list.memId}</td>
			<td>${list.memAddress}${list.memDetailaddress}</td>
			<td>${list.memOaddress}</td>
			<td>${list.memPhone}</td>
			<td>${list.memGender }</td>
			
			<th><select name="orderStatus" id="orderStatus">
			<option value="배송준비중">배송준비중</option>
			<option value="배송중">배송중</option>
			<option value="배송완료">배송완료</option>
			</select></th>
			<td><button id="btn">click!</button></td>
		</tr>
		</form>
		</c:forEach>
			</table>
			
			
			
			</div>
		</main>
		<footer>
		
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
</body>
</html>