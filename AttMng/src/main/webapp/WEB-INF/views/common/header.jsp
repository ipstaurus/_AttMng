<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
header {
	height: 10%;
	border: 1px solid red;
	margin-bottom:1%;
}
</style>
</head>
<body>
	<header>
		<table style="width: 100%;">
			<tr>
				<td style="width: 90%"><img src="resources/img/logo.png" width="10%"></td>
				<td style="width: 5%"><a href="join.html">社員登録</a></td>
				<td style="width: 5%"><a href="login.html">ログイン</a></td>
			</tr>
		</table>
	</header>
</body>
</html>