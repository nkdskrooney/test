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
		<title>確認画面</title>
		<style type="text/css"></style>
	</head>
	<body>
	<p>画像</p>
	ファイル名：<s:property value="session.userImageFileName"/><br/>
	<img src="img/<s:property value="session.userImageFileName"/>" width="100" height="100"/>
	<p>商品名</p>
	<p><s:property value="session.productName" /></p>
	<p>商品かな</p>
	<p><s:property value="session.productNameKana" /></p>
	<p>商品詳細</p>
	<p><s:property value="session.productDescription" /></p>
	<p>カテゴリ</p>
	<p><s:property value="session.categoryName" /></p>
	<p>値段</p>
	<p><s:property value="session.price" />円</p>
	<p>画像名</p>
	<p><s:property value="session.imageFileName" /></p>
	<p>発売日</p>
	<p><s:property value="session.releaseDate" /></p>
	<p>ステータス</p>
	<p><s:property value="session.StatusName" /></p>

	<p><a href='<s:url action="MasterAddCompleteAction" />'>完了画面</a></p>

</body>
</html>