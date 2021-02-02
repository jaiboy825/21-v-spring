<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<style>
	.container{
		width: 400px;
		height: 200px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		padding: 10px;
		border: 1px solid black;
		border-radius: 10px;
	}
</style>
<body>
	<div class="container">
		<c:if test="${! empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
			<c:remove var="msg" scope="session" />
		</c:if>
		<h1>회원가입</h1>
		<form method="post">
			아이디 : <input type="text" name="userid" /><br> 비번 : <input
				type="text" name="password" /> <br> 비번확인 : <input type="text"
				name="passwordc" /><br> 이름 : <input type="text"
				name="username"> <br> <input type="submit" value="전송" />
		</form>
	</div>
</body>
</html>
