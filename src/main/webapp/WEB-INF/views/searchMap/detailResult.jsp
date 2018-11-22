<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

.resultTop{
	width:100%;


}
.resultMiddle{

	width:1100px;
	height:100%;
	margin:0 auto;
	/* display:-webkit-box; */
	/* position:relative; */


}
.resultList{
	
	width:1100px;
	height:400px; 
	background:#f5f5f5;
	display:-webkit-box;
}
.imgArea{
	width:1100px;
	height:400px;
	background:black;
	display:-webkit-box;
    position:absolute;              
   
	
}
.imgArea>img{

	width:1100px;
	height:400px;
	background:black;
	opacity:0.3;
	
}



.imgTitle{
	
	position: absolute;
    font-size: -webkit-xxx-large;
    margin: 80px 0px 0px 150px;
    border: 1px solid #00bff0;
    padding: 20px;
    border-radius: 3px;
    color: #00bff0;
    
}
.imgAddress{
	position:absolute;
	color:white;
	margin:200px 0px 0px 160px;
}

.imgTel{

	position:absolute;
	color:white;
	margin:220px 0px 0px 160px;

}

.like{
	position: absolute;
    color: white;
    margin: 250px 0px 0px 160px;
    border: 2px solid white;
    border-radius: 3px;
    width: 85px;
    padding: 3px;
}
.like:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.preview{
	position: absolute;
    color: white;
    margin: 300px 0px 0px 800px;
    border: 2px solid white;
    border-radius:3px;
    width: 135px;
    padding: 10px 0px 10px 20px;
    
}

.preview:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.totalCount{
	width:1050px;
	background:rgba(13,31,53,0.7);
	position:absolute;
	color:white;
	margin: 380px 10px 10px 0px;
	padding-left:160px;
	/* opacity:0.1; */
	
}
.resultContent{
	
	
	width:500px;
	height:150px;
	margin-left:50px;
	
}
.Dproduct{
	width:300px;
	color:#00bff0;
	margin-left:60px;
	text-align:center;
	
}
.Dproduct>img{
	width:30px;

}

.resultDate{
	width:500px;
	height:260px;
	margin-top:100px;
	margin-left:50px;
	
	
}
.time{
	width:300px;
	margin-left:60px;
	text-align:center;

}
.monToFri{
	color:black;
}
.sat{
	color:#0084c2;
}
.sun{
color:#f77d68;
}
.no{
color:#feab2a;
}
.resultAddress{
	width:500px;
	height:60px;
	
	
	
	margin-left:50px;
}
.address{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.resultTel{

	width:500px;
	height:50px;
	
	
	
	margin-left:50px;
	
}
.tel{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.detailPic{
	width:500px;
	height:320px;
	margin-left:30px;
}
#listwrap1{
	width:200px;
	height:300px;
	position:absolute;	

	
}

#listwrap1>.list{
	
	width:200px;
	height:100px;
	/* border:1px solid black; */
	padding:3px;
	margin-bottom:70px;
	
}
#listwrap2{
	margin-left:230px;
	width:200px;
	height:300px;
	position:absolute;
	
}
#listwrap2>.list{
	width:200px;
	height:100px;
	/* border:1px solid black; */
	padding:3px;
	margin-bottom:70px;
	margin-left:50px;
	
}


.list>img{
	width:250px;
	border-radius:3px;
	height:150px;
	

}
.list>img:hover{
	
	opacity:0.5;
	cursor:pointer;	
	

}
.reviewWrap{
	
	width:500px;
	height:400px;
	padding-top:10px;
	margin-top:80px;
	border-top:1px solid #eee;
}

.rwArea{
	width:500px;
	height:100px;
	position:absolute;
	
	

}
.totalScore{
	width:500px;
	height:70px;
	position:absolute;
	border-bottom:1px solid #eee;	
	font-size:20px;
	
}
.totalScore>img{

	width:190px;
	height:46px;

}
.score{
	width:100px;
	height:50px;
	position:absolute;
	border-right: 1px solid #eee;
	margin-left:200px;
	padding:10px;
	font-size:30px;
	text-align:center;
	
}
.rwCountNum{
	width:200px;
	height:50px;
	position:absolute;
	margin-left:300px;
	text-align:center;
	font-size:20px;
	padding-top: 10px;

}

