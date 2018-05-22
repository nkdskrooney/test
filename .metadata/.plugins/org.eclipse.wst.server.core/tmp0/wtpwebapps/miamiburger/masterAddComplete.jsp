<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" /> <meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>完了画面</title>
		<style type="text/css">

		body {
			background-image: url(./images/board.jpg);
			background-attachment: fixed;
			background-size: cover;
			background-size: 100% auto;
		}
		.main{
			width:60%;
			margin:0 auto;
			margin-top:10%;
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.main h1{
			padding:5%;
			margin:0 auto;
			text-align: center;

		}
		.main p {
			padding:5%;
			margin:0 auto;
			text-align: center;
		}

		</style>
</head>
<body>

	<div class="main">
	<h1>登録が完了しました</h1>
	<p><a href='<s:url action="GoMasterAction" />'>管理画面へ</a></p>
	</div>

</body>
</html>