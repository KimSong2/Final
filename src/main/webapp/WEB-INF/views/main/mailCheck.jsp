<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>Document</title>
<style>
html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}
body {
	background-color: #f5ebe0;
}
#container {
	position: relative;
	width: 100%;
	height: 100%;
	display: grid;
	min-height: 100vh;
	grid-template-rows: 70px 1fr 70px;
	grid-template-columns: 1fr;
}
main {
	margin-top: 20px;
	width: 100%;
	background-color: #f5ebe0;
}
/*본문 내용*/
.art1 {
	width: 80%;
	margin: 0 auto;
	border-top: 2px solid black;
}
/* .art2 {
	width: 70%;
	margin: 0 auto;
	height: 50px;
	background-color: black;
	color: white;
	text-align: center;
	margin-bottom: 2rem;
}
 */
 
 .art2 {
	display: flex;
	justify-content: center;
}
.art2>h2 {
	display: flex;
	background-color: black;
	width: 70%;
	justify-content: center;
	color: white;
}
 
#cont{
	width:30%;
	margin:0 auto;
}
.art3 {
	justify-content: center;
    width: 70%;
    height:100%;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    align-items:center;
}
#art3-title{
	width:45%;
	border-bottom: 2px dashed black;
	margin-bottom: 50px;
}
#gomembership{
	margin: 20px 0 ;
	border:none;
	width:300px;
	height: 40px;
	color: white;
	font-size: 16px;
	background-color: black;
}
#small{
	color: red;
}
label {
	width : 20px;
	font-size: 20px;
	margin-bottom:15px;
}
#gomembership-div{
	margin-bottom: 50px;
}
.input-group-addon{
	margin-top: 10px;
}
button {
 	height : 30px;
 }
 
 input {
 	width: 300px;
 	height : 30px;
 	border-radius : 5px;
 	border : none;
 	font-size: 16px;
 	margin: 10px 0 ;
 }
 select{
 	height : 30px;
 }
 
 
</style>
</head>
<body>
	
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
   <main>
    <article class="art1">
        
    </article>
    <article class="art2">
        <h2>회원 가입</h2>
    </article>
    
    <article class="art3">
    	<div id= "art3-title">
    		<h2>이메일 인증</h2>
    	</div>
    	<div>
			<form action="${pageContext.request.contextPath}/mailCheck">
				<div class="form-group email-form">
    				<label for="email">이메일</label><br><br>
    				<div class="input-group">
   						<input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="이메일" >
   						<select class="form-control" name="userEmail2" id="userEmail2" >
   							<option>@naver.com</option>
   							<option>@daum.net</option>
   							<option>@gmail.com</option>
   							<option>@hanmail.com</option>
    						<option>@yahoo.co.kr</option>
   						</select>
   					</div>   
					<div class="input-group-addon">
   						<button type="button" class="btn btn-primary" id="mail-Check-Btn">인증번호 받기</button>
					</div>
   					<div class="mail-check-box">
   						<p><small id="small">- 인증번호 받기 버튼을 클릭하시면 번호입력창이 활성화 됩니다!</small></p>
						<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
						<button type="button" class="mail-check-btn1">인증 확인</button>
					</div>
   					<span id="mail-check-warn"></span>
				</div>
			</form>
		</div>
		<div id="gomembership-div">
			<button id="gomembership">회원가입 바로가기</button>
			
		</div>
<script type="text/javascript">
document.getElementById("gomembership").addEventListener("click",function(){
	console.log(document.getElementById("mail-check-warn").innerHTML);
	if(document.getElementById("mail-check-warn").innerHTML == "인증번호가 일치합니다."){
		let email = $('#userEmail1').val() + $('#userEmail2').val();
		location.href="${pageContext.request.contextPath}/gomembership?email="+email;
	}else{
		alert("이메일 인증을 완료해주세요!")
	}
	
})
$('#mail-Check-Btn').click(function(e) {
      const email = $('#userEmail1').val() + $('#userEmail2').val(); // 이메일 주소값 얻어오기!
      console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
      const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
      
      e.preventDefault();

      fetch("${pageContext.request.contextPath}/check",{
         method : "POST",
         headers : {"Content-Type" : "application/json"},
         body : JSON.stringify({"email":email})
      }).then(response => response.json())
      .then(data => {
         console.log("data : " +  data["authNumber"]);
         checkInput.attr('disabled',false);
         
         code =data["authNumber"];
         alert('인증번호가 전송되었습니다.')
      }).catch(error => {
         console.log("error");
      });
   }); // end send eamil
   
   // 인증번호 비교 
   
   $('.mail-check-btn1').click(function () {
      const inputCode = $('.mail-check-input').val();
      const $resultMsg = $('#mail-check-warn');
      console.log(code);
      if(inputCode === code){
         $resultMsg.html('인증번호가 일치합니다.');
         $resultMsg.css('color','green');
         $('#mail-Check-Btn').attr('disabled',true);
         $('#userEamil1').attr('readonly',true);
         $('#userEamil2').attr('readonly',true);
         $('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
         $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
         window.close();
      }else{
         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
         $resultMsg.css('color','red');
      }
   });
   </script>
   		
	</article>
       </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
  

  
  </body>
</html>