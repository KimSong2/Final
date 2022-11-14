<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        body {
            height: 100vh;
        }
		img{
			width:100px;
			height:100px;
		}
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 1fr 1fr 1fr;
            grid-template-columns: 1fr;
            grid-template-areas: 'header' 'main' 'footer';
        }

       

        main {
            width: 100%;
            background-color: #f5ebe0;
        
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
            justify-content: center;
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
            background-color: #f5ebe0;
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
            display: grid;
            width: 1000px;
            margin: 0 auto;
            margin-top: 5rem;
        grid-template-columns: 1fr 1fr 1fr;
        }
        
        form{
            width: 1000px;
        }
        input{
            
            margin-bottom: 20px;
            text-align: center;
            width: 60%;
            height: 40px;
            font-size: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        label{
            display: inline-block;
            width: 200px;

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
        display: inline-block;
        margin-left:300px;
       }
        #btn1:hover,#btn2:hover{
            background-color: white;
            color: black;
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
   
    
   
    width: 400px;
    height: 400px;
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
.modify{
width:100%;
height:70px;
text-align:center;
border-top:1px solid black;
border-bottom:1px solid black;
margin-bottom:30px;
background-color:black;
color:white;
}
.modify h1{
margin-top:10px;
margin-right:1.4rem;
}
.info{
color:darkgray;
}
    </style>
</head>

<body>

    <div id="container">
        <header>
           <%@ include file="../frame/mypage/header.jsp" %>
        </header>

        <main>
            <div id="main-container">
                    
                        <div id="artcontainer">
							<div class="modify">
							<h1>수정페이지</h1>
							</div>
							<div class="info">
							<h1>수정정보</h1>
							</div>
                            <div class="productinfo-grid">
                            <div class="first">
                                <h3>상품번호 : ${list.productId}</h3>
                                <h3>상품명 : ${list.productName}</h3>
                                <h3>상품샵 : ${list.productShop}</h3>
                                <h3>상품가격 : ${list.productPrice}</h3>
                                <h3>상품수량 : ${list.productTotal}</h3>
                            </div>

                            <div class="second">
                                <h2>상품 이미지</h2>
                                <img src="/FinalProject/${list.productImage}" alt="">
                               
                            </div>

                            <div class="third">
                            	<h2>상품 설명(장문)</h2>
                                <img src="/FinalProject/${list.productContent}" alt="" />
                            </div>
                            
                        </div>
					
				
                            <div class="info-modify">
                                <div>
                                <form action="${pageContext.request.contextPath}/viser/update">
                                <label for="productName">변경할 상품 번호</label><input type="text" name="productId" value="${list.productId}" readonly><br>
                                <label for="productName">상품명</label><input type="text" name="productName" value="${list.productName}"><br>
                                <label for="productShop">상품샵</label><input type="text" name="productShop" value="${list.productShop}"><br>
                                <label for="productImage">상품 이미지</label><input type="text" name="productImage" value="${list.productImage}" id="productImage"><br>
                                <label for="productContent">상품 설명</label><input type="text" name="productContent" value="${list.productContent}"><br>
                                <label for="productCategory">상품 카테고리</label><input type="text" name="productCategory" value="${list.productCategory}"><br>
                                <label for="productTotal">상품 수량</label><input type="number" name="productTotal" value="${list.productTotal}"/><br />
                                <label for="productPrice">상품 가격</label><input type="number" name="productPrice" value="${list.productPrice }"><br>
                                <label for="productOpt">상품사이즈</label><input type="text" name="productOpt" value="${list.productOpt}"><br>
                                
                              <input type="button" id="btn1" value="이미지미리보기">
                              
                                <button id="btn2">수정하기</button>
                            </div>
                                <div class="img">
                                    <img id="changeImg" src="" alt="" />
                                     </div>
                              
                            </form>
                            
                            </div>
                            </div>
                            </div>
                         
                                

                                
                            
             
        

        
    </div>
    <script>
   
    
	document.getElementById("btn2").addEventListener("click",function(){
		alert("수정이 완료되었습니다");
	});
	
	document.getElementById("btn1").addEventListener("click",function(e){
		e.preventDefault;
		 var img = document.getElementById("productImage").value;
		document.getElementById("changeImg").src = img;
		document.getElementById("changeImg").style.display ='block';
		console.log(img);
		
	});
    </script>
    
</body>

</html>