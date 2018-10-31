<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
html{
	/* width:100%;
	height:100%; */
	background:black url(resources/images/informBoard/cross.jpg) no-repeat center center fixed;
	background-size:cover;	

}

.wrap{
	width:100%;
	

}
.top{
	width:800px;
	margin:0 auto;
	height:1000px;
	
}
.tableWrap{
	width:700px;
	background:gray;
	height:700px;
	border-radius:3px;
	padding-top:20px;	
	
}

.tableArea{
	width:700px;
	background:rgba(230,230,230,0.8);
	margin-left:-20px;
	border-radius:3px;
	height:730px;
	
}
.titleArea{
	font-size:20px;
	font-weight:bold;
	text-align:center;
	padding-top:30px;

}
.table


</style>
</head>
<body>
	<div class="wrap">
	
		<div class="top">
			
			<div class="tableWrap">
			
			<div class="tableArea">
			
				
			<div class="titleArea">
				크루공고 게시글
			<div>
			<form action="/insert.no" method="post">
				<table>
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text" size="50" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>
							<input type="text" value="" name="writer" readonly>
							<!-- 작성자 번호도 넘기는데 사용자에겐 안보이게 넘김  -->
							<input type="hidden" value="" name="uno">
						</td>
						<td>작성일</td>
						<td><input type="date" name="date"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3"></td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
			</div>
		</div>
			

			</div>
			</div>
			
			</div>
		</div>
	
	
	




	
	
	<!-- <div class="outer">
		<br>
		<h2 align="center"></h2>
		
		<div class="tableArea">
			<form action="/insert.no" method="post">
				<table>
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text" size="50" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>
							<input type="text" value="" name="writer" readonly>
							작성자 번호도 넘기는데 사용자에겐 안보이게 넘김 
							<input type="hidden" value="" name="uno">
						</td>
						<td>작성일</td>
						<td><input type="date" name="date"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3"></td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
		</div>
		
		
	</div>	 -->
		

	

</body>
</html>