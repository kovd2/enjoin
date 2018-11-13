<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 관리</title>
</head>

<style>
.wrappp {
	width: 100%;
	align: center;
}

.boardAdmin table tr {
	text-align: center;
	border: 1px solid black;
}

.boardAdmin table tr:hover{
	background:yellow;
}

th {
	border-left:1px solid;
}

td {
	border-left:1px solid;
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">
		<div class="boardAdmin" align="center">
			<p style="font-size: 100px; text-align: center">결제 관리</p>

			<hr>
			<form>
			<select class="searchSelect" name="option" style="height:30px;">
				<option>전체</option>	
				<option>아이디</option>
			</select>
			 <input type="text" value="${keyword}" name="keyword" style="width:500px">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</form>
			<br><br>
			<table>
				<tr style="border: 1px solid black;">
					<th style="width: 150px; height: 100px; font-size: 20px; background: gray;">결제번호</th>
					<th style="width: 100px; height: 100px; font-size: 20px; background: gray;">아이디</th>
					<th style="width: 100px; height: 100px; font-size: 20px; background: gray;">결제일</th>
					<th style="width: 150px; height: 100px; font-size: 20px; background: gray;">카드승인번호</th>
					<th style="width: 100px; height: 100px; font-size: 20px; background: gray;">결제금액</th>
					<th style="width: 100px; height: 100px; font-size: 20px; background: gray;">충전 패스</th>
					<th style="width: 50px; height: 100px; font-size: 20px; background: gray;">구분</th>
					<th style="width: 80px; height: 100px; font-size: 20px; background: gray;">환불</th>
					
				</tr>
				<c:forEach var="list" items="${ list }">
					<tr>	
						<td>${ list.PAY_NO }</td>
						<td>${ list.USER_ID }</td>
						<td>${ list.PAY_DATE }</td>
						<td>${ list.PROOF_NO }</td>
						<td>${ list.PRICE }</td>
						<td>${ list.PASS_PLUS }</td>
					<c:if test="${ list.PAY_TYPE == 0}">
						<td>구매</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 1}">
						<td>환불</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 0 }">
						<td><input class="refund${list.REFUND_NO}" type="button" value="환불" onclick="refund('${list.REFUND_NO}')"></td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 1 }">
						<td><input class="refund${list.REFUND_NO}" type="button" value="환불완료"></td>
					</c:if>
					
					</tr>	
						
				</c:forEach>
			</table>
			<br>
			
			<!-- 페이징처리 -->
			<nav>
				<ul class="pagination" style="display: inline-flex;">
					<c:if test="${ pi.currentPage <= 1 }">
						<li><a>이전</a></li>
					</c:if>
					<c:if test="${ pi.currentPage > 1 }">
						<c:url var="listBack" value="adminFAQ.hh">
							<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
						</c:url>
						<li><a href="${ listBack }">이전&nbsp; </a></li>
					</c:if>

					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
						</c:if>
						<c:if test="${ p ne pi.currentPage }">
							<c:url var="listCheck" value="adminFAQ.hh">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<li><a href="${ listCheck }"> ${ p } </a></li>
						</c:if>
					</c:forEach>

					<c:if test="${ pi.currentPage >= pi.maxPage }">
						<li><a> 다음</a></li>
					</c:if>
					<c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="listEnd" value="adminFAQ.hh">
							<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
						</c:url>
						<li><a href="${ listEnd }">&nbsp; 다음</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>

<script>
	function refund(refundNo){
		$.ajax({
			url:'refundBtn.hh',
			data : {
				refundNo : refundNo
			},
			success : function(data){
				console.log(data);
				$('.refund' + refundNo).attr('value', '환불완료');
				window.location.reload();
			}
		});
	}
	
</script>	

</body>
</html>