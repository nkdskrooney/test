<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" type="text/css" href="./css/contentsBox.css">
		<title>LOGIN</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>-　Login　-</h1>
			<div class="inner">
				<div class="box">
				<h3>ログインID・パスワードの入力をお願いします。</h3>
				<s:form action="LoginAction">
					ログインID：<input type="text" name="loginUserId" required><br>
					パスワード：<input type="password" name="loginPassword" required><br>
					<input type="submit" value="ログイン"/>
				</s:form>
				<br/>
				<div >
					<p><a href='<s:url action="UserCreateAction" />'>新規ユーザー登録はこちら</a></p>
					<p><a href='<s:url action="HomeAction" />'>Homeへ戻る場合はこちら</a></p>
				</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="text">
			<h3>ログイン画面</h3>
				・デフォルトの状態でもログイン頂けるように事前にアカウントを一つ用意してあります。<br>
				　■ユーザーId：「guest」■パスワード：「guest」<br>
				　上記もしくは、新規ユーザー登録にて登録したアカウントにてログインください。<br>
				・ログイン画面での役割としては、<br>
				　1.ログイン判別しユーザー情報をDBから取り出す<br>
				　　入力された、IdとPasswordにてユーザー情報検索します。<br>
				　　DAO内にて情報がみつかればLoginFlgにTrueを挿入します。<br>
				　　Actionへもどり、LoginFlgを参照し情報の保持、成否の判別をします。<br>
				　2.管理画面への接続判別<br>
				　　※管理画面アクセス用→■ユーザーId：「admin」■パスワード：「admin」<br>
				　　入力された、IdとPasswordが特定文字列(今回はadmin)に一致するか判別。<br>
				　　管理画面へと遷移させる。<br>
				　3.tempUserIdにて保持されているカート情報にuserIdを紐づけ<br>
				　　カート用のテーブルをtempUserIdにて検索。<br>
				　　対応する情報にuserIdをUpdate文にて挿入します。<br>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>

	</body>
</html>
