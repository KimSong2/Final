<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
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
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
* {
	margin: 0 auto;
	
	/* box-sizing: border-box; */
}

body {
	background-color: white;
	overflow-x:hidden;
}

html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}
input, select{
	height:30px;
	margin:5px;
	
}
input{
	display:inline-block;
	outline:none;
}
input[type='radio']{
	margin:0;
	padding:0;
}

.lb{
	display: inline-block;
    width: 70px;
}
.sp{
	float:right;
}
#container{
	display:grid;
	grid-template-rows:70px 1fr 70px;
	min-height:100vh;
}
#section-container{
	width:37%;
	display:flex;
	flex-direction:column;
	justify-content: center;
    align-items: center;
}
section{
	width:100%;
}
section> div{
	
	padding:10px;
	margin:10px;
	border-bottom: 2px dashed gray;
}
#img-div{
	display:grid;
	grid-template-columns:1fr 2fr;
}
#sec1-div2 img{
	width:200px;
	height:200px;
}
.tab-div{
	display:flex;
}
#pro-info{
	display: flex;
    flex-direction: column;
    justify-content: center;
    margin-left:20px;
}

.scbtn{
	border: 1px solid black;
    margin: 5px;
    height: 29px;
    background-color: #fde4d6;
    width: 105px;
    font-weight: 600;
}
.info-p{
	font-size:13px;
	color:gray;
}
.same-send{
	height:13px;
}
#address-div2{
	display:none;
}
.memName{
	width:379px;
}
#phone2, #phone3{
	width:143px;
}
.maid-addr{
	width:449px; 
}
#write{
	width:449px;
	display:none;
}
#select-msg{
	width:449px;
	outline:none;
}
#use-point{
	height:20px;
	width:49px;
}
#cash{
    top: 20%;
    left: 73%;
    padding: 15px;
    position: fixed;
    width: 315px;
    height: 415px;
    border: 2px solid gray;
    background-color: white;
}
#cash-btn{
	margin:0 auto;
	margin-top:40px;
	border:none;
	text-align:center;
	background-color:black;
	color:white;
	height:50px;
	width:315px;
	font-size:20px;
	font-weight:500;
}
.cash-info{
	font-size:14px;
	color:gray;
}
</style>
</head>
<body>


	<div id="container">

		<header>
			<%@ include file="../frame/shop/header.jsp"%>
		</header>
		<main>
		<form:form action="" modelAttribute="separateVO" id="section-container" method="post">
		
			<section id="sec1">
				<div>
					<h3>주문상품<span class="material-symbols-outlined sp">expand_more</span></h3>
					
				</div>
				<div id="sec1-div2" class="tab-div">
					<div id="img-div">
					<div>
						<img src="${pageContext.request.contextPath}/${list.productImage}">
					</div>
					<div id="pro-info">
						<h3>${list.productName}</h3>
						<p>
							옵션:
							<c:if test="${option != '사이즈선택'}"> ${option}</c:if>
							<c:if test="${option == '사이즈선택'}"> 없음 </c:if>
						</p>
						<p>수량: ${count}개</p>
						<p>
							금액:	<fmt:formatNumber value="${count * list.productPrice}"	pattern="#,###" />원
						</p>
					</div>
					</div>
				</div>
			</section>
			<section id="sec2">
				<div>
					<h3>주문정보<span class="material-symbols-outlined sp">expand_more</span></h3>
				</div>
				<div  class="tab-div">
					<div>
					<label for="memName1" class="lb">주문자 *</label><input type="text" value="${user.memName}" id="memName1" class="memName" name="memName1"><br> 
					<label for="memEmail" class="lb">이메일 *</label><input type="text" value="${separateVO.email1}" id="memEmail" name="memEmail">@<input type="text" value="${separateVO.email2}">
					<!-- <select name="email-list" id="email-list" class="box">
                    <option value="self">--직접입력--</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                    <option value="msn.com">msn.com</option>
                </select>  -->
					<p class="info-p">이메일로 주문 처리 과정을 보내드립니다.</p>
					<p class="info-p">수신 가능한 이메일을 주소로 입력해주세요.</p>
					<br> 
					<label for="memPhone" class="lb">휴대 전화
					</label><form:select path="phone1" id="memPhone" name="memPhone">
								<form:option value="010">010</form:option>
								<form:option value="011">011</form:option>
								<form:option value="017">017</form:option>
								<form:option value="019">019</form:option>
						</form:select> - <form:input path="phone2" /> - <form:input path="phone3" />
					
					<br> 
					<label for="memAddress" class="lb">주소 * </label><input type="text" placeholder="우편번호" value="${user.memOaddress}" id="memAddress" name="memAddress"><button class="scbtn" type="button" onclick="execPostCode();">주소 검색</button><br>
					<input type="text" name="maid-addr1" class="maid-addr" placeholder="기본주소" value="${user.memAddress}"><br>
					<input type="text" name="maid-addr2" class="maid-addr" placeholder="상세주소" value="${user.memDetailaddress}">
					</div>
				</div>
			</section>
			<section id="sec3">
				
				<div>
					<h3>배송지<span class="material-symbols-outlined sp">expand_more</span></h3>
				</div>
				<div  class="tab-div">
					<div>
					<div>
						<input type="radio" name="same" id="same-send1" class="same-send" checked> <label for="same-send1">주문자 정보와 동일</label> 
						<input type="radio" name="same" id="same-send2" class="same-send"> <label for="same-send2">새로운	배송지</label>
					</div>
					<div id="address-div1">
						<label for="memName" class="lb">받는 사람</label><input type="text" name="memName" class="memName" id="receiverName" value="${user.memName}"><br>
						<label for="address"  class="lb">주소 * </label><input type="text" placeholder="우편번호" class="addr-addr" id="receiverAddress1"value="${user.memOaddress}" readonly><br>
						<input type="text" placeholder="기본주소" class="maid-addr" id="receiverAddress2"value="${user.memAddress}" readonly><br>
						<input type="text" placeholder="상세주소" class="maid-addr" id="receiverAddress3"value="${user.memDetailaddress}" readonly><br>
						<label for="receiverPhone">받는 사람 번호 </label><input type="text" id="receiverPhone" value="${user.memPhone}"><small> - 를 제외한 번호</small>
					</div>
					<div id="address-div2">
						<label for="memName"  class="lb">받는 사람</label><input type="text" class="memName" id="memName"><br>
						<label for="address"  class="lb">주소 * </label><input type="text" placeholder="우편번호" id="mem_address1" name="mem_oaddress">
						<button class="scbtn" type="button" onclick="execPostCode();">주소 검색</button><br>
						<input type="text" name="mem_address" class="maid-addr" id="mem_address2" placeholder="기본주소"><br>
						<input type="text" name="mem_detailaddress" class="maid-addr" id="mem_detailaddress" placeholder="상세주소"><br>
						<label for="receiverPhone">받는 사람 번호 </label><input type="text" id="receiverPhone"><span> - 를 제외한 번호</span>
					</div>
					<div id="message">
					
						<select name="message" id="select-msg" >
							<option value="배송전에 미리 연락바랍니다">배송전에 미리 연락바랍니다</option>
							<option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
							<option value="부재 시 문 앞에 놓아주세요">부재 시 문 앞에 놓아주세요</option>
							<option value="빠른 배송 부탁드립니다">빠른 배송 부탁드립니다</option>
							<option value="택배함에 보관해 주세요">택배함에 보관해 주세요</option>
							<option value="직접 입력">직접 입력</option>
							<input type="text" name="write" class="write" id="write" placeholder=" *직접입력">
						</select><br>
				<script>
					document.getElementById("select-msg").addEventListener("change",function(){
						if( document.getElementById("select-msg").value=="직접 입력"){
							document.getElementById("write").style.display="block";
						}else{
							document.getElementById("write").style.display="none";
						}
					})
					
				</script>
					</div>
					</div>
				</div>
				<script type="text/javascript">
				let span = document.getElementsByClassName("sp")
				for(let i = 0; i< span.length ; i++){
					span[i].addEventListener("click",function(){
						let div = document.getElementsByClassName("tab-div")[i];
						if(div.style.display == "none"){
						
							
								div.style.display="flex";
							
						}else{
							div.style.display="none";
						}
					})
				}
					
				</script>
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
					//우편번호 찾기 버튼 클릭 이벤트
					function execPostCode() {
				     new daum.Postcode({
				         oncomplete: function(data) {
				            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
				            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                extraRoadAddr += data.bname;
				            }
				            // 건물명이 있고, 공동주택일 경우 추가한다.
				            if(data.buildingName !== '' && data.apartment === 'Y'){
				               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				            }
				            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				            if(extraRoadAddr !== ''){
				                extraRoadAddr = ' (' + extraRoadAddr + ')';
				            }
				            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				            if(fullRoadAddr !== ''){
				                fullRoadAddr += extraRoadAddr;
				            }
				            // 우편번호와 주소 정보를 해당 필드에 넣는다.
				            console.log(data.zonecode);
				            console.log(fullRoadAddr);
				         /*      var a = console.log(data.zonecode);
				            var b = console.log(fullRoadAddr);
				            
				            if(a == null || b = null){
				               alert("주소를 확인하세요.");
				               return false;
				            }   */
				            
				            
				            $("[name=mem_oaddress]").val(data.zonecode);
				            $("[name=mem_address]").val(fullRoadAddr);
				            
				            document.getElementById('mem_oaddress').value = data.zonecode; //5자리 새우편번호 사용
				            document.getElementById('mem_address').value = fullRoadAddr;
				            
				            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
				        }
				     }).open();
				 }
				/* radio버튼 클릭마다 배송지 div 변경 */
			$("#same-send1").on("click",function(){
				 if($(this).is(":checked")){
					$("#address-div2").hide();
					$("#address-div1").show();
				 }
			})
			$("#same-send2").on("click",function(){
				 if($(this).is(":checked")){
					$("#address-div1").hide();
					$("#address-div2").show();
				 }
			})

					</script>
			</section>
			<div id="cash">
				<div>
				<h3>결제 정보</h3>
				<br>
				<p>회원 보유 포인트 : &nbsp;<span id="point">${user.point}</span>p</p>
				<label for="use-point">사용할 포인트 : </label><input id="use-point" type="text">p
				<h1><small>총 결제 금액 : </small><br><span id="total-pay"></span>KRW</h1>
				<script type="text/javascript">
					let usepoint = Number(document.getElementById("use-point").value);
					document.getElementById("total-pay").innerText = (Number(${count * list.productPrice})-usepoint).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					document.getElementById("use-point").addEventListener("blur",function(){
						let point = Number(this.value);
						if(point%100 == 0 ){
							if(point > Number(${user.point})){
								alert('보유 포인트이하의 수를 입력해주세요.');
							}else{
								usepoint = Number(document.getElementById("use-point").value);
								document.getElementById("total-pay").innerText = (Number(${count * list.productPrice})-usepoint).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');;
							}
						}else{
							alert('포인트는 100p 단위로 입력해주세요.')
						}
					});
				</script>
				
				
				<br>
				<hr>
				<p>적립금 : <fmt:formatNumber value="${count * list.productPrice/100}"	pattern="#,###" />p</p>
				<br>
				<p class="cash-info"> - 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</p>
				<p class="cash-info"> - 최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
				
				</div>
				<div>
				
				<button id="cash-btn"  type="button" onclick="requestPay()"> 결제하기</button>
				
				</div>
			</div>
			
		</form:form>
		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
  
	</div>
	<script>
