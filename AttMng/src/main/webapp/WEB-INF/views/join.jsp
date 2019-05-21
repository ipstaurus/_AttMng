<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(window).load(function() {
		var test = new Date().toISOString().substring(0, 10)
		$("input[name=userdate]").attr("value", test);
	});
	function validate() {
		var idrule = /^[a-zA-Z0-9]{8,13}$/;
		var pwrule = /^[a-zA-Z0-9.\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]{8,17}$/;
		var namerule = /^[\u30a0-\u30ff\u30e0-\u9fcf]{1,30}$/;
		var emailrule = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		var pnumrule = /^\d{2,3}-\d{3,4}-\d{4}$/;
		var addrule = /^[a-zA-Z0-9-/()]{0,150}$/;

		//ID入力CHECK
		if (joindata.id.value == "") {
			alert("IDを入力してください。");
			return false;
		}
		//ID形式CHECK
		if (idrule.test(joindata.id.value) == false) {
			alert("ID形式が正しくありません。");
			return false;
		}
		//PASSWORD入力CHECK
		if (joindata.pw.value == "") {
			alert("PASSWORDを入力してください。");
			return false;
		}
		//PASSWORD形式CHECK
		if (pwrule.test(joindata.pw.value) == false) {
			alert("PASSWORD形式が正しくありません。");
			return false;
		}
		//PASSWORDとPASSWORD確認CHECK
		if (joindata.pw.value != joindata.pwchk.value) {
			alert("パスワードが一致しません。");
			return false;
		}
		//이름 체크
		if (namerule.test(joindata.uname.value) == false) {
			alert("名前の形式が正しくありません。");
			return false;
		}
		//회사 선택 체크
		if (joindata.company.value == "") {
			alert("会社を選択してください。");
			return false;
		}
		//부서 선택 체크
		if (joindata.department.value == "") {
			alert("部署を選択してください。");
			return false;
		}
		//직위선택체크
		if (joindata.position.value == "") {
			alert("職位を選択してください。");
			return false;
		}
		//메일 입력 확인
		if (joindata.mail.value == "") {
			alert("emailを入力してください。");
			return false;
		}
		//메일 형식 체크
		if (emailrule.test(joindata.mail.value) == false) {
			alert("メールの形式が正しくありません。");
			return false;
		}
		//라디오박스
		if (joindata.gender[0].checked == false
				&& joindata.gender[1].checked == false) {
			alert("性別を選択してください。!");
			return false;
		}
		//번호 입력 확인
		if (joindata.pnumber.value == "") {
			alert("電話番号を入力してください。");
			return false;
		}
		//번호 형식 체크
		if (pnumrule.test(joindata.pnumber.value) == false) {
			alert("電話番号の形式が正しくありません。");
			return false;
		}
		//주소 입력 확인
		if (joindata.address.value == "") {
			alert("住所を入力してください。");
			return false;
		}
		//주소 형식 체크
		if (addrule.test(joindata.address.value) == false) {
			alert("住所の形式が正しくありません。");
			return false;
		}
		alert("登録成功!!!");
	}
</script>
<style type="text/css">
#join {
	text-align: left;
	height: 70%;
}

#ipsty {
	width: 90%;
}

#labelloca {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<div id="join">
		<div
			style="font-family: verdana; border: 1px solid red; font-size: 15px; text-align: left; height: 100%; width: 100%">
			<h1>社員登録画面</h1>
			<form name="joindata" action="main" onsubmit="return validate();">
				<table style="width: 60%; margin-left: 15%; margin-right: 20%;">
					<tr>
						<td id="labelloca" style="font-size:10pt;">ID</td>
						<td>: <input id="ipsty" name="id" type="text" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">パスワード</td>
						<td>: <input id="ipsty" name="pw" type="password" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">パスワード確認</td>
						<td>: <input id="ipsty" name="pwchk" type="password" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">名前</td>
						<td>: <input id="ipsty" name="uname" type="text" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">会社</td>
						<td>: <select id="ipsty" name=company style="font-size:15pt;">
								<option value="">会社を選択してください。</option>
								<option value="FOS">FOS</option>
								<option value="PSS">PSS</option>
								<option value="GCS">GCS</option>
								<option value="CSS">CSS</option>
								<option value="NCB">NCB</option>
								<option value="ISS">ISS</option>
						</select></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">部署</td>
						<td>: <select id="ipsty" name=department style="font-size:15pt;">
								<option value="">部署を選択してください。</option>
								<option value="dep01">戦略企画室</option>
								<option value="dep02">営業部</option>
								<option value="dep03">管理部</option>
								<option value="dep04">人事本部 対内人事部</option>
								<option value="dep05">人事本部 対外人事部</option>
								<option value="dep06">人事総括本部 対内人事部</option>
								<option value="dep07">人事総括本部 対外人事部</option>
								<option value="dep08">開発事業本部 開発1部</option>
								<option value="dep09">開発事業本部 開発2部</option>
								<option value="dep10">開発事業本部 開発3部</option>
								<option value="dep11">開発事業本部 開発4部</option>
								<option value="dep12">開発事業本部 開発5部</option>
								<option value="dep13">SI事業1部第１事業部</option>
								<option value="dep14">SI事業1部第２事業部</option>
								<option value="dep15">SI事業1部第３事業部</option>
								<option value="dep16">SI事業２部第１事業部</option>
								<option value="dep17">SI事業２部第２事業部</option>
								<option value="dep18">個人契約</option>
						</select></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">職位</td>
						<td>: <select id="ipsty" name=position style="font-size:15pt;">
								<option value="">職位を選択してください。</option>
								<option value="pos01">会長</option>
								<option value="pos02">社長</option>
								<option value="pos03">室長</option>
								<option value="pos04">本部長</option>
								<option value="pos05">本部長代理</option>
								<option value="pos06">部長</option>
								<option value="pos07">部長代理</option>
								<option value="pos08">マネージャー</option>
								<option value="pos09">マネージャー代理</option>
								<option value="pos10">総括リーダ</option>
								<option value="pos11">リーダ</option>
								<option value="pos12">メンバー</option>
						</select></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">メール</td>
						<td>: <input id="ipsty" name="mail" type="text" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">性別</td>
						<td>: 男性 <input type="radio" name="gender" value="men" style="font-size:15pt ; width:15px;height:15px"/> 女性
							<input type="radio" name="gender" value="women" style="font-size:15pt ; width:15px;height:15px"/>
						</td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">入社日</td>
						<td>: <input id="ipsty" type="date" name="userdate" value="" style="font-size:15pt;"/></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">電話番号</td>
						<td>: <input id="ipsty" name="pnumber" type="text"
							placeholder="'-'を入力してください。" style="font-size:15pt;"></td>
					</tr>
					<tr>
						<td id="labelloca" style="font-size:10pt;">住所</td>
						<td>: <input id="ipsty" name="address" type="text" style="font-size:15pt;"></td>
					</tr>
					
				</table>
				<table style="margin-left:31.3%">
					<tr>
						<td><input type="button" value="キャンセル" style="font-size:15pt;width:225pt;height:25pt"> <input
							type="submit" value="登録完了" style="font-size:15pt;width:225pt;height:25pt"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>