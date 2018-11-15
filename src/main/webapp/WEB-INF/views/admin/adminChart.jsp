<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<title>Insert title here</title>
	<style>
	canvas {
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	.chart-container {
		width: 500px;
		margin-left: 40px;
		margin-right: 40px;
		margin-bottom: 40px;
	}
	.container {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: center;
	}
	.chartBody{
		width:100%;
	}
	.chartArea{
		width: 1452px;
	    background: gray;
	    display: -webkit-inline-box;
	}
	.chartMember{
		width: 555px;
    	height: 410px;
    	margin-left: 31px;
    	margin-top: 20px;
    	border: 1px solid gray;
		
	}
	.chartMMPay{
		width:340px;
		height: 400px;
		margin-left: 70px;
		margin-top: 20px;
		border: 1px solid gray;
	}
	.chartDayPay{
		width: 555px;
    	height: 410px;
    	margin-left: 51px;
    	margin-top: 20px;
    	border: 1px solid gray;
	}
	.chartPass{
		width: 340px;
	    height: 400px;
	    margin-left: 69px;
	    margin-top: 30px;
	    border: 1px solid gray;
	}
	.chartArea1 {
    	display: -webkit-inline-box;
	}
	.chartArea2{
		display: -webkit-inline-box;
	}
	.chartnum1{
		width: 340px;
	    height: 400px;
	    margin-left: 30px;
	    margin-top: 30px;
	    border: 1px solid gray;
	}
	.chartnum2{
		width:340px;
		height: 400px;
		margin-left: 70px;
		margin-top: 30px;
		border: 1px solid gray;
	}
	</style>
</head>
<script>
	var myBarChart = new Chart(ctx, {
	    type: 'bar',
	    data: data,
	    options: options
	});
	
	var myPieChart = new Chart(ctx,{
	    type: 'pie',
	    data: data,
	    options: options
	});
	var myLineChart = new Chart(ctx, {
	    type: 'line',
	    data: data,
	    options: options
	});
</script>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="chartBody">
		<div class="chartArea1">
			<div class="chartMember">
				<canvas id="myName" width="555" height="410"></canvas>
				<script>
					var ctx = document.getElementById("myName");
					var data1 = ${map.list[0].JAN};
					var data2 = ${map.list[0].FEB};
					var data3 = ${map.list[0].MAR};
					var data4 = ${map.list[0].APR};
					var data5 = ${map.list[0].MAY};
					var data6 = ${map.list[0].JUNE};
					var data7 = ${map.list[0].JULY};
					var data8 = ${map.list[0].AUG};
					var data9 = ${map.list[0].SEP};
					var data10 = ${map.list[0].OCT};
					var data11 = ${map.list[0].NOV};
					var data12 = ${map.list[0].DEC};
					
					var myChart = new Chart(ctx, {
					
					    type: 'bar',
					    data: {
					        labels: ["1월", "2월", "3월", "4월", "5월", "6월" ,"7월","8월","9월","10월","11월","12월"],
					        datasets: [{
					            label: 'enjoin 월별 수익',
					            data: [data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12],
					            backgroundColor: [
					                'rgba(255, 99, 132)',
					                'rgba(54, 162, 235)',
					                'rgba(255, 206, 86)',
					                'rgba(75, 192, 192)',
					                'rgba(153, 102, 255)',
					                'rgba(255, 159, 64)',
					                'rgba(255, 99, 132)',
					                'rgba(54, 162, 235)',
					                'rgba(255, 206, 86)',
					                'rgba(75, 192, 192)',
					                'rgba(153, 102, 255)',
					                'rgba(255, 159, 64)'
					            ],
					            borderColor: [
					                'rgba(255,99,132,1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(255, 206, 86, 1)',
					                'rgba(75, 192, 192, 1)',
					                'rgba(153, 102, 255, 1)',
					                'rgba(255, 159, 64, 1)',
					                'rgba(255,99,132,1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(255, 206, 86, 1)',
					                'rgba(75, 192, 192, 1)',
					                'rgba(153, 102, 255, 1)',
					                'rgba(255, 159, 64, 1)'
					            ],
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});
				</script>
			</div>
			<div class="chartDayPay">
				<canvas id="dayPay" width="555" height="399"></canvas>
				<script>
					var ctx = document.getElementById("dayPay");
					var data1 = ${map.list1[0].MON};
					var data2 = ${map.list1[0].TUE};
					var data3 = ${map.list1[0].WED};
					var data4 = ${map.list1[0].THU};
					var data5 = ${map.list1[0].FRI};
					var data6 = ${map.list1[0].SAT};
					var data7 = ${map.list1[0].SUN};

					
					
					var myChart = new Chart(ctx, {
					    type: 'line',
					    data: {
					        labels: ["월", "화", "수", "목","금","토","일"],
					        datasets: [{
					            label: 'enjoin 요일 수익',
					            data: [data1, data2, data3, data4 ,data5,data6,data7],
					            backgroundColor: [
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(54, 162, 235, 0.2)'

					                
					            ],
					            borderColor: [
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(54, 162, 235, 1)'

					               
					            ],
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});	
				</script>
			</div>
		</div>
		
		<div class="chartArea2">
			<div class="chartnum1">
				<canvas id="category" width="340" height="399"></canvas>
				<script>
					var ctx = document.getElementById("category");
					var data1 = ${map.list4[0].RUNNING};
					var data2 = ${map.list4[0].SWIMMING};
					var data3 = ${map.list4[0].PILATES};
					var data4 = ${map.list4[0].MARTIAL};
					var data5 = ${map.list4[0].DANCE};
					var data6 = ${map.list4[0].YOGA};
					var data7 = ${map.list4[0].HEALTH};
					var data8 = ${map.list4[0].CROSSFIT};
					var data9 = ${map.list4[0].OTHER};
					
					
					var myChart = new Chart(ctx, {
					    type: 'bar',
					    data: {
					        labels: ["런닝","수영","필라테스","격투기","댄스","요가","헬스","크로스핏","기타"],
					        datasets: [{
					            label: '카테고리별 게시글 수치',
					            data: [data1,data2,data3,data4,data5,data6,data7,data8,data9],
					            backgroundColor: [
					            	'rgba(255, 99, 132)',
					                'rgba(54, 162, 235)',
					                'rgba(255, 206, 86)',
					                'rgba(75, 192, 192)',
					                'rgba(153, 102, 255)',
					                'rgba(255, 159, 64)',
					                'rgba(255, 99, 132)',
					                'rgba(54, 162, 235)',
					                'rgba(255, 206, 86)'
					                

					                
					            ],
					           
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});	
				</script>
			</div>
		
		
		
		
		
		
			<div class="chartPass">
				<canvas id="MemberCount" width="340" height="399"></canvas>
				<script>
					var ctx = document.getElementById("MemberCount");
					var data1 = ${map.list2[0].MON};
					var data2 = ${map.list2[0].TUE};
					var data3 = ${map.list2[0].WED};
					var data4 = ${map.list2[0].THU};
					var data5 = ${map.list2[0].FRI};
					var data6 = ${map.list2[0].SAT};
					var data7 = ${map.list2[0].SUN};
					
					var myChart = new Chart(ctx, {
					    type: 'line',
					    data: {
					        labels: ["월","화","수","목","금","토","일"],
					        datasets: [{
					            label: '유저 요일별 가입 수치',
					            data: [data1,data2,data3,data4,data5,data6,data7],
					            backgroundColor: [
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)',
					            	 'rgba(255, 99, 132, 0.2)'

					                
					            ],
					            borderColor: [
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)',
					            	'rgba(255,99,132,1)'

					               
					            ],
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});	
				</script>
			</div>
			
			<div class="chartnum2">
				<canvas id="crew" width="340" height="399"></canvas>
				<script>
					var ctx = document.getElementById("crew");
					var data1 = ${map.list3[0].MON};
					var data2 = ${map.list3[0].TUE};
					var data3 = ${map.list3[0].WED};
					var data4 = ${map.list3[0].THU};
					var data5 = ${map.list3[0].FRI};
					var data6 = ${map.list3[0].SAT};
					var data7 = ${map.list3[0].SUN};
					
					var myChart = new Chart(ctx, {
					    type: 'line',
					    data: {
					        labels: ["월","화","수","목","금","토","일"],
					        datasets: [{
					            label: '크루 생성 요일별 수치',
					            data: [data1,data2,data3,data4,data5,data6,data7],
					            backgroundColor: [
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)',
					            	 'rgba(153, 102, 255, 0.2)'

					                
					            ],
					            borderColor: [
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)',
					            	 'rgba(153, 102, 255, 1)'

					               
					            ],
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});	
				</script>
			</div>
			
			
			
		</div>
		
			
	</div> 
</body>
</html>