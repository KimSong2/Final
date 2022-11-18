<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css?11">
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
		#sec2-div3-table1 img{
			width:100px;
			height:100px;
		}
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            grid-template-areas: 'header' 'main' 'footer';
        }

       

        main {
            width: 100%;
            background-color: #f5ebe0;
            grid-area: main;
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

        

        .line {

            height: 1vh;
            width: 80%;

        }

        #main-container {
            height:100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:60vw;
        }
       
        #sec2 {
            width:85%;
            margin: 40px;
            display: flex;
            flex-direction: row;
            
        }

        #sec2 nav {
            flex: 1;
            padding: 0 20px 0 0;
            border-right: 1px solid black;
           height:1000px;
        }

         #sec2 nav ul{
            position: relative;
            top: 25%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
        #sec2-div1{
            
        }
        #sec2-div1 ul {
            width: 100%;
            background-color: #f5ebe0;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }
        .selected{
            background-color: black;
            color:white;
        }
        #art2 {
            flex:5;
            width:70vw;
            display: flex;
            justify-content: center;
            
        }
        #sec2-div2{
            height:auto;
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
        }
        #sec2-div2-sel{
            padding:10px;
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
     	.h2{
	width:100%;
	text-align:left;
	margin-bottom:50px;
	margin-top:30px;
	font-size:30px;
}
.pagebtn{
	border: none;
    background-color: #f5ebe0;
    font-size: 15px;
    margin: 10px;
    cursor:pointer;
}
#pageBtn, #pageBtn2{

