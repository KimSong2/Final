<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/hotel/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
        <title>Document</title>
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
            position: relative;
            height: 100%;
            overflow-x:hidden;
        }
		input{
    		height: 25px;
    		margin: 10px 0;
    		outline: none;
    		font-size: 15px;
		}
		input[type="radio"]{
			padding:10px 0 0 0;
			margin:0;
		}
       	select{
       		height:30px;
       	}
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
        }
        header {
            z-index: 100;
            background-color: #EDEDE9;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            width: 100vw;
            height: 100%;
        }
        main {
            width: 100%;
            background-color: #EDEDE9;
            min-height: 86vh;
        }
        section {
            width: 100%;
            height: 100%;
        }
         .date {
            width: 90%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: 5vh;
            padding: 1vh 0;
        }
        
        .indate {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            width: fit-content;
            align-items: center;
            gap: 15px;
        }
        .outbox {
            display: block !important;
            width: 90%;
            margin: 0 auto;
        }
        .clicked {
        	display : block !important;
        	display : flex !important;
        }
        
        .price {
            display: flex;
            flex-direction: column;
            gap: 15px;
            border: 1px solid black;
            height: fit-content;
            padding: 4vh 3vw;
            position: sticky;
            left: 70%;
            top: 5%;
        }
		button{
			cursor:pointer;
		}
        .p_box,
        .total {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }
        
        #reservebtn {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 5vh;
        }
        
        .reservecont {
           width: 60%;
    margin: 20px auto;
    display: grid;
    grid-template-columns: 3fr 1.8fr;
}
        
         .reserveinfo {
            width: 80%;
            display: flex;
            flex-direction: column;
            gap:30px;
            position: relative;
        }
        .dogtype label{
        	margin-left: 20px;
    		width: 100px;
    		display: inline-block;
        }
        #room-info{
        	margin: 10px 0;
        	width:306px;
        }
        .meminfo {
        	display: flex;
            flex-direction: column;
            
            
        }
        #meminfo-div2,#notice-content{
        	margin-left:20px;
        }
        .meminfo label{
        	width: 100px;
    		display: inline-block;
        }
        #memName1{
        	width:303px;
        }
        #memEmail, #memEmail2{
        	width:140px;
        }
        #memPhone1,#memPhone2,#memPhone3{
        	width:90px;
        } 
        #resMsg{
        	margin-top:10px;
        	padding:3px;
        	outline: none;
        	width: 603px;
    		height: 193px;
        }
    </style>
</head>