.rwList1{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee; 
	margin-top:80px;
	font-size:

}
.rwList1>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList1>.userDate{
	width:300px;
	height:30px;
	
}

.rwList1>.listScore{
	width:150px;
	height:45px;
	
	
}

.listScore>img{
	width:80px;
	height:40px;
	
}
.rwList1>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList2{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:210px;

}

.rwList2>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList2>.userDate{
	width:300px;
	height:30px;
}

.rwList2>.listScore{
	width:150px;
	height:45px;

}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList2>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList3{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:340px;

}

.rwList3>.userInfo{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}
.rwList3>.userDate{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}

.rwList3>.listScore{
	width:150px;
	height:45px;
	
	/* border:1px solid black; */
}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList3>.listContent{
	width:500px;
	height:30px;
	/* border:1px solid black; */
	color:black;
	
}
.enBtn{
	
	width:135px;
	height:50px;
	position:absolute;
	color:#00bff0;
	border:2px solid #00bff0;
	border-radius:3px;
	margin-left:800px;
	margin-top:240px;	
	padding:12px;	
	
}
.enBtn:hover{
	background:white;
	border-color:white;
	cursor:pointer;

}

.left{
	width:550px;
	height:800px;
	margin-top:30px;
}

.right{
	width: 550px;
    height: 900px;
    margin-top:30px;

}
.rowWrap{
	display: -webkit-box;
    width: 1100px;
}
.time>hr{
	margin-top:20px;
	margin-bottom:15px;
	border-top: 1px solid #eee;
}
#allReview{
    width: 500px;
    height: 50px;
    position: absolute;
    border: 1px solid #eee;
    margin-top: 20px;
    text-align: center;
    font-size:xx-large;
    box-shadow:3px 3px 3px 3px #999;
	

}
#allReview:hover{
	background:#ddd;
	cursor:pointer;
}

.enReview{
	position: absolute;
    color: #ffdd33;
    margin: 185px 0px 0px 800px;
    border: 2px solid #ffdd33;
    border-radius:3px;
    width: 135px;
    padding: 10px 0px 10px 20px;
    display:none;
}
.enReview:hover{
	background:white;
	cursor:pointer;
	border-color:white;
}
.settingArea {
	z-index: 300;
	position: absolute;
	left: 30%;
	top: 200px;
 	  
}
.footer{
margin-top:80px;

}
.en_wrap{

	width:100%;
	margin-top:40px;
}
.en_top{
	width:620px;
	height:400px;
	margin:0 auto;
	display: -webkit-box;
	
}
.en_reviewArea{
	width:600px;
	height:100%;
	border-radius:3px;
	border:2px solid #eee;
	overflow-y:scroll;
	
	
}
.en_reviewArea::-webkit-scrollbar {display:none;}


.en_review{
	width:600px;
	height:300px;
	margin-top:40px;
	background:white;
	
	
}

.en_title{

    width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
	color:black;
	padding-left:40px;
    
    
}
.en_count{
	 width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
    color:gray;
    padding-left:40px;
   
}
.en_list{

    width: 600px;
    height: 300px;
   

}
.en_userId{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
    width: 70px;
    height: 30px;
    color:gray;
    
}
.en_date{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	width: 150px;
    height: 30px;
    color:gray;
}
.en_titleWrap{
    display: -webkit-box;


}
.en_event{
    width: 300px;
    height: 20px;
    font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	color:#00bff0;
    
    
}
.en_scoreWrap{
display: -webkit-box;
border-top:1px solid #eee;
margin-left:40px;
margin-right:40px;


}
.en_starScore{
    width: 200px;
    height: 40px;
	margin-top:10px;
	border-right:1px solid #eee;	

}
.en_starScore>img{
	width:197px;
	height:40px;
	
	
}
.en_numScore{
  	width: 200px;
    height: 60px;
	margin-top:10px;
	font-size:40px;
	font-weight:bold;
	color:gray;
	text-align:center;
	
}


