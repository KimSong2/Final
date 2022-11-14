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
        .art1{
    width: 80%;
    margin: 0 auto;
    border-top: 2px solid black;
   }
   
    
   #art3-question{
    padding-bottom: 15px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
   }
   #art3-content{
    padding-top: 15px;
    padding-bottom: 18px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
    
    display: none;
   }
   .display-block{
    display: block !important;
   }
       

        button {
            cursor: pointer;
        }

        #main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height:100%;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:50vw;
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
        #art3 {
            
            flex:5;
            
            display: flex;
           
            justify-content:center;
            gap: 4px;
        }
       .art2container{
            display: flex;
            flex-direction: column;
            justify-content:center;
            width:60vw;
           
        }
      
        #sec2-div2 li {
            display: block;
            font-size: 13px;
            margin-top: 30px;
        }
        #sec2-div2-sel{
            padding:10px;
            height: 25px;
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
        #art3 input{
          width: 55%;
          height: 30px;
          border-radius: 5px;
          border: none;
          margin-bottom: 40px;
        }
        #accept{
          width: 15px !important;
          height: 15px !important;
        }
        #art3 button{
          
          width: 45%;
          height: 50px;
          background-color: #D9D9D9;
          border: 0.5px solid;
          font-size: 1rem;
          font-weight: 600;
          border-radius: 5px;
        }
        #art3 button:hover{
       background-color:#f1f1f1;
       border:none;
       
        }
        .h2{
		width:100%;
		text-align:left;
		margin-bottom:50px;
		margin-top:30px;
		font-size:30px;
		}
		#qacategory{
		width:55.5%;
		height:30px;
 		border-radius: 5px;
        border: none;
        margin-bottom: 40px;
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
                           <li><a href="${pageContext.request.contextPath}/mypage" >주문내역조회</a></li>
                           <li><a href="${pageContext.request.contextPath}/myhotelres">예약내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question" style="text-decoration: underline">문의하기</a></li>
                            
                        </ul>
                    </nav>
                    
                    <article id="art3">
                    <div class="art2container">
                    <h2 style="text-decoration: underline" class="h2">문의하기</h2>
                       <div>
                        <p>문의 사항이 있으신 경우 <br> 
                         
                          이메일 문의 서비스를 이용하시면
                          보다 신속하게 응대를 도와드리겠습니다. <br>
                          감사합니다.</p>
                       </div>
                       <br>
                       <h3>이메일 문의</h3><br>
                       <p style="margin-bottom: 5px;">문의 내용</p>
                       <form action="${pageContext.request.contextPath}/mailing">
                       <select name="qacategory" id="qacategory">
                        <option value="제품 문의">제품 문의</option>
                        <option value="제품 환불 문의">제품 환불 문의</option>
                        <option value="택배 문의">택배 문의</option>
                        <option value="기타 문의">그 외</option>
                       </select>
                       
                       <input type="text" name="ordernumber" id="ordernumber" placeholder="* 주문 번호를 입력하세요">
                       <input type="text" name="senderName" id="senderName" placeholder="* 이름">
                       <input type="email" name="senderMail" id="senderMail" placeholder="* 이메일 주소">
                       <input type="text" name="title" id="title" placeholder="* 문의 제목"><br>
                       <textarea rows="15" cols="88" name="content" id="content"></textarea>
                       <p>※ 개인정보보호를 위해 내용 입력란에 개인정보가 포함되지 않도록 주의해주세요.</p>
                       <p>개인정보 수집 및 이용에 대한 동의 (필수)
                        회사는 본 웹사이트를 통한 상담 서비스 제공을 위하여 아래와 같은 개인정보를 수집하고 있습니다. <br><br>
                        
                        수집하는 개인정보 항목 <br>
                        • 이름, 이메일 주소, 휴대폰 번호 <br><br>
                        
                        수집 및 이용 목적 <br>
                        문의 내용 상담, 신고접수 및 결과 회신 <br><br>
                        
                        개인정보 보유 기간 <br>
                        (i) 개인정보 보유 목적 달성 시, 또는 (ii) 관계 법률에 의해 보존할 필요가 있는 경우 법률에 따른 보관 기간 동안 보관 <br><br>
                        
                        ※ 귀하는 상기와 같은 개인정보의 수집 및 이용에 대해 동의를 거부할 권리가 있습니다. <br>
                         다만, 동의를 거부하는 경우 온라인 상담 등의 이메일 문의 서비스를 제공받으실 수 없습니다.</p><br>
                        <input type="checkbox" name="accept" id="accept" value="Y"> <label for="accept">* 개인정보 수집 및 이용에 동의합니다</label><br>
           				
                        <button id="sendbtn">전송</button>
                        </form>
                       
                        
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