<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
input{
width:80px;
border:none;
text-align:center;
background-color:gray;
color:white;
cursor:pointer;
}
button{
cursor:pointer;
background-color:gray;
border:none;
color:white;
width:50px;
height:50px;
}

.grid-container{
	display:grid;
	
	grid-template-columns: 1fr;
	text-align:center;
}
table{
width:80%;
height:100px;
font-size:12px;
border:1px solid black;


}
th,td{
border:1px solid darkblue;
}
.black{
background-color:gray;
color:white;
}
label{
margin-right:1rem;
font-weight:600;
}
span{
display:inline-block;

height:40px;
padding-bottom:10px;
border-radius:10px;
}

.img{
width:75px;
height:75px;

}
.CSInfo{
	display: flex;
    flex-direction: column;
    align-items: center;
}
.CSInfo h1{
width:100%;
}
#pid{
border:none;
background-color:white;
color:black;
}
.table{
border-collapse:collapse;
border:1px solid black;


}
.table tr> th:nth-child(2),.table tr> th:nth-child(4),.table tr> th:nth-child(9),.table tr> th:nth-child(11){
	white-space: nowrap;
}
.table th{
	padding:5px;
}
.h1{
margin-left:20px;
margin-top:20px;
text-align:left;
}
#orderStatus{
	background-color:white;
	color: black;
	border-radius:5px;
	height:30px;
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
				<div class="grid-container">
				<div class="CSInfo">
				<h1 class="h1">배송 상태</h1>
				
				
				
				<table class="table">
				<tr>
				<th>고객 번호</th>
				<th>고객명</th>
				<th>주소</th>
				<th>우편번호</th>
				<th>핸드폰 번호</th>
				<th>상품 고유 번호</th>
				<th>상품 이름</th>
				<th>상품 이미지</th>
				<th>상품 가격</th>
				<th>상품 수량</th>
				<th>가격 * 수량</th>
				<th class="black">배송 상태</th>
				<th>배송시<br>주의사항</th>
				<th class="black">배송 상태 수정</th>
				</tr>
				<c:forEach var="list" items="${list}">
				<form action="${pageContext.request.contextPath}/viser/CSOrderModify">
				<tr>
				
				<th>${list.id}</th>
				<th>${list.receiverName}</th>
				<th>${list.receiverAddress2}${list.receiverAddress3}</th>
				<th>${list.receiverAddress1}</th>
				<th>${list.receiverPhone}</th>
				<th><input type="text" name="productId" id="pid" value="${list.productId}"/></th>
				<th>${list.productName}</th>
				<th><img class="img" src="${pageContext.request.contextPath }/${list.productImage}" alt="" /></th>
				<th><fmt:formatNumber value="${list.productPrice}" pattern="#,###" />원</th>
				<th>${list.productCount}</th>
				<th><fmt:formatNumber value="${list.orderPrice}" pattern="#,###" />원</th>
				<th class="black"><select name="orderStatus" id="orderStatus">
			<option value="배송준비중">배송준비중</option>
			<option value="배송중">배송중</option>
			<option value="배송완료">배송완료</option>
			</select></th></th>
				<th>${list.orderMsg}</th>
				<th class="black"><button>수정</button></th>
				</tr>
				</form>
				</c:forEach>
				
				</table>
			
				
			
				
				</div>

				</div>
				
			</div>
		</main>
		<footer>
		
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
		</div>
</body>
</html>