var IMP = window.IMP; // 생략가능
IMP.init('imp70736007'); // <-- 본인 가맹점 식별코드 삽입
function requestPay() {
  IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
  IMP.request_pay({
    pg: "inicis",
    pay_method: "card",
    merchant_uid : 'merchant_'+new Date().getTime(),
    name : '${list.productName}',
    amount : '100',
    buyer_email : '${user.memEmail}',
    buyer_name : '${user.memName}',
    buyer_tel : '${user.memPhone}',
    buyer_addr : '${user.memAddress}',
    buyer_postcode : '123-456'
  }, function (rsp) { // callback
      if (rsp.success) {
    	  	let point = Math.floor(Number(${count * list.productPrice/100})) - Number(document.getElementById("use-point").value);
    	  	let receiverName = document.getElementById("receiverName").value;
    	  	let receiverAddress1 = document.getElementById("receiverAddress1").value;
    	  	let receiverAddress2 = document.getElementById("receiverAddress2").value;
    	  	let receiverAddress3 = document.getElementById("receiverAddress3").value;
    	  	let receiverPhone =document.getElementById("receiverPhone").value;
    	  	let orderMsg = document.getElementById("select-msg").value;
        	location.href="${pageContext.request.contextPath}/ordersuccess2?productId=${list.productId}&productCount=${count}&orderPrice=${count*list.productPrice}&receiverName="+receiverName+"&receiverAddress1="+receiverAddress1+"&receiverAddress2="+receiverAddress2+"&receiverAddress3="+receiverAddress3+"&receiverPhone="+receiverPhone+"&orderMsg="+orderMsg+"&point="+point+"&wishId=${wishId}"
      } else {
    	  alert("결제에 실패하였습니다.");
      }
  });
}
</script>
</body>
</html>