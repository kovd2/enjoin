<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko"><head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" name="viewport">
  <title>프로필 사진 업로드 - TLX PASS</title>
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <style>
    body {
      background: #fff;
    }
    .userImg {
      width: 300px;
      height: 200px;
    }
    .wrapper{
    	display:inline-flex;
    }
  </style>
</head>
<body>
	<div class="wrapper">
    <img class="thumbnail userImg" src="/images/img_user_blank.png" alt="">
    <form name="img_form" action="/member/ifr_image_dir" enctype="multipart/form-data" method="post">
        <span id="btn"><input type="file" name="file" onchange="chg();"></span>
        <span id="loading" style="display:none;">업로드 중입니다 잠시만 기다려 주십시오..</span>
    </form>
    <img class="thumbnail userImg" src="/images/img_user_blank.png" alt="">
    <form name="img_form" action="/member/ifr_image_dir" enctype="multipart/form-data" method="post">
        <span id="btn"><input type="file" name="file" onchange="chg();"></span>
        <span id="loading" style="display:none;">업로드 중입니다 잠시만 기다려 주십시오..</span>
    </form>
    </div>


	<script>
		function chg() {
			document.getElementById("btn").style.display = "none";
			document.getElementById("loading").style.display = "block";
			document.img_form.submit();
		}
	</script>

	<script>
		$(document).ready(function() {
			$("#profileImg").click(function() {
				$("#input_img").click();
			})
		})
	</script>


	<script>
		var sel_file;

		$(document).ready(function() {
			$("#input_img").on("change", fileChange);
		});

		function fileChange(e) {
			e.preventDefault();

			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);

			filesArr.forEach(function(f) {
				if (!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}

				sel_file = f;

				var reader = new FileReader();
				reader.onload = function(e) {
					$("#profileImg").attr("src", e.target.result);
					$("#profileImg").css("height", "100px")
				}
				reader.readAsDataURL(f);
			});

			var file = files[0]
			console.log(file)
			var formData = new FormData();

			formData.append("file", file);

			$.ajax({
				url : '/uploadAjax',
				data : formData,
				dataType : 'text',
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {

					alert("시설 이미지가 변경 되었습니다.")

				}
			})

			function checkImageType(fileName) {
				var pattern = /jpg$|gif$|png$|jpeg$/i;
				return fileName.match(pattern);
			}

			function getOriginalName(fileName) {
				if (checkImageType(fileName)) {
					return;
				}

				var idx = fileName.indexOf("_") + 1;
				return fileName.substr(idx);

			}

			function getImageLink(fileName) {

				if (!checkImageType(fileName)) {
					return;
				}
				var front = fileName.substr(0, 12);
				var end = fileName.substr(14);

				return front + end;

			}

		}
	</script>

	<c:choose>
		<c:when test="${empty userImage }">
			<div>
				<img id="profileImg" src="/displayFile?fileName=/lion.gif"
					style="border-radius: 0%; padding-top: 10px; height: 200px; width: 300px;">
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<img id="profileImg" src="/displayFile?fileName=${userImage }"
					style="border-radius: 0%; padding-top: 10px; height: 200px; width: 300px;">
			</div>
		</c:otherwise>
	</c:choose>

</body></html>