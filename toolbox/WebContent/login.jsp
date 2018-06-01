<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" /> <meta name="description" content="" />
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
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>

	</body>
</html>
