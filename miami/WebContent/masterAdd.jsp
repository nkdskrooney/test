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
		<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
		<title>画面</title>
		<style type="text/css"></style>
	</head>
	<body>

	<p>画像</p>
	ファイル名：<s:property value="session.userImageFileName"/><br/>
	<img src="img/<s:property value="session.userImageFileName"/>" width="100" height="100"/>
	<s:form action="MasterAddAction" method="post" enctype="multipart/form-data">
	<s:file name="userImage" label="参照" />
	<s:submit value="アップロード" align="center" />
	</s:form>

	<s:form action="MasterAddConfirmAction" >
	<p>商品名</p>
	<input name="productName"required>
	<p>商品かな</p>
	<input name="productNameKana"required>
	<p>商品詳細</p>
	<textarea name="productDescription"required></textarea>
	<p>カテゴリ</p>
<!-- ラジオボタン -->
	<input type="radio" name="categoryId" value="1" checked>バーガー<br>
	<input type="radio" name="categoryId" value="2" >飲み物<br>
	<input type="radio" name="categoryId" value="3" >サイドメニュー<br>
	<input type="radio" name="categoryId" value="4" >セット<br>
<!-- プルダウン -->
<%-- 	<select name="categoryId"> --%>
<!-- 		<option value="1">バーガー</option> -->
<!-- 		<option value="2">飲み物</option> -->
<!-- 		<option value="3">サイドメニュー</option> -->
<!-- 		<option value="4">セット</option> -->
<%-- 	</select> --%>
	<p>値段</p>
	<input value="1000" name="price"required><span>円</span>
	<p>発売日</p>
	<input value="1000-01-01 00:00:00" name="releaseDate">

	<p>ステータス</p>
	<input type="radio" name="Status" value="0">無効<br>
	<input type="radio" name="Status" value="1" checked>有効<br>

	<s:submit value="確認画面へ" />
	</s:form>

</body>
</html>