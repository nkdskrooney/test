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
		<title>登録完了画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
				<h1>UserCreateComplete</h1>
			<div class="inner">
				<div class="box">
				<h3>ユーザーの登録が完了致しました。</h3>
				<a href='<s:url action="LoginGoAction" />'>ログインへ</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
