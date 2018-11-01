<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style>
html {
	/* width:100%;
	height:100%; */
	background: black url(resources/images/informBoard/cross.jpg) no-repeat
		center center fixed;
	background-size: cover;
}

.wrap {
	width: 100%;
}

.top {
	width: 820px;
	margin: 0 auto;
	height: 720px;
}

.tableWrap {
	width: 820px;
	background: rgba(230, 230, 230, 0.8);
	height: 720px;
	border-radius: 3px;
	padding-top: 20px;
}

.tableArea {
	font-size: 20px;
	padding-left: 30px;
	padding-right: 30px;
	text-align: left;
	padding-top: 30px;
}
.tableArea>b{
	color:#f77d68;
}

.middleWrap {
	width: 820px;
	background: #fff;
	margin-left: -20px;
	border-radius: 3px;
	height: 750px;
	display: -webkit-box;
}

.left {
	width: 400px;
	height: 600px;
}

.right {
	
	width: 400px;
	height: 500px;
}

form{

display: -webkit-box;


}


table {
	margin: 0 auto;
	width:300px;
}
td{
	margin:5 auto;
}

input {
	width: 300px;
	border: 0;
	border-bottom: 1px solid #888;
	padding: 10px;
	height: 20px;
	font-size: 15px;
	outline: none;
	color:black;
	 transition: all 0.1s ease-in-out 0s;"
	 -webkit-appearance: none;
}

label{

	left: 0px;
    font-size: 15px;
    font-weight: 600;
    color:/*  rgb(153, 153, 153); */
    #feab2a;
    transition: all 0.1s ease-in-out 0s;
    top: 0px;
}

.labelWrap{
	width:200px;
	padding-top:30px

}
#fileImg1{
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
}

#imgBtn1{
	border:1px solid #888;
	border-radius:2px;
	width:100px;
	height:60px;
	font-size:10px;
	text-align:center;
	
}
#fileImg2{
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
    
}

#imgBtn2{
	border:1px solid #888;
	border-radius:2px;
	width:100px;
	height:60px;
	font-size:10px;
	text-align:center;
	
}
#fileImg3{
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
    
}

#imgBtn3{
	border:1px solid #888;
	border-radius:2px;
	width:100px;
	height:60px;
	font-size:10px;
	text-align:center;
	
}
.imgWrap{
	width:100px;
	padding-top: 40px;
	

}
#imgArea{
	display: -webkit-box;

}
#enrollBtn{
	width:310px;
	height:60px;
	border-radius:3px;
	background:#00bff0;
	color:white;
	border-color:#00bff0;
	font-color:white;
	font-size:20px;
	text-align:center;
	
	
}
#enrollBtn:hover{
	cursor:pointer;
	background:#000066;
	border-color:#000066;

}
.imgLabel{
	margin-left:20px;
	color:#0084c2
}


</style>
</head>
<body>
	<div class="wrap">

		<div class="top">

			<div class="tableWrap">

				<div class="middleWrap">
					<div class="left">


						<div class="tableArea">
							admin님<br> 지금부터 <b>크루작성</b> 시작할게요
						</div>

						<form>
						<!-- <form action="/insert.no" method="post" autocomplete="off"> -->
							<table>
								<tr>
									<td class="title">
									<div class="labelWrap">
									<label>공고제목</label>
									<input name="fromDt" type="text" id="title" size="50" maxlength="8" title="공고제목" style="width: 300px">
									</div>
									</td>
								</tr>

								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>신청시작일</label>
									<input name="fromDt" type="text" id="fromDt" size="8"maxlength="8" title="신청시작일자" style="width: 300px">
									</div>
									</td>
								</tr>
								
								<tr>
									<td id="enEndDate">
									<div class="labelWrap">
									<label>신청마감일</label>
									<input name="toDt" type="text" id="toDt" size="8"maxlength="8" title="신청마감일" style="width: 300px">
									</div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>시작일</label>
									<input name="dDay" type="text" id="dDay" size="8"maxlength="8" title="시작일" style="width: 300px">
									</div>
									</td>
								</tr>	
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>강사</label>
									<input type="text" size="50"name="teacherName" title="강사">
									</div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>지역</label>
									<input type="text" size="50"name="startDate" ></div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>주요내용</label>
									<input type="text" size="50"name="mainContent" ></div>
									</td>
								</tr>

							</table>
							<div class="right">
							<table>
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>제휴업체</label>
									<input type="text" size="50"name="facility" ></div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>일정</label>
									<input type="text" size="50"name="timeManage"></div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>차감패스</label>
									<input type="text" size="50"name="minusPass"></div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>content</label>
									<input type="text" size="50"name="content"></div>
									</td>
								</tr>
								
								 <tr id="imgArea">
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진1</label>
									<input type="file" size="50"name="fileImg1" id="fileImg1">
									<button id="imgBtn1">대표사진1</button>
									</div>
									</td>
									
								
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진2</label>
									<input type="file" size="50"name="fileImg2" id="fileImg2"></div>
									<button id="imgBtn2">대표사진2</button>
									</td>
									
									
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진3</label>
									<input type="file" size="50"name="fileImg3" id="fileImg3"></div>
									<button id="imgBtn3">대표사진3</button>
									</td>
									
									
									
								</tr> 
								
								<tr>
									<td>
									<div class="labelWrap">
									
									<button id="enrollBtn">등록하기</button></div>
									
									
									</td>
								</tr>
							
							
							
							
							
							
							</table>
							</div>
						</form>
					</div>
								


				</div>

			</div>
		</div>

	</div>











	<script language="javascript" type="text/javascript">
		$(document).ready(
				function() {
					var st = "";

					//******************************************************************************
					// 상세검색 달력 스크립트
					//******************************************************************************
					var clareCalendar = {
						monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ],
						dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
						weekHeader : 'Wk',
						dateFormat : 'yymmdd', //형식(20120303)
						autoSize : false, //오토리사이즈(body등 상위태그의 설정에 따른다)
						changeMonth : true, //월변경가능
						changeYear : true, //년변경가능
						showMonthAfterYear : true, //년 뒤에 월 표시
						//buttonImageOnly: true, //이미지표시
						/* buttonText: '달력선택', //버튼 텍스트 표시 */

						//buttonImage: 'res/img/comn/calendar.gif', //이미지주소
						/* showOn: "both", //엘리먼트와 이미지 동시 사용(both,button) */
						yearRange : '1990:2020' //1990년부터 2020년까지
					};
					$("#fromDt").datepicker(clareCalendar);
					st = $("#fromDt").val();
					$("#toDt").datepicker(clareCalendar);
					$("#dDay").datepicker(clareCalendar);
					/* $(".ui-datepicker-trigger").attr("style","margin-left:100px; width:80px; background:#00bff0;height:40px;border-radius:3px;color:white;font-weight:bold;cursor:pointer;"); //이미지버튼 style적용 */
					$("#ui-datepicker-div").hide(); //자동으로 생성되는 div객체 숨김 
				});
	</script>
	<!-- <script>
		function go(){
			document.getElementsTagName("input").style.border-bottom-style=="outset";
			
			
		}
	
	
	</script> -->
	
	<script>
	$('#imgBtn1').click(function(){
	    $('#fileImg1').click();
	});
	
	
	</script>
	<script>
	$('#imgBtn2').click(function(){
	    $('#fileImg2').click();
	});
	
	</script>
	<script>
	$('#imgBtn3').click(function(){
	    $('#fileImg3').click();
	});
	
	</script>


</body>
</html>