.en_content{
    height: 100px;
    font-size: 20px;
    color: #333;
    font-weight: bold;
    margin-left: 40px;
    margin-right: 40px;
    padding-top: 30px;
    border-top: 1px solid #eee;
	overflow:hidden;
	border-bottom:5px solid #eee;
}
.en_end{
	text-align: center;
    font-size: 15px;
    color: #999;
    padding-top: 10px;
	padding-bottom:15px;

}

.en_listTop{
	display: -webkit-box;
	

}
.en_close{
	margin-left:220px;
	
}

#col:hover{
	cursor:pointer;
	color:black;
}

#col{
color:#eee;
}

</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	

	
	<div class="resultTop">
		<div class="resultMiddle">
			<div class="resultList">
			<div class="imgArea">
			<img src="resources/images/searchMap/mb.jpg">
			</div>
			<div class="imgTitle">
				<b>${list[0].FACILITY_NAME}</b>
			</div>
			<div class="imgAddress">
			 <b>${list[0].FACILITY_ADDRESS}</b><br>
			</div>
			<div class="imgTel">
			<b>${list[0].FACILITY_MANAGER_PHONE}</b>
			</div>

			<div class="like" id="like">
			<i class="glyphicon glyphicon-thumbs-up"></i>
			<small>관심시설</small>
			</div>
			<div class="preview">
				<i class="fa fa-file-image-o"></i>
					<b>시설미리보기</b>
			</div>
			<div class="enReview" id="enReview" onclick="enrollRw(${loginUser.userNo},${list[0].FACILITY_NO},'${list[0].FACILITY_NAME}','${loginuser.userId}','${list[0].FACILITY_EVENT}')">
			<i class="fa fa-comments-o"></i>
				<b>리뷰등록하기</b>
			</div>
			<div class="enBtn" id="enBtn" onclick="useFacility(${loginUser.userNo},${list[0].PASS_COUNT},${list[0].FACILITY_NO})">
				<i class="fa fa-address-card"></i>
				<b>시설이용하기</b>
			</div>
			<div class="totalCount">
				차감패스 <b>${list[0].PASS_COUNT}</b>pass
			
			</div>
				
			</div>
			<div class="rowWrap">
			<div class="left">
			<div class="resultContent">
			<b>이용상품</b>
				<div class="Dproduct">
				 <b>${list[0].FACILITY_EVENT}</b>
				 <img src="resources/images/searchMap/health.png">
				 <br><hr>
				 <b>${list[0].PASS_COUNT}PASS</b>
				 <img src="resources/images/searchMap/health.png">
				 <br><hr><br>
				 <b>- 이용 상품별로 PASS가 차감됩니다.</b><br>
				<b>- 이용 패스가 변경되는 경우에는 사전에 알려드립니다.</b>
				 
					</div>
			</div>
					
				<div class="resultDate">
				<b>이용시간</b>
				<div class="time">
				
				<p class="monToFri"><b>평일</b>  ${list[0].MON_FRI_TIME}</p><hr>
				<p class="sat"><b>토요일</b>  ${list[0].SUN_TIME}</p><hr>
				<p class="sun"><b>일요일</b>  ${list[0].SUN_TIME}</p><hr>
				
				</div>
				</div>	
				
				<div class="resultTel">
					<b>전화</b>
					
					<div class="tel">
					
					<p>${list[0].FACILITY_MANAGER_PHONE}</p><hr>
					</div>
				</div>
			
				
				<div class="resultAddress">
					<b>주소</b>
					<div class="address">
					
					<p>${list[0].FACILITY_ADDRESS}</p><hr>
					</div>
				</div>
				</div>
				
				
				<div class="right">
				
				<div class="detailPic">
					<b>제휴시설 미리보기</b>
				<div id="listwrap1">	
					<div class="list"> <img src="${contextPath}/resources/uploadFiles/facility/${list[0].UPLOAD_NAME}"></div>
					<div class="list"> <img src="${contextPath}/resources/uploadFiles/facility/${list[1].UPLOAD_NAME}"></div>
				</div>
				
				<div id="listwrap2">	
					<div class="list"> <img src="${contextPath}/resources/uploadFiles/facility/${list[2].UPLOAD_NAME}"></div>
					<div class="list"> <img src="${contextPath}/resources/uploadFiles/facility/${list[3].UPLOAD_NAME}"></div>
				</div>

				
				</div>
																												
				  <%-- <jsp:include page="../searchMap/searchReviewForm.jsp"/> --%> 
		<div class="en_wrap">
	
		  <div class="en_top">
			<div class="en_reviewArea">
				 <div class="en_review">
					
					<div class="en_listTop">
					<div class="en_title"></div>
								
					</div>
					<div class="en_count">
					
					</div>
					<c:forEach var="item" items="${list}" step="3" varStatus="status">
					<div class="en_list">
						<div class="en_titleWrap">
						<div class="en_userId">${item.USER_ID}</div>
						<div class="en_date"><fmt:formatDate value="${item.RW_DATE}" pattern="yyyy.MM"/></div>
						</div>
						<div class="en_event">${item.FACILITY_EVENT}</div>
						
						<div class="en_scoreWrap">
						<div class="en_starScore">
						<c:choose>
						<c:when test="${item.SCORE eq 0.5}">	
						<img src="resources/images/searchMap/0.5star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 1}">	
						<img src="resources/images/searchMap/1star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 1.5}">	
						<img src="resources/images/searchMap/1.5star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 2}">	
						<img src="resources/images/searchMap/2star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 2.5}">	
						<img src="resources/images/searchMap/2.5star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 3}">	
						<img src="resources/images/searchMap/3star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 3.5}">	
						<img src="resources/images/searchMap/3.5star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 4}">	
						<img src="resources/images/searchMap/4star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 4.5}">	
						<img src="resources/images/searchMap/4.5star.png">
						</c:when>
						
						
						<c:when test="${item.SCORE eq 5}">	
						<img src="resources/images/searchMap/5star.png">
						</c:when>
						</c:choose>
						
						</div>
						<div class="en_numScore">${item.SCORE}</div>
						</div>
						<div class="en_content">${item.RW_CONTENT}</div>
					</div>
					
					</c:forEach>
					
					
					<div class="en_end">
					<i class="fa fa-comments-o"></i>
					모든리뷰를 불러왔습니다.
					</div>
					
					
				
				
				
				</div>	
				
			</div>
		
		</div>

	
	</div>

			
			</div>
			</div>
			</div>
			
		</div>
		
		<div id="settingArea" class="settingArea"></div>
	<div id="settingBoardArea" class="w3-modal"onclick="displayNoneCancle();"></div>
		
		
