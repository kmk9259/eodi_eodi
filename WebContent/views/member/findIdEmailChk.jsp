<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>어디어디 이메일 발송 안내</title>
	</head>
	<body style="background-color: #FFF3E7;">

		<script type="text/javascript">
			alert("이메일이 발송되었습니다.")
			
			function mailChk() {
				window.close();
			}

		</script>
		<br>
		<br>
		<br>
		<br>
		<h2 style="text-align: center;">이메일을 확인해주세요.</h2>
		<br>
		<br>
		<br>
		<input type="button" value="닫기" onclick="mailChk();" style="background-color: #D958A0; color: #ffffff; width: 100%; height: 100%; font-size: 20px;">
		
	</body>
</html>