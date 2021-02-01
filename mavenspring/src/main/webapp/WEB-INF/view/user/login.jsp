<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${! empty cant}">
		<script type="text/javascript">
			alert("${cant}");
		</script>
		<c:remove var="cant" scope="session" />
	</c:if>
	<h1>로그인 페이지</h1>
	<form method="post">
		<input type="text" name="userid" /><br /> <input type="password"
			name="password" /><br /> <input type="submit" value="전송" />
	</form>
</body>
</html>
