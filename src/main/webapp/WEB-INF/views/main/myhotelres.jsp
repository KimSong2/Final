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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css?11">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
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
      .sec2-div3-table1 img{
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
        #main-container img{
           width:120px;
           height:120px;
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
            padding:10px;
            cursor:pointer;
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
       
        #sec2-div2 li {
            display: block;
            font-size: 13px;
        }
        .sec2-div2-sel{
           margin:10px 0;
            padding:10px;
            height: 100%;
            border:5px solid white;
        }
        
        .sec2-div3-table1{
            border-collapse: collapse;
            width:100%;
        }
        .sec2-div3-table1 td{
           padding:5px;
            text-align: center;
            border:1px solid black;
        }
        #sec2-div3-table2{
            border-collapse: collapse;
            
        }
        #sec2-div3-table2 td{
            text-align: center;
            
        }
        .hotel-info{
           text-align: left !important;
        }
        .resMsg{
           text-align: left;
        }
        .res-cancel{
           font-size:12px;
           color:red;
        }
        .res-cancel:visited{
           color:red;
        }
        .fadeIn {
         animation: fadeIn 0.5s forwards;
      }

      @keyframes fadeIn { 
         0%{
            opacity: 0;
         }
         100%{
            opaciry:1;
         }
      }
   .h2{
   width:100%;
   text-align:left;
   margin-bottom:50px;
   margin-top:30px;
   font-size:30px;
}
      .write-review{
         cursor:pointer;
         color:blue;
      }
      .modal{
         display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
      }
      .modalcont {
            text-align: center;
          position: relative;
          background-color: #f5ebe0;
          border-radius: 10px;
          top: 0;
          padding: 10px 25px;
          width: 25%;
          height: 50%;
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          margin: 8% auto;
          z-index: 200;
        }
        textarea{
           outline:none;
        }
        .hidden {
            display: none;
        }
      .modalback {
            background-color: rgba(0, 0, 0, 0.4);
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .modal-title{
           font-size:20px;
           font-weight:900;
           margin-bottom: 10px;
        }
        .close {
          background-color: #f5ebe0;
          cursor: pointer;
          font-weight: bold;
          float:right;
          font-size: 20px;
        }
        .review-btn{
           width: 150px;
          height: 30px;
          font-size: 16px;
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
                    <nav>
                        <ul>
                             <li><a href="${pageContext.request.contextPath}/mypage">주문내역조회</a></li>
                             <li><a href="${pageContext.request.contextPath}/myhotelres" style="text-decoration: underline">예약내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                           
              
                        </ul>
                    </nav>
                    
                    <article id="art2">
                    
                        <div id="artcontainer">
                        <h2 style="text-decoration: underline" class="h2">예약내역조회</h2>
                            <div id="sec2-div1">
                                <ul>
                                    <li class="selected">예약내역 조회( ${fn:length(list)} )</li>
                                    <li>이용내역 조회( ${fn:length(history)} )</li>
                                    <li>예약취소내역 조회( ${fn:length(cancel)} )</li>
                                </ul>
                            </div>
                           
                            <div id="sec2-div3">
                                <div>
                                    <div class="sec2-div2-sel">
                                        * 예약 취소는 예약날짜 3일전까지만 가능합니다.<br>
                                        * 추가 문의 사항은 해당 호텔 전화로 문의 해주시길 바랍니다.
                                    </div>
                                   <table class="sec2-div3-table1">
                                       <tr>
                                          <td><p>결제날짜</p></td>
                                           <td><p>예약일자</p></td>
                                           <td><p>이미지</p></td>
                                           <td><p>호텔정보</p></td>
                                           <td><p>예약자 연락처</p></td>
                                           <td><p>예약자 이메일</p></td>
                                           <td><p>결제금액</p></td>
                                           <td><p>주문처리상태</p></td>
                                       </tr>
                                    	<c:if test="${fn:length(list) == 0}">
                                    		<tr>
                                    			<td colspan="8">비어 있음</td>
                                    		</tr>
                                    	</c:if>
                                       <c:forEach var="item" items="${list}">
                                       <tr>
                                          <fmt:parseDate value="${item.resStart }" var="strPlanDate" pattern="yyyy-MM-dd"/>
                                 <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
                                 <fmt:parseDate value="${item.resEnd }" var="endPlanDate" pattern="yyyy-MM-dd"/>
                                 <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                                 <fmt:parseDate value="${item.resDate}" var="resDate" pattern="yyyy-MM-dd HH:mm:ss.S"/>
                              
                                           <td rowspan="2"><fmt:formatDate value="${resDate}" pattern="yyyy-MM-dd"/></td>
                                           <td rowspan="2">${item.resStart}~ <br>${item.resEnd}</td>
                                           <td rowspan="2"><img src="${pageContext.request.contextPath}/${item.hotelThum}"></td>
                                           <td class="hotel-info">호텔명: ${item.hotelName} <br>
                                              객실정보: ${item.roomName}[${item.roomType}]
                                           </td>
                                           <td>${item.memPhone}</td>
                                           <td>${item.memEmail}</td>
                                           <td><fmt:formatNumber value="${Math.floor((item.roomPrice* (endDate - strDate))*1.1)}"   pattern="#,###" />원</td>
                                           <td>${item.resStatus}<br>
                                              <a href="#" class="res-cancel" onclick="fnalert(${item.resDetailNum},'${item.resStart}')">[예약취소]</a>
                                           </td>
                                       </tr>
                                       <tr>
                                          <td colspan="5"><p class="resMsg">전달 사항 : ${item.resMsg}</p></td>
                                       </tr>
                                       </c:forEach>
                                   </table>
                                </div>
                                <div style="display:none">
                                   <div class="sec2-div2-sel">
                                        * 호텔 이용 내역입니다.<br>
                                        * 따뜻한 리뷰 한줄이라도 감사하게 생각하겠습니다.
                                    </div>
                                    <table class="sec2-div3-table1" >
                                    <tr>
                                       <td><p>결제날짜</p></td>
                                        <td><p>예약일자</p></td>
                                        <td><p>이미지</p></td>
                                        <td><p>호텔정보</p></td>
                                        <td><p>예약자 연락처</p></td>
                                        <td><p>예약자 이메일</p></td>
                                        <td><p>결제금액</p></td>
                                        <td><p>주문처리상태</p></td>
                                    </tr>
                                    <c:if test="${fn:length(history) == 0}">
                                    	<tr>
                                    		<td colspan="8">비어 있음</td>
                                    	</tr>
                                    </c:if>
                                    <c:forEach var="item" items="${history}">
                                    <tr>
                                        <fmt:parseDate value="${item.resStart }" var="strPlanDate" pattern="yyyy-MM-dd"/>
                            			<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
                              			<fmt:parseDate value="${item.resEnd }" var="endPlanDate" pattern="yyyy-MM-dd"/>
                              			<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                              			<fmt:parseDate value="${item.resDate}" var="resDate" pattern="yyyy-MM-dd HH:mm:ss.S"/>
                              
                                        <td rowspan="2"><fmt:formatDate value="${resDate}" pattern="yyyy-MM-dd"/></td>
                                        <td rowspan="2">${item.resStart}~ <br>${item.resEnd}</td>
                                        <td rowspan="2"><img src="${pageContext.request.contextPath}/${item.hotelThum}"></td>
                                        <td class="hotel-info">호텔명: ${item.hotelName} <br>
                                           객실정보: ${item.roomName}[${item.roomType}]
                                        </td>
                                        <td>${item.memPhone}</td>
                                        <td>${item.memEmail}</td>
                                        <td><fmt:formatNumber value="${Math.floor((item.roomPrice* (endDate - strDate))*1.1)}"   pattern="#,###" />원</td>
                                        <td>${item.resStatus}<br>
                                           <span class="write-review">[리뷰작성]</span>
                                           <div class="modal hidden">
                                              <div class="modalback"></div>
                                    		  <div class="modalcont">
                                       		  <form action="${pageContext.request.contextPath}/insertHotelReview" method="post">
                                              	<input type="hidden" name="hotelId"value="${item.hotelId}">
                                              	<input type="hidden" name="hotelreviewRoomname"value="${item.roomName}">
                                              	<p class="modal-title">리뷰 작성 <span class="close">X</span> </p>
                                              	<p>뎅누리에서 이용하신 호텔의 소중한 후기를 남겨주세요!</p>
                                              	<p>후기의 성격과 맞지않는 욕설,도배글은 삭제될 수 있습니다. </p><br>
                                              	<textarea name="hotelreviewContent" cols="50" rows="20"></textarea><br>
                                              	<button class="review-btn">작성 완료</button>
                                       		  </form>
                                    </div>
                                           </div>
                                        </td>
                                    </tr>
                                    <tr>
                                       <td colspan="5"><p class="resMsg">전달 사항 : ${item.resMsg}</p></td>
                                    </tr>
                                    </c:forEach>
                                    <script>
                                       let wr = document.getElementsByClassName("write-review");
                                       let modal = document.getElementsByClassName("modal");
                                       let close = document.getElementsByClassName("close");
                                       let back = document.getElementsByClassName("modalback");
                                       for(let i = 0 ; i<wr.length; i++){
                                          wr[i].addEventListener("click",function(){
                                             modal[i].style.display="block";
                                          })
                                          close[i].addEventListener("click",function(){
                                             modal[i].style.display="none";
                                          })
                                          back[i].addEventListener("click",function(){
                                             modal[i].style.display="none";
                                          })
                                       }
                                    </script>
                                   </table>
                                </div>
                                <div style="display:none">
                                   <div class="sec2-div2-sel">
                                        * 취소된 예약 내역입니다.
                                    </div>
                                   <table class="sec2-div3-table1" >
                                    <tr>
                                       <td><p>결제날짜</p></td>
                                        <td><p>예약일자</p></td>
                                        <td><p>이미지</p></td>
                                        <td><p>호텔정보</p></td>
                                        <td><p>예약자 연락처</p></td>
                                        <td><p>예약자 이메일</p></td>
                                        <td><p>결제금액</p></td>
                                        <td><p>주문처리상태</p></td>
                                    </tr>
                                    <c:if test="${fn:length(cancel) == 0}">
                                    	<tr>
                                    		<td colspan="8">비어 있음</td>
                                    	</tr>
                                    </c:if>
                                    <c:forEach var="item" items="${cancel}">
                                    <tr>
                                       <fmt:parseDate value="${item.resStart }" var="strPlanDate" pattern="yyyy-MM-dd"/>
                              <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
                              <fmt:parseDate value="${item.resEnd }" var="endPlanDate" pattern="yyyy-MM-dd"/>
                              <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                              <fmt:parseDate value="${item.resDate}" var="resDate" pattern="yyyy-MM-dd HH:mm:ss.S"/>
                              
                                        <td rowspan="2"><fmt:formatDate value="${resDate}" pattern="yyyy-MM-dd"/></td>
                                        <td rowspan="2">${item.resStart}~ <br>${item.resEnd}</td>
                                        <td rowspan="2"><img src="${pageContext.request.contextPath}/${item.hotelThum}"></td>
                                        <td class="hotel-info">호텔명: ${item.hotelName} <br>
                                           객실정보: ${item.roomName}[${item.roomType}]
                                        </td>
                                        <td>${item.memPhone}</td>
                                        <td>${item.memEmail}</td>
                                        <td><fmt:formatNumber value="${Math.floor((item.roomPrice* (endDate - strDate))*1.1)}"   pattern="#,###" />원</td>
                                        <td>${item.resStatus}<br>
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                       <td colspan="5"><p class="resMsg">전달 사항 : ${item.resMsg}</p></td>
                                    </tr>
                                    </c:forEach>
                                   </table>
                                </div>
                                <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                                <script type="text/javascript">
                                   var now = new Date();
                                
                                var year = now.getFullYear();   
                                var month = now.getMonth()+1;       
                                var day = now.getDate(); 
                              
                                 
                                   function fnalert(resnum,resstart){
                                      
                                     
                                      var words = (resstart||'').split('-');
                                     var stDate = new Date(words[0], words[1], words[2]);
                                     var endDate = new Date(year, month, day);                           
                                  
                                     var btMs = stDate.getTime() - endDate.getTime() ;
                                     var btDay = btMs / (1000*60*60*24); 
                                      console.log(btDay);
                                     if(btDay>3){
                                         if(confirm('정말로 삭제하시겠습니까?')){
                                            location.href="${pageContext.request.contextPath}/resCancel/"+resnum;
                                         }
                                      }else{
                                         return alert('예약하신 날짜 3일 전에는 취소가 불가능 합니다');
                                      }
                                   }
                                   
                                 $("#sec2-div1 li").click(function(){
                                    var idx=$(this).index();
                                    $("#sec2-div1 li").removeClass("selected");
                                    $("#sec2-div1 li").eq(idx).addClass("selected");
                                    
                                    $("#sec2-div3> div").removeClass("fadeIn")
                                    $("#sec2-div3> div").eq(idx).addClass("fadeIn");
                                    $("#sec2-div3> div").hide();
                                    $("#sec2-div3> div").eq(idx).show();
                                 })
                                   
                                </script>
                            </div>
                        </div>
                    </article>
                </section>
                </div>
        </main>


        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
</body>

</html>