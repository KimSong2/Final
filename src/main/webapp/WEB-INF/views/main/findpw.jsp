<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fyiyg55rlb"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
  <title>Document</title>
  <style type="text/css">		 
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
      height: 3000px
    }

	button{
		cursor:pointer;
	}
    #container {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    display: grid;
                    grid-template-rows: 70px 1fr 70px;
                    grid-template-columns: 1fr;
                }


                main {
                    width: 100%;
                    background-color: #f5ebe0;

                }

                section {
                    width: 50vw;
                    min-height: 82vh;
                    margin: 0 auto;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }

                #sec1>h2 {
                    padding: 2vh;
                }

                .find_container {
                    width: 35%;
                    margin: 0 auto;
                    display: flex;
                    flex-direction: column;
                    gap: 2vh;
                        min-width: 275px;
                }

                .form_name,
                .form_email,
                .form_phone {
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                    
                }

                .find_form {
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    gap: 1vh;
                }
                .form_container>form {
                    display: flex;
    flex-direction: column;
    gap: 1vh;
    justify-content: center;
    align-items: center;
                }
                .find_btn {
                   width: 100%;
                       display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
                }
                .find_btn>button {
                    width: 35%;
                    background-color: black;
                    color: white;
                    font-weight: bold;
                }
                html {
                    scroll-behavior: smooth;
                }
                .find_email{
                    display: block;
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    gap: 1vh;
                }    
                .find_phone {
                   
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    gap: 1vh;
                   
                }
                
                .form_repw {
                display:none;
                }
  	
  </style>
</head>

<body>
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
    <main>
    <section id="sec1">
                        <h2>비밀번호 찾기</h2>
                        <div class="find_container">
                            
                            <div class="form_container">
                                <form action="${pageContext.request.contextPath}/repw" method="get" class="cform">
                                    <div class="find_form find_pw">
                                    	<div class="form_id">
                                            <label for="">아이디</label><input type="text" name="memId" id="memId">
                                        </div>
                                        <div class="form_name">
                                            <label for="">이름</label><input type="text" name="memName" id="memName">
                                        </div>
                                        <div class="form_email">
                                            <label for="">이메일</label><input type="text" name="memEmail" id="memEmail"><button type="button" id="popbtn">인증하기</button>
                                        </div>
                                        <input type="hidden" name="check" id="check" />
                                    	<div class="find_btn">
                                        	<button type ="submit" id="mailbtn">확인</button>
                                    	</div>
                                    </div>
                               
                                </form>
                                
                                     
                            	
                            </div>
                        </div>
                       
                    </section>
    </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
 
  <script type="text/javascript">
  window.addEventListener('DOMContentLoaded', function(){
	  //팝업창 실행. 메일값도 같이 넘겨줌
	  $("#popbtn").click(function(){
	
		  var id = document.getElementById("memId").value;
		  var name = document.getElementById("memName").value;
		  var mail = document.getElementById("memEmail").value;
		  if(!id) {
			  alert("아이디를 입력하세요");
		  } 
		  if(!name){
			  alert("이름을 입력하세요");
		  }
		  if(!mail){
			  alert("메일을 입력하세요");
		  } 
		if(mail && id && name) {	
			
			fetch("${pageContext.request.contextPath}/checkId", 
					{ method: "POST",
					  headers: {
					    "Content-Type": "application/json"
					  },
					  body: JSON.stringify({id: id, name: name, mail:mail})
					}).then((response) => response.json())
					.then((data) => {
						
							if(data>0){
								window.open("${pageContext.request.contextPath}/findmailcheck","이메일 인증하기","width = 500, height = 500");
							}else{
								alert("아이디와 이메일을 확인해주세요");
								return false;
							}
						}
					);
			
		  		  
		}
		
	  })
	  
	  
	  
	  $("#mailbtn").click(function(){
		  var check = document.getElementById("check").value;
		  
		  if(check != 1){
			  alert("인증에 실패했다")
			  document.getElementById("memId").value = "";
			  document.getElementById("memName").value="";
			  document.getElementById("memEmail").value="";
			  return false;
		  } 
	  });
	  
	  
	  
  })
  </script>
</body>

</html>