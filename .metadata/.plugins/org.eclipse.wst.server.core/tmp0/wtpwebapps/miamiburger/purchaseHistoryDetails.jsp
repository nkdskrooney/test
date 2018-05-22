<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<style>
body{
	background-image:url(./images/board.jpg);
	background-size: 100% auto;
}
.PHD-main {
        position: relative; top: 90px;

	text-align: center;
	margin: auto;
	width: 90%;
	border: 1px solid #ddd;
	background-image:url(./images/menutile.jpg);
	background-repeat:repeat;
}
.PHD-inner {
	width: 90%;
	height: 150px;
	border: 1px solid black;
	margin: 5%;
	  background-color:#E6FFE9;
	  border-radius: 1em;

}

.PHD-img {
	position: relative;top:-1px;left: -1px;
	width: 200px;
	height: 100%;
	border: 1px solid black;
	background-color: #00FFFF;
	float:	left;
}

.PHD-footer {
	clear: both;
}

.PHD-text{
	text-align: left;
	position: relative; left: 10px;
	width: 100%;

}


h1{
	text-decoration: underline;
	text-align: center;
	border-radius: 1em;
}
.text{
	text-align: right;
	position: relative; right:50px;
}
</style>
<title>購入履歴一覧</title>
</head>
<body>
<div class="header">
<jsp:include page="header.jsp" />
</div>
<div class="PHD-main">
	<h1>購入履歴一覧</h1>
<s:iterator value="#session.PHDList">

		<div class="PHD-inner">
			<div class="PHD-img">
				<img src="<s:property value='imageFilePath'/>" width="200" height="150" align="middle" alt=<s:property value="imageFileName" /> />
			</div>
				<div class="PHD-text">
				<div class="body">商品名 : <s:property value="productName"/></div>
				<div class="ruby">ふりがな:<s:property value="productNameKana" /><br></div>
				<div class="text">発売年月日：<s:property value="releaseDate" /></div>
				<br>
				<div class="body">値段:<s:property value="price" />円</div>
				</div>
			</div>
			<div class="PHD-footer"></div>

</s:iterator>
</div>
<!-- <div class="footer"></div> -->
</body>
</html>