<jsp:include page="../common/footer.jsp"/>

<script>
	function enrollRw(userNo,facilityNo,facilityName,userId,facilityEvent){
		$.ajax({
			url:"enrollReview.kch",
			data:{
				userNo:userNo,
				facilityNo:facilityNo,
				facilityName:facilityName,
				userId:userId,
				facilityEvent:facilityEvent
				
			},
			type:"post",
			success:function(data){	
				$(".settingArea").html(data);
				
				document.getElementById('settingBoardArea').style.display='block';
				document.getElementById('settingArea').style.display='block';
			
				
			}
			
			
			}); 
	}

</script>
<script>		
	function displayNoneCancle(){
		
		document.getElementById('settingArea').style.display='none';
		document.getElementById('settingBoardArea').style.display='none';
	}
</script>


	<script>
    
	$(function(){
		var facilityNo = ${list[0].FACILITY_NO};
		var userNo = ${ loginUser.userNo };
		
		//들어오자마자 시실핼
		addJJIM(facilityNo, userNo);
		
		function addJJIM(facilityNo, userNo){
			$.ajax({
				url:"addJJIMCheck.ljs",
				type:"GET",
				data:{
					facilityNo : facilityNo,
					userNo : userNo
				},
				success:function(data){
					console.log(data);
					if(data > 0){
						$('#like').css({"background":"#00bff0"});
						$("#like").click(function(){
							$.ajax({
								url:"deleteJJIM.ljs2",
								type:"get",
								data:{
									userNo:userNo,
									facilityNo:facilityNo
								},
								success:function(data){
									$('#like').css({"background":"none"});
									location.reload();
								},
								error:function(){
									console.log("에러");
								}
							});
						});
					} 
					//클릭하면 실행
					console.log(data);
					if(data != 1){
						$("#like").click(function(){
							$.ajax({
								url:"addJJIM.ljs",
								type:"get",
								data:{
									facilityNo : facilityNo,
									userNo : userNo
								},
								success:function(data){
									if(data > 0){
										$('#like').css({"background":"#00bff0"});
									} 
									if(confirm("가기 싶은 시설로 등록이 되었습니다. 확인하러 가시겠습니까?") == true){
										location.href="wantPlace.ljs?userNo=" + userNo;
									}else{
										location.reload();
									}
								}
							});
						});
					}
				},
				error:function(){
					console.log("에러");
				}
			});	
		}
	});
	
		
	function useFacility(userNo, deductPass, facilityNo){
		if(confirm("시설을 이용하시겠습니까?") == true){
			
		$.ajax({
			url:"checkPass.ljs",
			type:"get",
			data:{
				userNo:userNo
			},
			success:function(data){
				console.log(data);
				if(data <= 0){
					if(confirm("보유하고 있는 패스가 없습니다. 충전하러 가시겠습니까?") == true){
						location.href="passPurchase.hh";
					}else{
						return;
					}
				}else if(data > deductPass){
					console.log(data);
					$.ajax({
						url:"deductPass.ljs",
						type:"get",
						data:{
							userNo:userNo,
							deductPass:deductPass,
							facilityNo:facilityNo
						},
						success:function(data){							
							if(data == ""){
								alert("이미 신청하신 코드가 있습니다. 다시 한번 확인해 주세요.");
							}else{
							popupOpen(data);
							}
						},		
						error:function(){
							console.log("에러");
						}
					});
				}
			},
			error:function(){
				console.log("에러");
			}
		});
		}else{
			return;
		}
	};
	
	function popupOpen(data){
		var ppCount = "";
		var useCode = "";
		var facilityName = "";
		var passCount = "";
		for(var key in data){
			ppCount = data[key].FACILITY_PASS;
			useCode = data[key].USE_CODE;
			facilityName = data[key].FACILITY_NAME;
			passCount = data[key].PASS_COUNT;
		}
		
		var url = "popUp.ljs?ppCount=" + ppCount + "&useCode=" + useCode + "&facilityName=" + facilityName + "&passCount=" + passCount;    //팝업창 페이지 URL
 	    var popupX = (window.screen.width / 2)-(600 / 2);
		var popupY= (window.screen.height /2)-(800 / 2);

	    var popupOption= "width="+popupX+", height="+popupY;    //팝업창 옵션(optoin)
	    
		window.open(url, '자식창', 'status=no, height=641, width=530, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	};
	
	
	
	</script>
	<script>
	$(function(){
		var facilityNo = ${list[0].FACILITY_NO};
		var userNo = ${ loginUser.userNo };
		
		//들어오자마자 시실핼
		UseCheck(facilityNo, userNo);
		
		function UseCheck(facilityNo, userNo){
			$.ajax({
				url:"UseCheck.ljs",
				type:"get",
				data:{
					userNo:userNo,
					facilityNo:facilityNo
				},
				success:function(data){
					if(data > 0){
						document.getElementById('enReview').style.display="block";
					}else{
						document.getElementById('enReview').style.display="none";
					}
				},
				error:function(){
					console.log("에러");
				}
			});
		}
	});
	</script>
	
	<script>
   $(function(){
      var facilityNo = ${list[0].FACILITY_NO};
      var userNo = ${ loginUser.userNo };
      
      //들어오자마자 시실핼
      UseCheck(facilityNo, userNo);
      
      function UseCheck(facilityNo, userNo){
         $.ajax({
            url:"UseCheck.ljs",
            type:"get",
            data:{
               userNo:userNo,
               facilityNo:facilityNo
            },
            success:function(data){
               if(data > 0){
                  document.getElementById('enReview').style.display="block";
               }else{
                  document.getElementById('enReview').style.display="none";
               }
            },
            error:function(){
               console.log("에러");
            }
         });
      }
   });
   </script>
	
		

</body>
</html>