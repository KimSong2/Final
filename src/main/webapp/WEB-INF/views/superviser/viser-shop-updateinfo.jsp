<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
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
body{
margin:0px;
padding:0px;
overflow-x:hidden;
}
 header {
	height:70px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color:#f1f1f1;
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
            
        
        }

        section {
            width: 70vw;

        }

        button {
            cursor: pointer;
        }
        html {
            scroll-behavior: smooth;
        }

        

    
        #main-container {
            height:100%;
            display: flex;
            flex-direction: column;
            
            align-items: center;
        }
        
        
       
       

        #sec2 nav {
            flex: 1;
            padding: 0 20px 0 0;
            border-right: 1px solid black;
            height:500px;
        }

          #sec2 nav ul{
            position: relative;
            top: 28%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
       
        #sec2-div1 ul {
            width: 100%;
            background-color: white;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }

   
       
        #sec2-div2 li {
            display: block;
            font-size: 13px;
        }
        #sec2-div2-sel{
            padding:10px;
            height: 25px;
            border:5px solid white;
        }
        #sec2-div3{
            margin-top:20px;
        }
        #sec2-div3-table1{
            border-collapse: collapse;
            width:100%;
        }
        #sec2-div3-table1 td{
            text-align: center;
            border:1px solid black;
        }
        #sec2-div3-table2{
            border-collapse: collapse;
            
        }
        #sec2-div3-table2 td{
            text-align: center;
            
        }
      
        .productinfo-grid{
        margin : 0 auto;
        
            width: 80%;
            display: grid;
            grid-template-columns: 1fr 2fr 2fr;
            gap: 3%;
            height: 500px;
            overflow: scroll;
        }
        .productinfo-grid img{
           width:100%;
           height:100%;
        }
        h3{
           
            margin-bottom: 5px;
        }
        .info-modify{

            margin: 0 auto;
        }
        
       
        
        label{
            display: inline-block;
            width: 100px;

        }
        #btn2,#btn1{
            border-radius:5px;
            width: 200px;
            height: 40px;
            background-color: black;
            color: #ccc;
            font-size: 1rem;
            border: 1px solid white;
        }
       #btn1{
       	cursor:pointer;
        display: inline-block;
        
       }
      
        .content::-webkit-scrollbar{
            overflow: scroll;
            
        }
        .productinfo-grid::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera*/
}
.btns{
    display: flex;
    width: 100%;
    gap: 5%;
  
    align-items: center;
    justify-content: center;
}

.img img{
    width: 600px;
}
.first{
margin-top:200px;
}

.second img{
	width:500px;
	height:500px;
}
#changeImg{
	display:none;
}
.block{
	display:block !important;
}

.info{
color:darkgray;
margin-left:30px;
}
footer{
height:100px;
}
footer img{
width:32px;
height:32px;
}
#productInfo{
	display:grid;
	grid-template-columns:1fr 1fr;
	gap:30px;
	margin-top:50px;
}
#productInfo img{
	width:400px;
	height: 350px;
}
input{
	width:200px;
	margin-bottom:10px;
	height:30px;
	
}
.content{
	width:150px;
}
.contentimg{
	width:300px;
}
    </style>
</head>

<body>

    <div id="container">
        <header>
        <%@ include file="../frame/viser/top.jsp"%>
        </header>

        <main>
            <div id="main-container">
                    <div id="productInfo">
                    	<div>
                    		<img alt="" src="${pageContext.request.contextPath}/${list.productImage}">
                    	</div>
                    	
                    	<div>
                    		<form action="${pageContext.request.contextPath}/viser/update">
                    		<label for="productName">상품 번호</label><input type="text" class="content" name="productId" value="${list.productId}" readonly><br>
                            <label for="productName">상품명</label><input type="text" class="content" name="productName" value="${list.productName}"><br>
                            <label for="productShop">업체명</label><input type="text" class="content" name="productShop" value="${list.productShop}"><br>
                            
                            <label for="productCategory">상품 카테고리</label><input type="text" class="content" name="productCategory" value="${list.productCategory}"><br>
                            <label for="productTotal">상품 수량</label><input type="number" class="content" name="productTotal" value="${list.productTotal}"/><br />
                            <label for="productPrice">상품 가격</label><input type="number" class="content" name="productPrice" value="${list.productPrice }"><br>
                            <label for="productImage">상품 이미지</label><input type="text" class="contentimg" name="productImage" value="${list.productImage}" ><br>
                            <label for="productContent">상품 설명</label><input type="text"id="productContent" class="contentimg" name="productContent" value="${list.productContent}"><br>
                             <input type="button" id="btn1" value="상품 설명 보기"><button id="btn2">수정하기</button>
                             </form>
                    	</div>
                    </div>
                    <div id="artcontainer">
                            <div class="info-modify">
                                <div class="img">
                                    <img id="changeImg" src="${pageContext.request.contextPath}/${list.productContent}" alt="" />
                                </div>
                            </div>
                        </div>
            </div>
                         
                                
</main>
                                
                            
             
        
 <footer>
      <%@ include file="../frame/viser/footer.jsp" %>
    </footer>
        
    </div>
   
    <script>
   
    
	document.getElementById("btn2").addEventListener("click",function(){
		alert("수정이 완료되었습니다");
	});
	
	document.getElementById("btn1").addEventListener("click",function(e){
		e.preventDefault;
		document.getElementById("changeImg").classList.toggle("block");
		
	});
    </script>
    
</body>

</html>