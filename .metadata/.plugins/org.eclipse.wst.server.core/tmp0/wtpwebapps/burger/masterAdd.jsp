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
		<title>Home画面</title>
		<style type="text/css"></style>
	</head>
	<body>
	<s:form action="MasterAddConfirmAction">
	<p>商品名</p>
	<input name="productName">
	<p>商品かな</p>
	<input name="productNameKana">
	<p>商品詳細</p>
	<textarea name="productDescription"></textarea>
	<p>カテゴリID</p>
	<input name="categoryId">
	<p>値段</p>
	<input name="price">

	<p>画像</p>
	<s:form action="FileUploadAction" method="post" enctype="multipart/form-data">
	<s:file name="userImage" label="画像" />
	<s:submit value="アップロード" align="center" />
	</s:form>

	画像：<s:property value="userImage"/><br>/
	Content Type:<s:property value="userImageContentType"/><br/>
	ファイル名：<s:property value="userImageFileName"/><br/>
	画像イメージ：<img src="img/<s:property value="userImageFileName"/>" width="100" height="100"/>


	<p>画像名</p>
	<input name="imageFileName">
	<p>発売日</p>
	<input name="releaseDate">
	<p>ステータス</p>
	<input type="checkbox" name="Status" value="0">無効<br>
	<input type="checkbox" name="Status" value="1" checked>有効<br>

	<s:submit value="確認画面へ" />

	</s:form>

</body>
</html>