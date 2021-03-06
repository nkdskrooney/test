<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<title>MyPage画面</title>
<style type="text/css">


</style>
</head>
<body>

	<div class="main">
		<div class="header">
			<jsp:include page="header.jsp" />
		</div>

		<div class="inner">
			<h1>マイページ（ユーザー情報）</h1>
			<!-- ユーザー情報 -->
			姓:
			<s:property value="session.new_familyName" />
			名:
			<s:property value="session.new_firstName" />
			<br> ふりがな:
			<s:property value="session.new_familyNameKana" />
			<s:property value="session.new_firstNameKana" />
			<br> 性別:
			<s:property value="session.old_sex_Name" />
			<br> メールアドレス:
			<s:property value="session.new_email" />
			<br>

			<!-- ユーザー情報変更画面への遷移 -->
			<input type="button"
				onclick="location.href='<s:url action="UserUpdateAction" />'"
				value="ユーザー情報変更" /><br>

			<!-- パスワード再設定画面への遷移 -->
			<input type="button"
				onclick="location.href='<s:url action="MyPageChangePasswordAction" />'"
				value="パスワード変更" /><br>

			<!-- 購入履歴画面への遷移 -->
			<input type="button"
				onclick="location.href='<s:url action="PurchaseHistoryAction" />'"
				value="購入履歴" /><br>

		</div>
	</div>
</body>
</html>
