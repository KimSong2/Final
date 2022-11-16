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
                    gap: 2vh;
                }    
                .find_phone {
                   
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    gap: 2vh;
                   
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
                        <h2>아이디 찾기</h2>
                        <div class="find_container">
                            <div class="find_radio">
                                <input type="radio" name="r_find" id="r_email" checked><label for="r_email">이메일</label>
                                <input type="radio" name="r_find" id="r_phone"><label for="r_phone">휴대폰번호</label>
                            </div>
                            <div class="form_container">
                            
                                <form action="${pageContext.request.contextPath}/findidmail" method="get" class="cform">
                                    <div class="find_form find_email">
                                        <div class="form_name">
                                            <label for="">이름</label><input type="text" name="memName" id="memName">
                                        </div>
                                        <div class="form_email">
                                            <label for="">이메일로 찾기</label><input type="text" name="memEmail"
                                                id="memEmail">
                                        </div>
                                        <div class="find_btn">
                                        <button id="mailbtn">확인</button>
                                    </div>
                                    </div>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/findidphone" method="get" class="cform">
                                    <div class="find_form find_phone" style="display: none;">
                                        <div class="form_name">
                                            <label for="">이름</label><input type="text" name="memName" id="memName2">
                                        </div>
                                        <div class="form_phone">
                                            <label for="">휴대폰번호</label><input type="text" name="memPhone" id="memPhone">
                                        </div>
                                        <div class="find_btn">
                                        <button id="phonebtn">확인</button>
                                    </div>
                                    </div>
                                    
                                </form>
                                
                            </div>
                        </div>
                        <script>
                            window.addEventListener('DOMContentLoaded', function(){
                          
                                $("input:radio[name=r_find]").change(function(){
                                    if($("#r_phone").is(":checked")){
                                        $(".find_phone").show();
                                        $(".find_email").hide();
                                    
                                    } else {
                                        $(".find_email").show();
                                        $(".find_phone").hide();
                                        
                                    }
                                })
                                
                                //이메일 정규표현식, 통과 시 true 리턴
                                /* function email_check( email ) { */
    	
   								 var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    							/* 	return (email != '' && email != 'undefined' && regex.test(email)); */

								/* } */
								//공백 체크 정규식
								var regExp = /\s/g; 

                                $("input[name='memEmail']").blur(function(){
                                	var email = $(this).val();
                                	
                                	//// 값을 입력안한경우는 아예 체크를 하지 않는다.
        							
                                	//이메일 공백 확인
                                	
       								 // 이메일 유효성 검사
       								if(!regex.test(email)) {
           								alert("이메일 확인");
           								
        							}
       								 
                                });
								
                                $("input[name='memName']").blur(function(){
                                	var name =$(this).val();
                                	/* if(!regExp.test(name)){
                                		alert('이름 입력하라고');
                                	} */
                                });
                                
                                $("#mailbtn").click(function(){
                                	if($("#memName").val() == "") {
                                		alert("이름 입력안했다")
                                		$("form").attr("action","#");
                                	}
                                	
                                	if($("input[name='memEmail']").val() == ""){
                                		alert("메일 입력안했다")
                                		$("form").attr("action","#");
                                	}
                                	
                                })
                                
                                $("#phonebtn").click(function(){
                                	if($("#memName2").val() == "") {
                                		alert("이름 입력안했다")
                                		$("form").attr("action","#");
                                	}
                                	
                             
                                	if($("input[name='memPhone']").val() == ""){
                                		alert("번호 입력안했다")
                                		$("form").attr("action","#");
                                	}
                                })
                            });
                        </script>
                    </section>
    </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
 
</body>

</html>