<body>
    <div id="container">
        <header>
            <%@ include file="../frame/hotel/header.jsp" %>
        </header>

        <main>
            <section>
                <%-- <div class="date">
					<div>
						<p> 선택날짜 : ${startdate} ~ ${enddate}</p> 
					</div>
				</div> --%>

                <div class="reservecont">
                	<div class="reserveinfo">
                		<div>
                			<p>Hotel</p>
                			<h1>${hotel[0].hotelName}</h1>
                		</div>
                		<div class="dogtype">
                			<div>
                				<h2>객실 선택</h2><hr/>
                			</div>
                			<label for="room-info">객실 종류 * </label>
                			<select id="room-info">
                				<c:forEach var="item" items="${hotel}">
                					<option value = "${item.roomId}">객실명 : ${item.roomName} / 객실 타입: ${item.roomType}</option>
                				</c:forEach>
                			</select>
                		</div>
                		<div class="meminfo">
                			<div>
                				<h2>예약자 정보</h2><hr/>
                			</div>
                			<form:form action="" modelAttribute="separateVO" id="section-container">
                			<div id="meminfo-div2">
								<label for="memName1" class="lb">예약자 *</label><input type="text" value="${user.memName}" id="memName1" class="memName" name="memName1"><br> 
								<label for="memEmail" class="lb">이메일 *</label><input type="text" value="${separateVO.email1}" id="memEmail" name="memEmail">@<input type="text" id="memEmail2" value="${separateVO.email2}"><br>

								<label for="memPhone" class="lb">휴대 전화
								</label><form:select path="phone1" id="memPhone1" name="memPhone">
											<form:option value="010">010</form:option>
											<form:option value="011">011</form:option>
											<form:option value="017">017</form:option>
											<form:option value="019">019</form:option>
									</form:select> - <form:input path="phone2" id="memPhone2" /> - <form:input path="phone3" id="memPhone3"/><br>
								<label for="resMsg" class="lb">기타 사항</label><br><textarea id="resMsg" cols="55" rows="5" placeholder="* 추가로 전달하시고 싶은 내용을 적어주세요"></textarea>	

							</div>

							</form:form>
                		</div>
                		<div class="notice">
                    		<div>
                				<h2>주의 사항</h2><hr/>
                			</div>
                			<div id="notice-content">
                            	<p>☑ 1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 인플루엔자, 광견병) 받지 않은 반려견은 입실이 제한됩니다.<br>
								   ※ 접종기록은 접종병원명이 꼭 필요하므로 증빙 자료는 미리 준비해주세요.</p>
								<p>☑ 1살 미만의 반려견인 경우 항체 검사가 필수 입니다. (단, 1살 이상 시 재접종 기록 확인)</p>
								<p>☑ 생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 되는 반려견 일 경우 입실이 제한됩니다.</p>
                            </div>
                    	</div>
                	</div>
					<div class="price">
                        <div class="p_box">
                        	<fmt:parseDate value="${startdate }" var="strPlanDate" pattern="yyyy-MM-dd"/>
							<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
							<fmt:parseDate value="${enddate }" var="endPlanDate" pattern="yyyy-MM-dd"/>
							<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
							<p>[ ${startdate} ~ ${enddate} ]</p><br>
                            <p>Room : <span id="room-name">${hotel[0].roomName}</span> <span id="room-type">[${hotel[0].roomType}견]</span></p>
                            <h3>가격 : <span id="room-price"><fmt:formatNumber value="${hotel[0].roomPrice}" pattern="#,###" /></span>KRW</h3>
                            <p><span id="room-date">${endDate - strDate }</span> 박</p>
                            <p>+세금(10%)</p>
                            <p><span  id="room-tax"><fmt:formatNumber value="${((endDate - strDate)*hotel[0].roomPrice)*0.1}" pattern="#,###" /></span>KRW</p>
                        </div>
                        <div class="total">
                            <h1>총 예약금액 <br><span id="total-price"><fmt:formatNumber value="${((endDate - strDate)*hotel[0].roomPrice)*1.1}" pattern="#,###" /></span>KRW</h1><br>
                            <button onclick="requestPay()" id="reservebtn">회원예약</button>
                        </div>
                    </div>
                    
                </div>
              	<script type="text/javascript">
              		document.getElementById("room-info").addEventListener("change",function(){
              			let roomId = Number(document.getElementById("room-info").value);
              			console.log(roomId);
              			let roomName= document.getElementById("room-name");
              			let roomType= document.getElementById("room-type");
              			let roomPrice= document.getElementById("room-price");
              			let roomDate= document.getElementById("room-date");
              			let roomTax = document.getElementById("room-tax");
              			let totalPrice= document.getElementById("total-price");
              			
              			fetch("${pageContext.request.contextPath}/getroominfo",{ 
              				method: "POST",
							headers: {
								    "Content-Type": "application/json"
							},
							body: JSON.stringify({roomId})
						}).then((response) => response.json())
							.then((data) => {
								roomName.innerText = data.roomName;
								roomType.innerText = "["+data.roomType+"견]";
								roomPrice.innerText = data.roomPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
								let date = Number(roomDate.innerText);
								roomTax.innerText = Math.floor((date * data.roomPrice)*0.1).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
								totalPrice.innerText = Math.floor((date * data.roomPrice)*1.1).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
								
						});
              		})
              		
              		/* document.getElementById("reservebtn").addEventListener("click",function(){
              			let roomId = $("#room-info").val();
              			let memPhone = $("#memPhone1").val()+$("#memPhone2").val()+$("#memPhone3").val();
              			let memEmail = $("#memEmail").val()+'@'+$("#memEmail2").val();
              			let memName = $("#memName1").val();
              			let resMsg = $("#resMsg").val();
              			console.log(resMsg);
              			location.href="${pageContext.request.contextPath}/myhotelres/${startdate}/${enddate}"
              							+"?roomId="+roomId
              							+"&memPhone="+memPhone
              							+"&memEmail="+memEmail
              							+"&memName="+memName
              							+"&resMsg="+resMsg;
              		}); */
              	</script>
              	 <script>
              	 let email = $('#memEmail').val()+"@"+$('#memEmail2').val();
              	 let name = $('#memName1').val();
              	 
var IMP = window.IMP; // 생략가능
IMP.init('imp70736007'); // <-- 본인 가맹점 식별코드 삽입
function requestPay() {
  IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
  IMP.request_pay({
    pg: "inicis",
    pay_method: "card",
    merchant_uid : 'merchant_'+new Date().getTime(),
    name : '${hotel[0].hotelName}',
    amount : '100',
    buyer_email : email,
    buyer_name : name
    
  }, function (rsp) { // callback
      if (rsp.success) {
    	   let roomId = $("#room-info").val();
			let memPhone = $("#memPhone1").val()+$("#memPhone2").val()+$("#memPhone3").val();
			let memEmail = $("#memEmail").val()+'@'+$("#memEmail2").val();
			let memName = $("#memName1").val();
			let resMsg = $("#resMsg").val();
			console.log(resMsg);
			location.href="${pageContext.request.contextPath}/myhotelres/${startdate}/${enddate}"
							+"?roomId="+roomId
							+"&memPhone="+memPhone
							+"&memEmail="+memEmail
							+"&memName="+memName
							+"&resMsg="+resMsg; 
      } else {
    	  alert("결제에 실패하였습니다.");
      }
  });
}
</script> 
            </section>
        </main>
        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>

</html>