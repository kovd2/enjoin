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
    width:0;
    height:0;
}


#imgBtn1{
	border:1px solid #888;
	border-radius:2px;
	width:100px;
	height:60px;
	font-size:10px;
	text-align:center;
	padding:0px;
	
	
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
	padding:0px;
	
}
#imgBtn1>img{
	width:100px;
	height:60px;
}
#imgBtn2>img{
	width:100px;
	height:60px;
}
#imgBtn3>img{
	width:100px;
	height:60px;
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
	padding:0px;
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

#selectBox{
    width: 320px;
    margin-top: 20px;
	border-color:#00bff0;
	background:#00bff0;
	height:30px;
	color:white;

}

.imgbox{
	width:50px;
	height:50px;

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

						<form action="insertInform.kch2" method="post" encType="multipart/form-data" autocomplete="off">
						<!-- <form action="/insert.no" method="post" autocomplete="off"> -->
							<table>
							
								<tr>
									<td class="title">
									<div class="labelWrap">
									<label>공고제목</label>
									<input name="informBoardTitle"  type="text" id="title" size="200" maxlength="200" title="공고제목" style="width: 300px">
									</div>
									</td>
								</tr>

								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>신청시작일</label>
									<input name="noticeRequest" type="text" id="fromDt" size="50"maxlength="8" title="신청시작일자" style="width: 300px">
									</div>
									</td>
								</tr>
								
								
								<tr>
									<td id="activityArea">
									<div class="labelWrap">
									<label>지역</label>
									<input name="crewArea" type="text" size="50"maxlength="50" title="장소" style="width: 300px">
									</div>
									</td>
								</tr>
								
								
								
								
								
								<tr>
									<td id="enEndDate">
									<div class="labelWrap">
									<label>신청마감일</label>
									<input name="noticeEnd" type="text" id="toDt" size="50"maxlength="8" title="신청마감일" style="width: 300px">
									</div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>시작일</label>
									<input name="noticeStart" type="text" id="dDay" size="50"maxlength="8" title="시작일" style="width: 300px">
									</div>
									</td>
								</tr>	
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>최대인원</label>
									<input name="noticeMax" type="text" size="50" title="최대인원">
									</div>
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>최소인원</label>
									<input name="noticeMin" type="text" size="50" title="최소인원"></div>
									</td>
								</tr>
								
								

							</table>
							<div class="right">
							<table>
								<tr>
									<td id="startDate">
									<!-- <div class="labelWrap"> -->
									<label>카테고리</label>
									<select id="selectBox" name="categoryNo" >
									<option value="searchAll" selected="selected">검색목록</option>
									<option value="런닝">런닝</option>
									<option value="격투기">격투기</option>
									<option value="필라테스">필라테스</option>
									<option value="요가">요가</option>
									<option value="헬스">헬스</option>
									<option value="수영">수영</option>
									<option value="댄스">댄스</option>
									<option value="크로스핏">크로스핏</option>
									<option value="댄스">댄스</option>
									<option value="기타">기타</option>
									</select>
								<!-- 	<input type="text" size="50"name="categoryNo"></div>  -->
									</td>
								</tr>
								
								<tr>
									<td id="startDate">
									<div class="labelWrap">
									<label>주요내용</label>
									<input type="text"  size="200"name="informBoardContent"></div>
									</td>
								</tr>
								
								<tr>
									<td>
									<div class="labelWrap">
									<label>차감패스</label>
									<input type="text" size="50"name="informPassCount"></div>
									</td>
								</tr>
								
								<tr>
									<td>
									<div class="labelWrap">
									<label>공고일정</label>
									<input type="text" size="50"name="noticeDaily"></div>
									</td>
								</tr>
								
								 <tr id="imgArea">
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진1</label>
									<input type="file" name="fileImg1" id="fileImg1"  onchange="readURL1(this);" />
									</div>
									 <button type="button"id="imgBtn1"> <img id="blah1" src="#" alt="대표사진1"></button>

									</td>
									
								
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진2</label>
									<input type="file" size="50"name="fileImg2" id="fileImg2" onchange="readURL2(this);" /></div>
									 <button type="button"id="imgBtn2"> <img id="blah2" src="#" alt="대표사진2"></button>
									

									</td>
									
									
									<td>
									<div class="imgWrap">
									<label class="imgLabel">대표사진3</label>
									<input type="file" size="50"name="fileImg3"  id="fileImg3" onchange="readURL3(this);" /></div>
									 <button type="button"id="imgBtn3"><img id="blah3" src="#" alt="대표사진3"></button>
									</td>
									
									
									
								</tr> 
								
								<tr>
									<td>
									<div class="labelWrap">
									
									<button type="submit" id="enrollBtn">등록하기</button></div>
									
									
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
 
 
 <script type="text/javascript"> 
 function readURL1(input) {
	if (input.files && input.files[0]) { 
		var reader = new FileReader(); reader.onload = function (e) { 
			$('#blah1').attr('src', e.target.result);
			/* $('#blah1').css({width:"10px",higth:"10px"}); */
			} 
		reader.readAsDataURL(input.files[0]); }
	
 }
 </script>

 <script type="text/javascript"> 
 function readURL2(input) {
	if (input.files && input.files[0]) { 
		var reader = new FileReader(); reader.onload = function (e) { 
			$('#blah2').attr('src', e.target.result); } 
		reader.readAsDataURL(input.files[0]); } }
 </script>


<script type="text/javascript"> 
 function readURL3(input) {
	if (input.files && input.files[0]) { 
		var reader = new FileReader(); 
		reader.onload = function (e) { 
			$('#blah3').attr('src', e.target.result); 
			} 
		reader.readAsDataURL(input.files[0]); } 
	}
 </script> 




</body>
</html>