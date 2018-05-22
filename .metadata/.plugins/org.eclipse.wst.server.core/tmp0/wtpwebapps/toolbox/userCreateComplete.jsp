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
		<link rel="stylesheet" href="./css/style.css">
		<title>登録完了画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">

			<div id="top">
				<p>UserCreateComplete</p>
			</div>
			<div>
				<h3>ユーザーの登録が完了致しました。</h3>
				<div><a href='<s:url action="LoginGoAction" />'>ログインへ</a></div>
			</div>

		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
