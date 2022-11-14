<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/hotel/header.css?11">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
<title>Insert title here</title>
<style>
html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}

body {
	position: relative;
	height: 100%;
	overflow-x:hidden;
}

#container {
	position: relative;
	width: 100%;
	height: 100%;
	display: grid;
	grid-template-rows: 70px 1fr 70px;
	grid-template-columns: 1fr;
}

main {
	width: 100%;
	background-color: #EDEDE9;
}

section {
	width: 100vw;
	height: 100%;
}

/* img */
#hotel_img {
	display: grid;
	grid-template-rows: repeat(5, 1fr);
	grid-template-columns: repeat(3, 1fr);
	grid-template-areas: 'img1 img1 img2' 'img1 img1 img2' 'img1 img1 img5'
		'img3 img4 img5' 'img3 img4 img5';
	gap: 10px;
	height: 82vh;
	width: 90%;
	margin: 10px auto;
}

#img0 {
	grid-area: img1;
	background-color: red;
}

img {
	size: inherit;
}

#img1 {
	grid-area: img2;
	background-color: yellow;
}

#img2 {
	grid-area: img3;
	background-color: green;
}

#img3 {
	grid-area: img4;
	background-color: blue;
}

#img4 {
	grid-area: img5;
	background-color: purple;
}

#img1, #img2, #img3, #img4, #img0 {
	width: 100%;
	height: 100%;
}

#img0>button {
	width: 100%;
	height: 100%;
	border: none;
	padding: 0
}

.aimg {
	object-fit: cover;
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

#datepicker1 {
	width: fit-content;
	border: 0;
	background-color: #edede9;
	font-size: 17px;
}

/* #selecbtn {
            height: 70%;
            border: 0;
            background-color: black;
            width: 5vw;
            color: white;
        } */
.selecbtn {
	height: 70%;
	border: 0;
	background-color: black;
	width: 5vw;
	color: white !important;
	text-align: center;
}

.isbx-toggle {
	display: block !important;
}
/*  #ioutbox {
           display: none;
            width: 90%;
            margin: 0 auto;
            padding-bottom: 1vh;
        }
 */
.outbox {
	display: block !important;
	width: 90%;
	margin: 0 auto;
}

#bxform>label {
	padding: 0px 5px;
}

.clicked {
	display: block !important;
	display: flex !important;
	opacity : 1;
}

#isbx {
	display: flex;
	flex-direction: row;
	justify-content: left;
	width: 70%;
	gap: 4vw;
	margin: 0 auto;
	display: none;
}

#selectp {
	cursor: default;
}


</style>
</head>

