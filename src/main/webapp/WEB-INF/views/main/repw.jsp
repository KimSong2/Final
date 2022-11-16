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
  	
  </style>
</head>

<body>
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
    <main>
    <section id="sec1">
                        <h2>비밀번호 재설정</h2>
                        <div class="find_container">
                            
                            <div class="form_container">
                                <form action="#" method="get" class="cform">
                                    <div class="form_repw">
                            			<div class="form_pw">
                                            <label for="">비밀번호</label><input type="text" name="memPw" id="memPw">
                                        </div>
                                        <div class="form_name">
                                            <label for="">비밀번호 확인</label><input type="text" name="memPw2" id="memPw2">
                                        </div>
                                        <div class="find_btn">
                                        	<button type ="button" id="pwbtn">확인</button>
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
 
 
</body>

</html>