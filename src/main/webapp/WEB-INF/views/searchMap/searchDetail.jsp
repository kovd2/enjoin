<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Theme skin -->
<link href="resources/style/skins/default.css" rel="stylesheet">
<style>

#modalWrap{
	width:100%;
	
}
.modalMiddle{
	width:340px;
	height:100%;
	margin:0 auto;
	background:gray;
	display:-webkit-box;
	border-radius:3px;
 	box-shadow:3px 3px 3px 3px #999;
}
.modalContent{
	width:320px;
	background:white;
	margin:10px 10px 10px 10px;
	

}
.imgModalArea{
	/* border-radius:3px; */
	width:300px;

}
.imgModalArea>img{
	
	border-radius:3px;
	width:300px;
	height:200px;
	margin:5px 0px 5px 10px;

}
#title{
	/* border:2px solid #00bff0; */
	/* border-radius:3px; */
	text-align:center;
	font-size:25px;
	/* width:300px;
	height:30px; */
	/* margin:10px; */
	color:#00bff0;
	padding-top:10px;

}
#address{
	
	text-align:center;
	font-size:15px;
	margin-top:20px;
}
#address>p{
text-align:center;
	font-size:15px;
	margin-top:20px;

}

#tel{

text-align:center;
	font-size:15px;
	margin-top:6px;



}

#pass{
	text-align:center;
	font-size:20px;
	margin-top:6px;
	height:30px;
	/* margin-left:120px; */
 	border-bottom:1px solid gray;
 	color:#00bff0;
 	display:-webkit-box;
 	margin:10px 30px 0 30px;
 	padding-left:95px;
 	
 	
}
#passImg{
width:40px;
height:20px;
}
#passImg>img{
	width:35px;
	height:26px;

}
#detail{
  border:2px solid #00bff0; 
	 border-radius:3px;
	 margin:20px 30px 30px 30px;
	height:40px;
	font-size:20px;
	text-align:center;
	vertical-align:center;
	padding:5px 10px 10px 10px;
	
}
#detail:hover{

	background:#00bff0;
	cursor:pointer;
}
#closeBtn{

    width: 45px;
    height: 27px;
    border: 1px solid black;
    border-radius: 3px;
    float: right;
    text-align: center;
}

</style>
</head>
<body>


	 <script> 
	
	function goDetail(facilityNo){
		
		
		$.ajax({
			
			url:"searchDetail.kch",
			type:"post",
			dataType:"json",
			data:{facilityNo:facilityNo},
			success:function(data){
				console.log(data);
				$("#previewArea").empty();
				
					
					
				$div1=$("<div id='modalWrap'>");
				$div2=$("<div class='modalMiddle'>");
				$div3=$("<div class='modalContent'>");	
				$button1=$("<button id='closeBtn' onclick='closeBtn()'>");
				$i1=$("<i class='material-icons'>");
				$i1.append('close');
				$button1.append($i1);
				$div3.append($button1);
				$div1.append($div2);
				$div2.append($div3);
				
				
				
				$div4=$("<div class='imgModalArea'>");
				$div4.append("<img src=${contextPath}/resources/uploadFiles/facility/"+data.UPLOAD_NAME+">");
				$div3.append($div4);
				
				$div5=$("<div class='contentArea'>");
				$div6=$("<div id='title'>");
				$b1=$("<b>");
				$b1.append(data.FACILITY_NAME);
				
				$div6.append($b1);
				$div5.append($div6);
				
				
				
				$div7=$("<div id='address'>");
				$p1=$("<p>");
				$p1.append(data.TOTAL_ADDRESS);
				$div7.append($p1);
				$div5.append($div7);
				
				$div8=$("<div id='tel'>");
				$div8.append(data.FACILITY_MANAGER_PHONE);
				$div5.append($div8);
				
				$div9=$("<div id='pass'>");
				$b2=$("<b>").append(data.PASS_COUNT+'PASS');
				$div10=$("<div id='passImg'>");
				$div10.append("<img src=${contextPath}/resources/images/searchMap/running.png>");
				$div9.append($b2);
				$div9.append($div10);
				$div5.append($div9);
				
				$div11=$("<div id=detail onclick='detailResult("+data.FACILITY_NO+")'>");
				$b3=$("<b>");
				$b3.append('자세히보기');
				$div11.append($b3);
				$div5.append($div11);
				$div3.append($div5);
				$('#previewArea').append($div1);
				
				

				
			}
			
			
			
			
			
		})	
	};
	
	</script> 
<script>

	function detailResult(facilityNo){
		console.log(facilityNo);
		location.href="detailResult.kch?facilityNo="+facilityNo;
		
	}

</script>

<script>
	function closeBtn(){
		console.log('오나?');
		 $('#modalWrap').remove(); 
	}
	

</script>







</body>
</html>