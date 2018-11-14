<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="margin: 95px auto;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="reload();">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">${hmap.increwMember[0].crewName}</h4>
					</div>
					<div class="modal-body" style="height: 350px;">
						<div class="modal-left">
							<div class="crewImg">
								<img src="resources/uploadFiles/crew/crewRecruitment/${hmap.increwMember[0].uploadName}" style="width: 200px; height: 200px;">
							</div>
						</div>
						<div class="modal-right">
							<table>
								<tr class="title">
									<td style="width: 100px;">번호</td>
									<td style="width: 170px;">크루원</td>
								</tr>
								<c:forEach var="m" items="${hmap.increwMember}">
								<tr>
									<td>${m.userNo}</td>
									<td>${m.userId}</td>								
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">나기기</button>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			function reload(){
				location.reload();
			}
		</script>
</body>
</html>