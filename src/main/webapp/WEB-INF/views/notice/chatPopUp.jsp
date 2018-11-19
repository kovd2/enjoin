<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>모두의 채팅</title>
	<meta charset="UTF-8"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="resources/js/sockjs.min.js"></script>
	<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="width:100%">
	<span class="badge" style="height:4%; margin-top:5px; margin-left:21px;">매너 있는 모습을 보여주세요!</span>
	<input type="button" class="btn btn-danger" value="나가기" onclick="onClose()" style="margin-left: 15px; margin-top:5px;">
	<input type="hidden" name="userId" id="userId" value="${ loginUser.getUserId() }">
	
    <div id="data" style="width:95%; height:78%; margin-left:10px; margin-top:10px; overflow: auto;"></div>
	<br>
    <div>
    <input id="message" type="text" class="form-control" style="width:72%; display:inline; margin-left:11px" name="message" placeholder="메세지를 입력하세요!"  onkeypress="goSend();">
    <input class="btn btn-info" type="button" id="sendBtn" style="width: 20%;" value="전송"/>
	</div>
<script>
	var userId = document.getElementById("userId").value;	

	function goSend(){
		 if (window.event.keyCode == 13) {
		 	sendMessage();
		 	$('#message').val('');
		 }
	}
	
    $(document).ready(function(){
        $("#sendBtn").click(function(){
            sendMessage();
            $('#message').val('');
        });
        
        $("#sendBtn").click(function(){
            sendMessage();
            $('#message').val('');
        });
    });
    
    //websocket을 지정한 URL로 연결
    var sock= new SockJS("<c:url value="/echo"/>");
   
    //websocket 서버에서 메시지를 보내면 자동으로 실행된다.
    sock.onmessage = onMessage;
    //websocket 과 연결을 끊고 싶을때 실행하는 메소드
    sock.onclose = onClose;
    //websocket 에 연결 될 때 실행
    sock.onopen = onOpen;
    
    function sendMessage(){
    	//websocket으로 메시지를 보내겠다.
        sock.send(userId + " : "+ $("#message").val());
    }
            
    //evt 파라미터는 websocket이 보내준 데이터다.
    function onMessage(evt){  //변수 안에 function자체를 넣음.
        var data = evt.data;
        $("#data").append(data + "<br/>");
        /* sock.close(); */
    }
    
    function onOpen(){
    	
    	sock.send(userId + "님이 입장하셨습니다.");    	
    }
    
    function onClose(evt){
    	
    	self.close();
    	sock.send(userId + "님이 퇴장하셨습니다.");
    }
</script>
</body>
</html>