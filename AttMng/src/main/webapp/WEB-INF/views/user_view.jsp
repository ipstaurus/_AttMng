<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="common/header.jsp"></jsp:include>
<style type="text/css">
th {
    text-align: left;
}
</style>
</head>
<body>
	<br>
	<div style="font-family: verdana; padding: 5px; border: 1px solid red; font-size: 25px; text-align: left; height: 80%">
    <h1>　　社員情報照会</h1>
    <table>
        <tr>
            <th>ID</th>
            <td>　:　honggildong</td>
        </tr>
        <tr>
            <th>名前</th>
            <td>　:　李永泰</td>
        </tr>
        <tr>
            <th>会社</th>
            <td>　:　GCS</td>
        </tr>
        <tr>
            <th>部署</th>
            <td>　:　第一事業部 開発1部</td>
        </tr>
        <tr>
            <th>職位</th>
            <td>　:　MB</td>
        </tr>
        <tr>
            <th>性別</th>
            <td>　:　男</td>
        </tr>
        <tr>
            <th>メール</th>
            <td>　:　gildong@gmail.com</td>
        </tr>
        <tr>
            <th>電話番号</th>
            <td>　:　070-1234-5678</td>
        </tr>
        <tr>
            <th>住所</th>
            <td>　:　東京都品川区八潮5丁目6番37-315号</td>
        </tr>
        <tr>
            <th>入社日</th>
            <td>　:　2019年4月6日</td>
        </tr>
    </table><br>
    <input type="button" value="情報修正"/>
    <input type="button" value="パスワード変更"/>
    <input type="button" value="キャンセル"/>
    </div>
</body>
<footer style="margin-top: 20px">
	<jsp:include page="common/footer.jsp"></jsp:include>
</footer>
</html>