<body>
	<div id="container">
		<header>
			<%@ include file="../frame/hotel/header.jsp"%>
		</header>

		<main>
			<section>
				<div class="date">
					<div class="indate">
						<p id="selectp">지역을 선택해주세요</p>

						<!-- <input type="text" placeholder="지역을" id="choicehotel"> -->
						
					</div>
					<input type="text" id="datepicker1" name="dates" readonly>
					<!-- <button class="selecbtn">검색</button> -->
					<a href="#" class="selecbtn" id="asearchbtn">검색</a>
				</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<!-- <div class="coutbox" id="ioutbox"> -->
				<div id="isbx" class="csbx">
					<p>지역구분</p>
					<form action="#" id="bxform">
						<input type="checkbox" name="cate" id="l1" class="allseo" value="서울"><label for="l1">서울전체</label> 
						<input type="checkbox" name="cate" id="l2" class="seo" value="금천구"><label for="l2">금천구</label>
						<input type="checkbox" name="cate" id="l3" class="seo" value="은평구"><label for="l3">은평구</label> 
						<input type="checkbox" name="cate" id="l4" class="seo" value="강남구"><label for="l4">강남구</label>
						<input type="checkbox" name="cate" id="l5" class="seo" value="강서구"><label for="l5">강서구</label>
						<input type="checkbox" name="cate" id="l6" class="seo" value="관악구"><label for="l6">관악구</label>
						<input type="checkbox" name="cate" id="l7" class="seo" value="도봉구"><label for="l7">도봉구</label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="cate" id="l8" class="seo" value="서초구" ><label for="l8">서초구</label>
						<input type="checkbox" name="cate" id="l9" class="seo" value="성동구"><label for="l9">성동구</label>
						<input type="checkbox" name="cate" id="l10" class="seo" value="양천구"><label for="l10">양천구</label> 
						<input type="checkbox" name="cate" id="l11" class="seo" value="용산구"><label for="l11">용산구</label>
						<input type="checkbox" name="cate" id="l12" class="seo" value="서대문구"><label for="l12">서대문구</label>
						<input type="checkbox" name="cate" id="l13" class="seo" value="동대문구"><label for="l13">동대문구</label>
						<input type="checkbox" name="cate" id="l14" class="seo" value="강동구"><label for="l14">강동구</label> <br />
						<input type="checkbox" name="cate" id="l20" class="allgyeong" value="경기"><label for="l20">경기전체</label> 
						<input type="checkbox" name="cate" id="l21" class="gyeong" value="구리시"><label for="l21">구리시</label>
						<input type="checkbox" name="cate" id="l22" class="gyeong" value="남양주시"><label for="l22">남양주시</label> 
						<input type="checkbox" name="cate" id="l23" class="gyeong" value="의정부시"><label for="l23">의정부시</label>
						<input type="checkbox" name="cate" id="l24" class="gyeong" value="포천시"><label for="l24">포천시</label>
						<input type="checkbox" name="cate" id="l25" class="gyeong" value="하남시"><label for="l25">하남시</label><br />
						<input type="checkbox" name="cate" id="l15" class="allin" value="인천"><label for="l15">인천전체</label>
						<input type="checkbox" name="cate" id="l16" class="in" value="연수구"><label for="l16">연수구</label> 
						<input type="checkbox" name="cate" id="l17" class="in" value="부평구"><label for="l17">부평구</label> 
						<input type="checkbox" name="cate" id="l18" class="in" value="남동구"><label for="l18">남동구</label>
						<input type="checkbox" name="cate" id="l19" class="in" value="서구"><label for="l19">서구</label> <br />
						<input type="checkbox" name="cate" id="l26" class="allchung" value="충북"><label for="l26">충북전체</label>
						<input type="checkbox" name="cate" id="l27" class="chung" value="음성군"><label for="l27">음성군</label>
						<input type="checkbox" name="cate" id="l28" class="chung" value="제천시"><label for="l28">제천시</label>
						<input type="checkbox" name="cate" id="l29" class="chung" value="청주시"><label for="l29">청주시</label>
						<input type="checkbox" name="cate" id="l30" class="chung" value="충주시"><label for="l30">충주시</label> 
						<!-- <button type="button"  id="sbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"
							id="svg">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg></button> -->
					</form>
				</div>
				<!-- </div> -->
			
				<script>
					
					window.addEventListener('DOMContentLoaded', function(){
						
					//카테고리 배열 설저
						
						
						let now = new Date();
						let tom = new Date();
						
						tom.setDate(tom.getDate()+1);
						
						
						$('input[name="dates"]').daterangepicker({
							 "startDate": now,
	                            //시작날짜
	                         "endDate": tom,
	                            //종료날짜
	                         "minDate": now,
	                            //최소지정날짜
	                         "opens": "center",
	 
	                         locale: {
	                           	//기타 설정
	                            "separator": " ~ ",
	                            	//구분자
	                           	"applyLabel": "적용",
	                            	 //버튼 라벨
	                            "cancelLabel": "취소",
	                            format: "YYYY-MM-DD",
	                            daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
	                            monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	                        }
	                    });
						
						$('input[name="dates"]').on('show.daterangepicker', function() {
							$(".cancelBtn").css("float", "right");
                     	 	$(".cancelBtn").css("background-color", "white");
                     	 	$(".cancelBtn").css("color","black");
                     	 	$(".applyBtn").css("background-color", "black");
                     	 	$(".applyBtn").css("color","white");
                     		$(".cancelBtn, .applyBtn").css("border","1px solid black");
                     	 	$(".cancelBtn, .applyBtn").css("cursor","pointer");
                     		$(".cancelBtn, .applyBtn").css("width", "60px");
						});
						
						$('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
							 //datepicker에서 적용버튼을 클릭했을 때
							 startdate = picker.startDate.format('YYYY-MM-DD');
							 enddate = picker.endDate.format('YYYY-MM-DD');
							
						});
						
						
						
						console.log("스타트"+startdate);
						console.log("엔드"+enddate);
				
						let today =  now.getFullYear() + "-" + ((now.getMonth() + 1) > 9 ? (now.getMonth() + 1).toString() : "0" + (now.getMonth() + 1)) + "-" + (now.getDate() > 9 ? now.getDate().toString() : "0" + now.getDate().toString());
	                    let tommorow = tom.getFullYear() + "-" + ((tom.getMonth() + 1) > 9 ? (tom.getMonth() + 1).toString() : "0" + (tom.getMonth() + 1)) + "-" + (tom.getDate() > 9 ? tom.getDate().toString() : "0" + tom.getDate().toString());
	                    
	                    let cateArr = [];
						let cateArr2 = [];
		        
						var startdate = null;
						var enddate=null;
	                    
	                   
	                    
	                   
						
						//지역구 선택 안했으면 글씨 빨간색으로 바뀌는거
						$("#asearchbtn").click(function(){
							
							 $('input[name="cate"]:checked').each(function(){
									var cate=$(this).val();
									cateArr.push(cate);
									cateArr2 = cateArr.slice(1);
								});
							 
							 console.log("cateArr"+cateArr);
			                 console.log("cateArr2"+cateArr2);
							
						if(Array.isArray(cateArr) && cateArr.length === 0) {
							$("#asearchbtn").click(function(){
								$("#selectp").css("color","red");
								$("#selectp").css("fontWeight","900");
								$("#isbx").css("display", "block");
								$("#isbx").css("display", "flex");
							});
						} else { //지역구를 선택한 경우
							
							
								$("#selectp").css("color","black");
								$("#isbx").css("display", "none");
						 		if(startdate!=null){ // 날짜적용선택시
						 			console.log("start" + startdate);
						 			console.log("end"+enddate);
						 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
						 				console.log("적용버튼 누르고 all누름");
						 				console.log("cateArr2"+cateArr2);
										$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr2);
						 			} else {
						 				console.log("적용버튼 누르고 all 안누름");
						 				console.log("cateArr2"+cateArr);
						 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);
						 			}
						 		} else { //날짜 선택 안했을 시 오늘 날짜가 들어감
						 			console.log("today"+today);
						 			console.log("tommorow"+tommorow);
						 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
						 				console.log("적용버튼 안 누르고 all누름");
						 				console.log("cateArr2"+cateArr2);
										$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+cateArr2);
						 			} else {
						 				console.log("적용버튼 안 누르고 all안누름");
						 				console.log("cateArr2"+cateArr);
						 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+cateArr);
						 			}
						 		}
							
						}
						
						});	
						 
					});	
						/*  document.getElementById("asearchbtn").addEventListener("click",function(){ */
							 
		                     //daterangepicker를 사용하지 않았으면 오늘 날짜와 내일 날짜가 들어감
		                     
		          
						/*  }); */
					
					
					
                   
	
                </script>
                
               <script type="text/javascript">
				$('.allseo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.seo').prop("checked",true);
                 	} else {
                 		$('.seo').prop("checked",false);
                 	};
                 });
                 
                 $('.allin').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.in').prop("checked",true);
                 	} else {
                 		$('.in').prop("checked",false);
                 	};
                 });
                 
                 $('.allgyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.gyeong').prop("checked",true);
                 	} else {
                 		$('.gyeong').prop("checked",false);
                 	};
                 });
                 
                 $('.allchung').click(function(){
                  	if($('.allchung').is(':checked')){
                  		$('.chung').prop("checked",true);
                  	} else {
                  		$('.chung').prop("checked",false);
                  	};
                  });
                 
                 $('.seo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.allseo').prop("checked", false);
                 	};
                 	
                 	if($('.seo:checked').length == $('.seo').length){
                     	$('.allseo').prop("checked",true);
                     };
                 });
                 
                 $('.in').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.allin').prop("checked", false);
                 	};
                 	
                 	if($('.in:checked').length == $('.in').length){
                     	$('.allin').prop("checked",true);
                     };
                 });
                 
                 $('.gyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.allgyeong').prop("checked", false);
                 	};
                 	
                 	if($('.gyeong:checked').length == $('.gyeong').length){
                     	$('.allgyeong').prop("checked",true);
                     };
                 });
                 
                 $('.chung').click(function(){
                  	if($('.allchung').is(':checked')){
                  		$('.allchung').prop("checked", false);
                  	};
                  	
                  	if($('.chung:checked').length == $('.chung').length){
                      	$('.allchung').prop("checked",true);
                      };
                  });
				
				</script>
				<!--  --><script>
                    
				 var p = document.getElementById("selectp");
                 var svg = document.getElementById("svg");
                 var iob = document.getElementById("ioutbox");
					var isbx = document.getElementById("isbx");
                 var date = document.getElementById("datepicker1");
					var div = document.getElementById("datepicker1").firstChild;
					var searchbtn = document.getElementById("asearchbtn");
                 
                 p.addEventListener("click", function () {
                 	isbx.classList.toggle("clicked");    
                 });
                 
                /* svg.addEventListener("click", function () {
                 	isbx.classList.toggle("clicked");
                 	
                 });*/
                 
                 date.addEventListener("click", function () {
                 	
                 	if(isbx.className="clicked"){
                 		isbx.classList.toggle("clicked");
                 	}
                 });
                    
                 /* document.getElementById("sbtn").addEventListener("click", function(){
                	 isbx.classList.toggle("clicked");
                	 
                 }); */
                	/* asearchbtn.addEventListener("click", function () {
                  	isbx.classList.toggle("clicked");    
                  }); */
                </script>
				<div id="hotel_img">
                <c:forEach var="item" items="${ranhotel}" varStatus="status">
                	
                	<div id="img${status.index}">
						<a href="#" class="link" id=${item.hotelId }><img
							src="${item.hotelThum}" alt="" class="aimg"></a>
					</div>	
                
                </c:forEach>
				    </div>
				    <script type="text/javascript">
				    window.addEventListener('DOMContentLoaded', function(){
				    	let now = new Date();
						let tom = new Date();
						
						tom.setDate(tom.getDate()+1);
				    	
				    	let today =  now.getFullYear() + "-" + ((now.getMonth() + 1) > 9 ? (now.getMonth() + 1).toString() : "0" + (now.getMonth() + 1)) + "-" + (now.getDate() > 9 ? now.getDate().toString() : "0" + now.getDate().toString());
	                    let tommorow = tom.getFullYear() + "-" + ((tom.getMonth() + 1) > 9 ? (tom.getMonth() + 1).toString() : "0" + (tom.getMonth() + 1)) + "-" + (tom.getDate() > 9 ? tom.getDate().toString() : "0" + tom.getDate().toString());
	                    
				    	
				    	$(".link").click(function(){
				    		var id = $(this).attr("id");
				    		console.log(id);
				    		$(this).attr("href","${pageContext.request.contextPath}/godetail/"+id+"/"+today+"/"+tommorow);
				    	})
				    	
				    })
				    </script>
			</section>
			
		</main>

		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>


</body>
</html>