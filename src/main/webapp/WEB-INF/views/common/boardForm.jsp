<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_style.min.css" rel="stylesheet" type="text/css" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- Include external JS libs. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/js/froala_editor.pkgd.min.js"></script>
<style>
.boardTitleArea{
	margin-left:210px;
}

</style>
</head>
<body>
	<form action="insertBoard.ljs">
		<div class="boardTitleArea">
			제목 : <input type="text" style="width:770px;" name="boardTitle">
		</div>
		<br>
		<div id="contentWrite2" style="text-align: center; margin-left: 270px; width:100%;">
				<section id="editor" style="text-align: left; width: 810px; margin-left: -60px;">
					<textarea id='edit' name="edit" style="margin-top: 30px; height: 500px;" name="boardContent">
               
       		 		</textarea>
				</section>
		</div>
		<br>
		<div class="btnArea" align="center">
			<button type="reset">취소</button>
			<button type="submit">작성</button>
		</div>
	</form>
	
	
	
	
	<script>
		$('#edit').froalaEditor({   
			theme : 'royal',
			imageUploadURL:'http://i.froala.com/upload'
		});
	</script>
</body>
</html>