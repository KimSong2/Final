<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.create-form{
width:100%;
margin:0 auto;
text-align:center;
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




.art1{
    width: 80%;
    margin: 0 auto;
    border-top: 2px solid black;
   }
   .art2{
    width: 60%;
    margin: 0 auto;
    height: 50px;
    background-color: black;
    color: white;
    text-align: center;
    
   }
  
   .art3-container{
    flex:8;
    margin: 0 auto;
    display: flex;
   
    align-items: center;
    overflow: hidden;
    gap:1vw;
   }
   .art3-container button{
   width:50px;
   height:30px;
   background-color:black;
   color:white;
   border-radius:5px;
   cursor:pointer;
  	margin-left:3px;
   }
   .art3-container button:hover{
   background-color:white;
   color:black;
   }
  .art3-container-span{
    display: inline-block;
    width: 50px;
    text-align: center;
    border: 2px solid darkcyan;
    color: darkcyan;
    border-radius: 1rem;
  }
  .art3-first{
  	flex:4;
   
  }
  .art3-first a{
  margin-left : 10px;
  }
  .art3-second{
    flex:6;
    display: flex;
    flex-direction: column;
    height:100%;
    gap:10px;
    
  }
  .art3-third{
    text-align: right;
    width: 100%;
    margin-right: 30px;
  }
  .h1{
  width:80%;
  margin:0 auto;
  margin-top:20px;
  margin-bottom:20px;
  }
  
  #boardId{
  width:15px;
      border: none;
  }
  .create{
 
  width:100%;
  
  
  }
  
  .create label{
  width: 80px;
  display:inline-block;
  }
  .create input{
  width:60%;
	 font-weight: 600;
	 font-size: 1.3rem;
    height:60px;
    color: rgb(70, 68, 68);
    border:1px solid #ccc;
    border-radius:1rem;
  }
  #boardTitle{
height: 20px;
    width: 50%;
  }
  
  .create button{
  margin-top:15px;
  margin-bottom:15px;
  
  width:15%;
  height:50px;
  border: none;
  color:white;
  background-color:black;
  font-size:25px;
  border-radius:10px;
  }
  #btn3{
  margin-left:0;
  }
  .create button:hover{
  
  background-color:#ccc;
  color:black;
  }
  .h2{
  text-align:center;
  }
  .btn-container{
      gap: 10px;
  
    text-align: center;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: center;
  }
  .div-container{
  text-align:left;
  margin-left:300px;
  }
  
  .modiform {
 	 width: 85%;
    display: flex;
    flex-direction: row;
    margin: 0 auto;
    padding: 25px 0px;
    border-bottom: 1px solid #ededed;
    gap: 1vw;
  }
  
  .art3-first-in {
  display: flex;
    gap: 1rem;
  }
  
  .art3-first-in > p {
  margin : 0;
  }
  
  textarea {
  resize:none;
  flex: 4;
    width: 98%;
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
					<li><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li style="text-decoration:underline"><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li><a href="${pageContext.request.contextPath}/viser/hotelRes">예약 확인</a></li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
			    <article class="art3">
       				<h1 class="h1">공지사항/수정/삭제</h1>
       				<div class="create">
    					<form class="create-form"  action="${pageContext.request.contextPath}/viser/create/modify">
							<h1 class="h2">공지사항 새로 추가하기</h1>
							<label for="boardTitle"><h2 class="h2">제목</h2></label> <input type="text" id="CTT" name="boardTitle" placeholder="제목을 입력하세요" value=""/><br />
							<label for="boardContent"><h2 class="h2">내용</h2></label> <input type="text" id="CCT" name="boardContent" placeholder="내용을 입력하세요" value=""/><br />
							<button>생성하기</button> <button id="btn3">생성 내용 미리보기</button>
							<input type="hidden" name="boardCategory" value="공지사항"/>
							<input type="hidden" name="isDelete" value="0"/>
							<%-- <input type="hidden" value="${mem.id}" name="id" /> --%>
								<div class="div-container">
									<h2>생성 제목 : <span id="CT"></span> </h2>
									<h3>생성 내용 : <span id="CC"></span> </h3>
								</div>
						</form>
					</div>
        			<c:forEach var="item" items="${list}">
        			<form action="${pageContext.request.contextPath}/viser/delete/modify" class="modiform">
      					<div class="art3-container">
        					<div class="art3-first">
        						<div class="art3-first-in">
        						<input type="text" name="boardId" id="boardId" value="${item.boardId}" readonly/> 
        							<p class="art3-container-span">제목</p>
        							<p>${item.boardTitle}</p>
        						</div>
        						<p>${item.boardContent}</p>
        						<%-- <input type="text" name="boardTitle" id="boardTitle" value="${item.boardTitle}"/> --%>
        					</div>
        					<div class="art3-second">
        						
        						<input type="text" name="boardTitle" id="boardTitle" placeholder="수정할 제목을 입력해주세요."/>
        						<textarea name="boardContent" id="boardContent" placeholder = "수정할 내용을 입력해주세요."></textarea>
        						<input type="hidden" name="isDelete" id="delete" class="delete" value=""/>
        						
        					</div>
        					
        					<%-- <div class="art3-third">
       							상태 : ${item.isDelete} <br />
         						1 == 삭제상태, 0 == 공개상태 <br />
         					</div> --%>
      					</div>
      					<div class="btn-container">
        					<button class="btn1" id="btn1">수정</button>
        					<button class="btn2" id="btn2">삭제</button>
        				</div>
   					</form>
    			</c:forEach>
    			
    		</article>
		</div>
	</main>
		<footer>
		
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
		</div>
	 <script>
		document.getElementById("btn3").addEventListener("click",function(e){
 			
			 var CTT = document.getElementById("CTT").value;
            var CCT = document.getElementById("CCT").value;
           
           document.getElementById("CT").innerText =CTT;
			document.getElementById("CC").innerText = CCT;
			
			e.preventDefault();
		});
                                        for(let i=0; i<100; i++){
                                    	   document.getElementsByClassName('btn1')[i].addEventListener("click",function(){
                                    		   document.getElementsByClassName('delete')[i].value = 0;
                                    			alert("수정에 성공하셨습니다.")
                                    		});
                                    	   document.getElementsByClassName('btn2')[i].addEventListener("click",function(){
                                    		   document.getElementsByClassName('delete')[i].value = 1;
                                    			alert("삭제에 성공하셨습니다.")
                                    		});
                                       }
                                       
                                 	
                                       </script>
</body>
</html>