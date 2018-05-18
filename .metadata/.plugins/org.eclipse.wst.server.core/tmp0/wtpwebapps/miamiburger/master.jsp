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
<title>管理画面</title>
<style type="text/css">
.product_container {
	float: left;
	width: 33%;
	border: 1px solid black;
}

img {
	width: 30%;
	height: 30%;
	padding: 5px;
}
</style>
</head>
<body>
	<!-- ヘッダー -->
	<jsp:include page="header.jsp" />
	<!-- ユーザー情報 -->
	<h1>管理画面</h1>
	<!-- ユーザー情報変更画面への遷移 -->
	<input type="button"
		onclick="location.href='<s:url action="MasterAddAction" />'"
		value="新商品追加" />
	<br>
	<!-- 商品一覧 -->
		<s:iterator value="productInfoList">
			<div class="product_container">
				<img src='<s:property value="imageFilePath"/>' width="100"height="100" /> <br>
				<b><s:property value="productName" /></b><br>
				<s:property value="productNameKana" /><br>
				<s:property value="price" />円<br>
			</div>
		</s:iterator>

</body>
</html>