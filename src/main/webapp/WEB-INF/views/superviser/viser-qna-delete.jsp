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

.h1{
margin-left:20px;
margin-top:20px;
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
    width: 80%;
    margin: 0 auto;
    display: flex;
    border: 1px solid black;
    height: 100px;
    align-items: center;
    overflow: hidden;
   }

    
   .art3-Q{
    color: darkcyan;
    font-size: 1.3rem;
    margin-right: 1.5rem;
   }

   .art3-question{
   display: flex;
   align-items:center;
  
    border-bottom: 2px solid black;
   
    cursor: pointer;
    
   }
   input:focus {outline: none;}
	.art3-question input{
	width:80%;
	 font-weight: 600;
	 font-size: 1.3rem;
    height:90px;
    color: rgb(70, 68, 68);
    border:none;
	}
	.art3-content input{
	width:80%;
	 font-weight: 600;
	 font-size: 1rem;
    
    color: rgb(70, 68, 68);
    border:none;
	}
   .art3-content{
   
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
    
    display: none;
   }
	.art3-content h4{
	
    font-size : 20px;
   }
   
   .display-block{
    display: block;
   }


        button {
            cursor: pointer;
        }

        #main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:50vw;
        }
        #art2 {
            
            flex:5;
            width:70vw;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #art2 div{
            width:85%;
        }
 
  
  form{
  width:100%;
  
  }
  .create{
 
  width:100%;
  margin:0 auto;
  
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
.create button{
  margin-top:15px;
  margin-bottom:15px;
  
  width:25%;
  height:50px;
  border: none;
  color:white;
  background-color:black;
  font-size:15px;
  border-radius:10px;
  }
  .create-form{
width:100%;
margin:0 auto;
text-align:center;
}
  #btn3{
  margin-left:0;
  }
  .create button:hover{
  
  background-color:#ccc;
  color:black;
  }
  .div-container{
  text-align:left;
  margin-left:300px;
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
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li style="text-decoration:underline"><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li><a href="${pageContext.request.contextPath}/viser/hotelRes">예약 확인</a></li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2"><h1 class="h1">자주묻는질문/수정/삭제</h1>
			     <article id="art2">
                        <c:forEach var="item" items="${list}"> 
                       <form action="${pageContext.request.contextPath}/viser/delete/modify">
                        	<div class="art3-question" class="tab_title">
                        	 
                              	<span class="art3-Q">Q</span> <input type="text" value="${item.boardTitle}" name="boardTitle"/>
                              	<input type="hidden" name="boardId" value="${item.boardId}"/>
                           	</div>
                     
                            <div class="art3-content">
                           		<h4><span class="art3-Q">N</span><input type="text" value="${item.boardContent}" name="boardContent"/></h4><br />
                           		 1 == 삭제, 0 == 수정 // 상태: ${item.isDelete}
                           		
                           		 <button class="btn1" id="btn1">수정</button>
                           		 <button class="btn2" id="btn2">삭제</button>
                           		   
                            </div>
                             <input type="hidden" name="isDelete" id="delete" class="delete" value=""/>
                         </form>
 							</c:forEach>
 							
 							<div class="create">
 							
							<form class="create-form" action="${pageContext.request.contextPath}/viser/create/modify">
							<h1 class="h2">자주묻는질문 새로 추가하기</h1>
							
							<label for="boardTitle"><h2 class="h2">제목</h2></label> <input type="text" id="CTT" name="boardTitle" placeholder="제목을 입력하세요" value=""/><br />
							<label for="boardContent"><h2 class="h2">내용</h2></label> <input type="text" id="CCT" name="boardContent" placeholder="내용을 입력하세요" value=""/><br />
							<button>생성하기</button> <button id="btn3">생성 내용 미리보기</button>
							<input type="hidden" name="boardCategory" value="자주묻는질문"/>
							<input type="hidden" name="isDelete" value="0"/>
								<input type="hidden" value="${mem.id}" name="id" />
							<div class="div-container">
							<h2>생성 제목 : <span id="CT"></span> </h2>
							<h3>생성 내용 : <span id="CC"></span> </h3>
							</div>
							</form>
							</div>
							
 							</article>
							</div>
			
							</main>
		
							<footer>
		
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
		</div>
		  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                          <script>
                          for(let i = 0; i<document.getElementById("art2").children.length; i++){
                              
                        	  document.getElementsByClassName("art3-question")[i].addEventListener("click",function(){
                                      
                        		  document.getElementsByClassName("art3-content")[i].classList.toggle("display-block");
                                      
                        		  for(let j = 0; j<document.getElementById("art2").children.length; j++) {
                                    	  
                        			  if(j!= i){
                                    		  
                        				  document.getElementsByClassName("art3-content")[j].classList.remove("display-block");
                                    	  }
                                      }
                                  });
                          } 

                                       </script>
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