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


th {
	border-left:1px solid;
}

td {
	border-left:1px solid;
}

table td, table th {
	padding:0px !important;
	vertical-align:middle;
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">
		<div class="boardAdmin" align="center">
			<p style="font-size: 30px; color: #03a9f4; font-weight: bold; margin-top: 10px; margin-right: 50px;">결제 관리</p>

			<hr>
			<form id="paymentSearchForm" action="adminPayment.hh" method="post">
			<select class="searchSelect" name="searchOption" style="height:30px;">
				<option value="PROOF_NO">전체</option>	
				<option value="USER_ID">아이디</option>
			</select>
			 <input value="${keyword}" name="keyword" style="width:500px;">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</form>
			<br><br>
		
			<table class="table table-bordered">
				<tr style="border: 1px solid black;">
					<th style="width: 50px; height: 50px; font-size: 20px; background: #0099CC;">결제번호</th>
					<th style="width: 100px; height: 50px; font-size: 20px; background: #0099CC;">아이디</th>
					<th style="width: 100px; height: 50px; font-size: 20px; background: #0099CC;">결제일</th>
					<th style="width: 150px; height: 50px; font-size: 20px; background: #0099CC;">구매번호</th>
					<th style="width: 100px; height: 50px; font-size: 20px; background: #0099CC;">결제금액</th>
					<th style="width: 100px; height: 50px; font-size: 20px; background: #0099CC;">충전 패스</th>
					<th style="width: 50px; height: 50px; font-size: 20px; background: #0099CC;">구분</th>
					<th style="width: 80px; height: 50px; font-size: 20px; background: #0099CC;">환불</th>
					
				</tr>
			
				<c:forEach var="list" items="${ map.list }">
					<tr>	
						<td>${ list.PAY_NO }</td>
						<td>${ list.USER_ID }</td>
						<td>${ list.PAY_DATE }</td>
						<td>${ list.REFUND_NO }</td>
						<td>${ list.PRICE }</td>
						<td>${ list.PASS_PLUS }</td>
					<c:if test="${ list.PAY_TYPE == 0}">
						<td>구매</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 1}">
						<td>환불</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 0 }">
						<td><input class="refund${list.REFUND_NO}" class="btn btn-warning" type="button" value="환불" onclick="refund('${list.REFUND_NO}')"></td>
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
					<c:if test="${ map.pi.currentPage <= 1 }">
						<li><a>이전</a></li>
					</c:if>
					<c:if test="${ map.pi.currentPage > 1 }">
						<c:url var="listBack" value="adminPayment.hh">
							<c:param name="currentPage" value="${ map.pi.currentPage - 1 }" />
						</c:url>
						<li><a href="${ listBack }">이전&nbsp; </a></li>
					</c:if>

					<c:forEach var="p" begin="${ map.pi.startPage }" end="${ map.pi.startPage }">
						<c:if test="${ p eq map.pi.currentPage }">
							<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
						</c:if>
						<c:if test="${ p ne map.pi.currentPage }">
							<c:url var="listCheck" value="adminPayment.hh">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<li><a href="${ listCheck }"> ${ p } </a></li>
						</c:if>
					</c:forEach>

					<c:if test="${ map.pi.currentPage >= map.pi.maxPage }">
						<li><a> 다음</a></li>
					</c:if>
					<c:if test="${ map.pi.currentPage < map.pi.maxPage }">
						<c:url var="listEnd" value="adminPayment.hh">
							<c:param name="currentPage" value="${ map.pi.currentPage + 1 }" />
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