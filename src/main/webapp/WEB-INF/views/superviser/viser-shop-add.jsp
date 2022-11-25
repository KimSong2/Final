<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
#sec2{
	display: flex;
    flex-direction: column;
    align-items: center;
}

#sec2-form {
	display: flex;
    flex-direction: column;

}

footer {
	grid-area: footer;
	
}
footer li{
line-height:100%;
}
footer p{
width:100%;
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
.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
	margin: 1rem 0 1rem 5rem;
}

label {
	line-height : 1.6rem;
}

#proc_category {
width :11rem;
 height : 30px;
}

p {
	display : inline-block;
	width : 10rem;
}


input {
	height : 30px;
	border-radius : 5px;
	
}
.options{
	width:169px;
	margin-left:160px;
	margin-bottom: 9px;
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
				<li><a href="${pageContext.request.contextPath}/viser/main">쇼핑몰 배송 현황</a></li>
					<li style="text-decoration:underline"><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
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
			<h1 style="width:100%">&nbsp;&nbsp;상품 등록</h1>
			<form id="sec2-form" action="${pageContext.request.contextPath}/viser/add-success" enctype="multipart/form-data" method="post">
				<label for="proc_name"><p>상품 이름</p><input type="text" name="productName" id="proc_name"/></label>
				<label for="proc_shop"><p>업체 이름</p><input type="text" name="productShop" id="proc_shop"/></label>
				
				
				<label for="proc_content"><p>상품 썸네일</p><input type="file" name="contImage" id="proc_content" required=false/></label>
				
				<div class= "select_img2"><img src=""/></div>
				
				<label for="proc_image"><p>상품 이미지</p><input type="file" name="thumnail" id="proc_image"  required=false/></label>
				
				<div class = "select_img1"><img src=""/></div>
				
				<label for="proc_category"><p style="width: 9.6rem;">카테고리</p>
					<select id="proc_category" name="productCategory">
						<option value="choice">카테고리를 선택하세요</option>
						<option value="line">-----------------</option>
						<option value="home">Home</option>
						<option value="walk">Walk</option>
						<option value="carrier">Carrier</option>
						<option value="clothes">Clothes</option>
						<option value="dining">Dining</option>
						<option value="grooming">Grooming</option>
						<option value="toy">Toy</option>
						<option value="food">Food</option>
					</select>
				</label>
				<label><p>옵션</p><input name="options" type="text"></label><button type="button" id="plus-option">추가</button>
				<script type="text/javascript">
					document.getElementById("plus-option").addEventListener("click",function(){
						let div = document.createElement("div");
						let input = document.createElement("input");
						input.setAttribute("name","options");
						input.setAttribute("class","options");
						input.setAttribute("type","options");
						let sp = document.createElement("span");
						sp.innerText="  X";
						sp.style.color="red";
						sp.style.cursor="pointer";
						sp.addEventListener("click",function(){
							input.remove();
							sp.remove();
						})
						div.append(input);
						div.append(sp);
						this.before(div);
						
						
					});
				</script>
				
				<label for="proc_price"><p>상품 가격</p><input type="text" name="productPrice"></label>
				
					<button>상품 등록</button>
				
				
				
				
				
				</form>
			</div>
		</main>
		<footer>
		
				<%@ include file="../frame/main/footer.jsp"%>
		</footer>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>
		 $("#proc_image").change(function(){
			   if(this.files && this.files[0]) {
			    var reader1 = new FileReader;
			    reader1.onload = function(data) {
			     $(".select_img1 img").attr("src", data.target.result).width(150).height(150);        
			    }
			    reader1.readAsDataURL(this.files[0]);
			   }
			  });
		 
		 
		 $("#proc_content").change(function(){
			   if(this.files && this.files[0]) {
			    var reader2 = new FileReader;
			    reader2.onload = function(data) {
			     $(".select_img2 img").attr("src", data.target.result).width(150).height(200);        
			    }
			    reader2.readAsDataURL(this.files[0]);
			   }
			  });
		</script>
		
	
		
		
</body>
</html>