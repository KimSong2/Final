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
	href="${pageContext.request.contextPath}/final/css/frame/shop/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}

body {
	background-color: white;
	overflow-x:hidden;
}

li, a {
	list-style-type: none;
	color: black;
	text-decoration: none;
}

nav div {
	width: 100%;
	height: 100%;
}

#container {
	position: relative;
	width: 100%;
	height: 100%;
	display: grid;
	grid-template-rows: 70px 1fr 70px;
	grid-template-columns: 1fr;
}

main {
	width: 100%;
	background-color: white;
	display: flex;
	flex-direction: column;
	justify-items: center;
	align-items: center;
}

section {
	width: 100vw;
	height: 82vh;
}

.category-menu {
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

.category-menu img {
	margin-top: 10px;
	width: 40px;
	height: 40px;
}

.img-header {
	display: flex;
	align-items: center;
	justify-content: center;
}

.img-header img {
	width: 80%;
	margin-left: 10%;
	margin-bottom: 50px;
}

li {
	list-style-type: none;
}

.list p {
	width: 200px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.shopname {
	color: gray;
	font-size: 13px;
}

.flex-container {
	display: grid;
	width: 60%;
	height: auto;
	justify-content: center;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-template-rows: 1fr 1fr 1fr;
    gap: 1.2rem;
    margin-bottom: 10px;
}

.flex-container div {
	width: 100%;
}

.flex-container img {
	width: 100%;
	height: 200px;
}
.pagebtn{
	border: none;
    background-color: white;
    font-size: 15px;
    margin: 10px;
    cursor:pointer;
}
#pageBtn{
	margin: 20px 0;
}
@media ( max-width : 1500px) {
	footer {
		display: none;
	}
}

@media ( max-width : 1024px) {
	.flex-container {
		display: grid;
		width: 60%;
		height: 86vh;
		justify-content: center;
		grid-template-columns: 50% 50%;
		grid-template-rows: auto;
		margin-left: 5%;
		margin-top: 5%;
		gap: 3%;
		z-index: -1;
	}
	
		main{
	height:0%;
	}
	#pageBtn{
	display:none;
	}
}

@media ( max-width : 540px) {
	main{
	height:0%;
	}
	.flex-container {
		display: grid;
		width: 60%;
		height: 86vh;
		justify-content: center;
		grid-template-columns: 100%;
		grid-template-rows: auto;
		margin-top: 5%;
		gap: 3%;
		z-index: -1;
		margin-right:15%;
	}
	#pageBtn{
	display:none;
	}
}
</style>
</head>

<body>

	<div id="container">
		<header>
			<%@ include file="../frame/shop/header.jsp"%>
		</header>

		<main>
			<div class="category-menu">
				<li><a href="${pageContext.request.contextPath}/shop/list/home"><img
						src="${pageContext.request.contextPath}/final/image/shop/Home.png"
						alt=""><br>Home</a></li>
				<li><a href="${pageContext.request.contextPath}/shop/list/Walk"><img
						src="${pageContext.request.contextPath}/final/image/shop/Walk.png"
						alt=""><br>Walk</a></li>
				<li><a
					href="${pageContext.request.contextPath}/shop/list/Carrier"><img
						src="${pageContext.request.contextPath}/final/image/shop/Carrier.png"
						alt=""><br>Carrier</a></li>
				<li><a
					href="${pageContext.request.contextPath}/shop/list/Clothes"><img
						src="${pageContext.request.contextPath}/final/image/shop/Clothes.png"
						alt=""><br>Clothes</a></li>
				<li><a
					href="${pageContext.request.contextPath}/shop/list/Dining"><img
						src="${pageContext.request.contextPath}/final/image/shop/Dining.png"
						alt=""><br>Dining</a></li>
				<li><a
					href="${pageContext.request.contextPath}/shop/list/Grooming"><img
						src="${pageContext.request.contextPath}/final/image/shop/Grooming.png"
						alt=""><br>Grooming</a></li>
				<li><a href="${pageContext.request.contextPath}/shop/list/toy"><img
						src="${pageContext.request.contextPath}/final/image/shop/Toy.png" alt=""><br>Toy</a></li>
				<li><a href="${pageContext.request.contextPath}/shop/list/Food"><img
						src="${pageContext.request.contextPath}/final/image/shop/Food.png"
						alt=""><br>Food</a></li>
			</div>
			<div id="productList" class="flex-container">
			
			</div>
			<div id="pageBtn">
			</div>
			<input type="hidden" id="category" value="${category}"/>
		</main>
		<script>
			var pageCount=12;
			getCateList(1);

			function getCateList(page){
				$('#productList').empty();
				$('#pageBtn').empty();
				
				var category = document.getElementById("category").value;
				
				fetch("${pageContext.request.contextPath}/getPdList", { 
					method: "POST",
 				  	headers: {
 				    	"Content-Type": "application/json"
 				  	},
 				  	body:JSON.stringify({"category":category, "page":page, "pageCount":pageCount})
 				}).then((response) => response.json())
 				.then((data) => {
					
	
					var productListDiv=$("#productList");
					
					for(dict of data.list){
						
						productListDiv.append('<div class="list">'
								+'<a href="'+'${pageContext.request.contextPath}'+'/shop/main/buy/'+dict.product_id+'">'
								+'<img src="${pageContext.request.contextPath}/'+dict.product_image+'" alt="">'
								+'<p>'+dict.product_name+'</p>'
								+'<h3>'
								+dict.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원'
								+'</h3></a>'
						+'</div>');
					}
					
					
					var total=0;
					var stNum;
					var edNum;
					var preNum;
					var nextNum;
					
					total = parseInt(data.total/pageCount);
					
					if(parseInt(data.total%pageCount)!=0){
						total++;
					}
					
					stNum=parseInt(parseInt(page/10)*10);
					
					if(parseInt(page%10)!=0){
						stNum++;
					}else{
						stNum-=9
					}
					
					edNum = stNum + 10;
					
					edNum=parseInt(parseInt(edNum/10)*10);
					
					if(edNum>total){
						edNum=total;
					}
					
					
					if(page==1){
						preNum=1;
					}else{
						preNum=page-1;
					}
					if(page==total){
						nextNum=total;
					}else{
						nextNum=page+1;
					}
					
					$('#pageBtn').append(
							'<button onclick="getCateList(1)" class="pagebtn">'+'\<\<'+'</button>'
					);
					
					$('#pageBtn').append(
							'<button onclick="getCateList('+preNum+')" class="pagebtn">'+'\<'+'</button>'
					);
					
					for(var i=stNum;i<=edNum;i++){	
						if(i==page){
							$('#pageBtn').append(
									'<button onclick="getCateList('+i+')" style="color:red;" class="pagebtn">'+i+'</button>'
							);
						}else{
							$('#pageBtn').append(
									'<button onclick="getCateList('+i+')" class="pagebtn">'+i+'</button>'
							);
						}
						
					}
					
					$('#pageBtn').append(
							'<button onclick="getCateList('+nextNum+')" class="pagebtn">'+'\>'+'</button>'
					);
					
					$('#pageBtn').append(
							'<button onclick="getCateList('+total+')" class="pagebtn">'+'\>\>'+'</button>'
					);
					
 				});
			}
		</script>

		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>
</body>
</html>