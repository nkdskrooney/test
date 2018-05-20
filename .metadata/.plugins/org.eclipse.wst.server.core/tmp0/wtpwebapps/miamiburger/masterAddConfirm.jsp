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
		<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
		<title>確認画面</title>
		<style type="text/css">
		body {
			background-image: url(./images/board.jpg);
			background-attachment: fixed;
			background-size: cover;
			background-size: 100% auto;
		}
		.main{
			padding-top:5%;
		}
		.main h1{
			width:60%;
			margin:0 auto;
			margin-top:50px;
			text-align: center;
		/* 	影をつけるボックスのプロパティです */
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.inner{
			margin:5% 20% 5% 20%;
			float:left;
			width: 60%;
			height: 50%;
		/* 	影をつけるボックスのプロパティです */
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.product_info{
			text-align:center;

		}
		.character{
			padding:3%;
		}
		.character b{
			padding-right:1%;
		}
		.button{
			width:40%;
			margin:0 auto;
			padding:2%;
		}
		.button input{
			width:100%;
		}

		</style>
	</head>
	<body>

	<div class="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="main">
		<h1>こちらの商品を追加しますか？</h1>
		<div class="inner">
			<div class="product_info">
				<div class="character">
					<b>ファイル名：</b><s:property value="session.image_file_name"/><br/>
					<img src="img/<s:property value="session.image_file_path"/>" width="100" height="100"/><br>
				</div>
				<div class="character">
					<b>商品名:</b><s:property value="session.productName" /><br>
				</div>
				<div class="character">
					<b>商品かな:</b><s:property value="session.productNameKana" /><br>
				</div>
				<div class="character">
					<b>商品詳細:</b><s:property value="session.productDescription" /><br>
				</div>
				<div class="character">
					<b>カテゴリ:</b><s:property value="session.categoryName" /><br>
				</div>
				<div class="character">
					<b>値段:</b><s:property value="session.price" />円<br>
				</div>
				<div class="character">
					<b>発売日:</b><s:property value="session.releaseDate" /><br>
				</div>
				<div class="character">
					<b>ステータス:</b><s:property value="session.StatusName" /><br>
				</div>
			</div>
			<div class="button">
			<input type="button"
				onclick="location.href='<s:url action="MasterAddCompleteAction" />'"
				value="完了画面" />
			<br>
			</div>
		</div>
	</div>
</body>
</html>