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
		<title>管理画面</title>
		<style type="text/css">
		.product_container{
		float:left;
		width:33%;
		text-align:center;
		border: 1px solid black;
		}
		img{
		margin:30px;
		}
		</style>
	</head>
	<body>
	<jsp:include page="header.jsp" />
<!-- ユーザー情報 -->
<div class="M.title">管理画面
<a href='<s:url action="MasterAddAction" />'>新商品追加</a></div>
	<s:iterator value="productInfoList">
	<div class="box">
		<div class="product_container">
				<img src='img/<s:property value="imageFilePath"/>' width="100" height="100"/>
				<br>
				<span><b><s:property value="productName" /></b></span>
				<br>
				<span> <s:property value="productNameKana" /></span>
				<br>
				<span><s:property value="price" />円</span>
				<br>
		</div>
	</div>
	</s:iterator>

<!-- ユーザー情報変更画面への遷移 -->

	</body>
</html>