<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="pop_container">
<h2>이메일 인증하기</h2>
<div class="input-group-addon">
	<input type="text" name="memMail" id="memMail" value="" readonly/>
	
   		<button type="button" class="btn btn-primary" id="mail-Check-Btn">인증번호 받기</button>
	</div>
   	<div class="mail-check-box">
   		<p><small id="small">- 인증번호 받기 버튼을 클릭하시면 번호입력창이 활성화 됩니다!</small></p>
		<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
		<button type="button" class="mail-check-btn1">인증 확인</button>
	</div>
	<span id="mail-check-warn"></span>
	</div>
	<script type="text/javascript">
	const valemail = opener.$("#memEmail").val();
	$('input[name=memMail]').attr("value",valemail);
	$('#mail-Check-Btn').click(function(e) {
	      const email = opener.$("#memEmail").val(); // 이메일 주소값 얻어오기! 부모창에서 팝업창으로 메일 값 가져옴
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
	         opener.document.getElementById("check").value = 1;
	         window.close();
	      }else{
	         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
	         $resultMsg.css('color','red');
	      }
	   });
	</script>
</body>
</html>