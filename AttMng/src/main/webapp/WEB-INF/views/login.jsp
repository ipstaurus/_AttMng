<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#login {
	text-align: left;
	height: 70%;
}
</style>

<script>
	$(document).ready(function({
		$("#btnLogin").click(function({
			var id = $("id").val();
			var password = $("password").val();
			
			if(id == ""){
				alert("IDを入力して下さい。");
				$("#id").focus();
				return;
			}
			if(password == ""){
				alert("パスワードを入力して下さい。");
				$("#password").focus();
				return;
			}
			document.loginForm.submit();
		});
	}); 
</script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div id="login">
		<div
			style="font-family: verdana; border: 1px solid red; font-size: 25px; text-align: left; height: 100%">
			<h1>ログイン</h1>

			<form name="loginForm" method="post" action="/loginCheck">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><label style="font-size: 20pt;">ID</label>
						<td><input type="text" id="id" name="id"
							style="font-size: 20pt;"></td>

					</tr>
					<tr>
						<td><label style="font-size: 20pt;">パスワード</label>
						<td><input type="password" id="password" name="password" style="font-size: 20pt;"></td>
					</tr>
					<tr></tr>
					<tr>
						<td style="margin-left: auto; margin-right: auto;"></td>
						<td>
							<button type="submit" id="btnLogin" style="font-size: 20pt; width: 123pt; height: 30pt;background-color:#EAEAEA;">ログイン</button>
							<button type="button" id="new_co" style="font-size: 20pt; width: 123pt; height: 30pt;background-color:#EAEAEA;">新規登録</button> 
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>