width:100%;
text-align:center;
	margin: 20px 0;
}
        .fadeIn {
         animation: fadeIn 0.5s ease-out forwards;
      }

      @keyframes fadeIn { 
         0%{
            opacity: 0;
         }
         100%{
            opaciry:1;
         }
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
                
                <section id="sec2">
                    <nav class="fixed-pa">
                        <ul class="fixed">
                      
                             <li><a href="${pageContext.request.contextPath}/mypage" style="text-decoration: underline">주문내역조회</a></li>
                             <li><a href="${pageContext.request.contextPath}/myhotelres">예약내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
             
                        </ul>
                    </nav>
                    <article id="art2">
                        <div id="artcontainer">
                        <h2 style="text-decoration: underline" class="h2">주문내역조회</h2>
                            <div id="sec2-div1">
                                <ul>
                                    <li id="li-1st" class="selected">주문내역조회( ${fn:length(list)})</li>
                                    <li id="li-2nd">취소/반품/교환 내역(0)</li>
                                </ul>
                            </div>
                            <div id="list">
                            	<div id="sec2-div2">
                                	<form action="">
                                    	<div id="sec2-div2-sel">
                                        	<ul>
                                        		<li>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                                        		<li>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                                    		</ul>
                                    	</div>
                                	</form>

                            	</div>
                            	<div id="sec2-div3">
                                	주문 상품 정보
                                	<table id="sec2-div3-table1">
                                    	<tr>
                                        	<td><h3>주문일자</h3><h3>[주문번호]</h3></td>
                                        	<td><h3>이미지</h3></td>
                                        	<td><h3>상품정보</h3></td>
                                        	<td><h3>수량</h3></td>
                                        	<td><h3>상품구매금액</h3></td>
                                        	<td><h3>주문처리상태</h3></td>
                                    	</tr>
                                    
                                   		<tbody id="tbody"></tbody>
                                   
                                    
                                	</table>
                               	<div id="pageBtn"></div>
                            	</div>
                            </div>
                            <div id="cancel" style="display:none">
                            	<div id="sec2-div2">
                                	<form action="">
                                    	<div id="sec2-div2-sel">
                                        	<ul>
                                        		<li>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                                        		<li>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                                    		</ul>
                                    	</div>
                                	</form>

                            	</div>
                            	<div id="sec2-div3">
                                	주문 상품 정보
                                	<table id="sec2-div3-table1">
                                    	<tr>
                                        	<td><h3>주문일자</h3><h3>[주문번호]</h3></td>
                                        	<td><h3>이미지</h3></td>
                                        	<td><h3>상품정보</h3></td>
                                        	<td><h3>수량</h3></td>
                                        	<td><h3>상품구매금액</h3></td>
                                        	<td><h3>주문처리상태</h3></td>
                                    	</tr>
                                    
                                   		<tbody id="tbody2"></tbody>
                                   
                                    
                                	</table>
                               	<div id="pageBtn2"></div>
                            	</div>
                            </div>
                            <script type="text/javascript">
                            document.getElementById("li-1st").addEventListener("click",function(){
                            	document.getElementById("list").style.display="block";
                            	document.getElementById("list").classList.add("fadeIn");
                            	document.getElementById("cancel").style.display="none";
                            	document.getElementById("cancel").classList.remove("fadeIn");
                            	document.getElementById("li-1st").classList.add("selected");
                            	document.getElementById("li-2nd").classList.remove("selected");
                            });
							document.getElementById("li-2nd").addEventListener("click",function(){
								document.getElementById("list").style.display="none";
								document.getElementById("list").classList.remove("fadeIn");
                            	document.getElementById("cancel").style.display="block";
                            	document.getElementById("cancel").classList.add("fadeIn");
                            	document.getElementById("li-1st").classList.remove("selected");
                            	document.getElementById("li-2nd").classList.add("selected");
                            })
                            </script>
                        </div>
                    </article>
                </section>
                </div>
        </main>

	<input type="hidden" value="${list[0].id }" id="IdValue" />
	<input type="hidden" value="${list[0].id }" id="IdValue2" />
        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
    <script>
			var pageCount=6;
			getCateList(1);

			function getCateList(page){
			$('#tbody').empty();
				$('#pageBtn').empty(); 
				
				var id = document.getElementById("IdValue").value;
				
				fetch("${pageContext.request.contextPath}/getOdList", { 
					method: "POST",
 				  	headers: {
 				    	"Content-Type": "application/json"
 				  	},
 				  	body:JSON.stringify({"id":id, "page":page, "pageCount":pageCount})
 				}).then((response) => response.json())
 				.then((data) => {
					console.log(data);
	
				var productListDiv= $("#tbody");
					
				 	for(dict of data.list){
				 		const date = new Date(dict.order_date);
				 		console.log(date.toLocaleString());
				 		let td = document.createElement("td");
		 				let br = document.createElement("br");
		 				let btn = document.createElement("button");
				 			if(dict.order_status == '배송준비중'){
				 				btn.innerText = '주문 취소';
				 				td.innerText= dict.order_status;
				 				td.append(br);
				 				td.append(btn);
				 			}
							productListDiv.append(
							 "<tr>"
                             +"<td>"+date.toLocaleString()+"<br>"+'['+dict.order_id+']'+"</td>"
                              + "<td><img src='"+dict.product_image+"'></td>"
                                +"<td>"+dict.product_name+"</td>"
                                +"<td>"+dict.product_count+"</td>"
                                +"<td>"+(dict.product_price*dict.product_count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원'+"</td>"
                                +"<td>"+dict.order_status+"<br><button class='status-btn'>"+(dict.order_status=='배송준비중'?'주문 취소':(dict.order_status=='배송완료'?'반품/교환':''))+"</button></td>"
                              +"</tr>"
                            )
					} 
				 	let stbtn = document.getElementsByClassName("status-btn");
					for(let i = 0 ; i<stbtn.length; i++){
						stbtn[i].addEventListener("click",function(){
							console.log("no!");
							if(stbtn[i].innerText=='주문 취소'){
								if(confirm('해당 주문을 정말 취소하시겠습니까?')){
									location.href="${pageContext.request.contextPath}/deleteOrder/"+data.list[i].order_id;
								}
							}else if(stbtn[i].innerText=='반품/교환'){
								if(confirm('해당 주문을 정말 반품하시겠습니까?')){
									location.href="${pageContext.request.contextPath}/returnOrder/"+data.list[i].order_id;
								}
							}
						})
					};
					
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
		<script>
			var pageCount2=6;
			getCancelList(1);

			function getCancelList(page){
			$('#tbody2').empty();
				$('#pageBtn2').empty(); 
				
				var id = document.getElementById("IdValue").value;
				
				fetch("${pageContext.request.contextPath}/getCancelList", { 
					method: "POST",
 				  	headers: {
 				    	"Content-Type": "application/json"
 				  	},
 				  	body:JSON.stringify({"id":id, "page":page, "pageCount":pageCount2})
 				}).then((response) => response.json())
 				.then((data) => {
 					console.log("11");
					console.log(data);
	
				var productListDiv2= $("#tbody2");
					
				 	for(dict of data.list){
				 		const date = new Date(dict.order_date);
				 		console.log(date.toLocaleString());
				 			
							productListDiv2.append(
							 "<tr>"
                             +"<td>"+date.toLocaleString()+"<br>"+'['+dict.order_id+']'+"</td>"
                              + "<td><img src='"+dict.product_image+"'></td>"
                                +"<td>"+dict.product_name+"</td>"
                                +"<td>"+dict.product_count+"</td>"
                                +"<td>"+(dict.product_price*dict.product_count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원'+"</td>"
                                +"<td>"+dict.order_status+"</td>"
                              +"</tr>"
                            )
					} 
				 	
					
					var total=0;
					var stNum;
					var edNum;
					var preNum;
					var nextNum;
					
					total = parseInt(data.total/pageCount2);
					
					if(parseInt(data.total%pageCount2)!=0){
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
					
					$('#pageBtn2').append(
							'<button onclick="getCancelList(1)" class="pagebtn">'+'\<\<'+'</button>'
					);
					
					$('#pageBtn2').append(
							'<button onclick="getCancelList('+preNum+')" class="pagebtn">'+'\<'+'</button>'
					);
					
					for(var i=stNum;i<=edNum;i++){	
						if(i==page){
							$('#pageBtn2').append(
									'<button onclick="getCancelList('+i+')" style="color:red;" class="pagebtn">'+i+'</button>'
							);
						}else{
							$('#pageBtn2').append(
									'<button onclick="getCancelList('+i+')" class="pagebtn">'+i+'</button>'
							);
						}
						
					}
					
					$('#pageBtn2').append(
							'<button onclick="getCancelList('+nextNum+')" class="pagebtn">'+'\>'+'</button>'
					);
					
					$('#pageBtn2').append(
							'<button onclick="getCancelList('+total+')" class="pagebtn">'+'\>\>'+'</button>'
					);
					
 				});
			}
			
		</script>
</body>

</html>