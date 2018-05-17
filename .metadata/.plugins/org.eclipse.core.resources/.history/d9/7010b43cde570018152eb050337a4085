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
		<title>管理画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- ユーザー情報 -->
	<s:iterator value="productInfoList">
		<div class="product_container">

<!-- 既存商品変更の仕組みが出来たらUPします。By中川 -->
<%-- 			<a href="<s:url action="MasterUpdateAction"> --%>
					<s:param name="productId" value="%{productId}"/>
					<s:param name="imageFilePath" value="%{imageFilePath}"/>
					<s:param name="imageFileName" value="%{imageFileName}"/>
					<s:param name="productName" value="%{productName}"/>
					<s:param name="productNameKana" value="%{productNameKana}"/>
					<s:param name="productDescription" value="%{productDescription}"/>
					<s:param name="price" value="%{price}"/>
					<s:param name="categoryId" value="%{categoryId}"/>
<%-- 				</s:url>"> --%>

				<img src='img/<s:property value="imageFilePath"/>' width="100" height="100"/>
				<br>
				<span><b><s:property value="productName" /></b></span>
				<br>
				<span> <s:property value="productNameKana" /></span>
				<br>
				<span><s:property value="price" />円</span>
				<br>
<!-- 			</a> -->
		</div>
	</s:iterator>

<!-- ユーザー情報変更画面への遷移 -->
	<p><a href='<s:url action="MasterAddAction" />'>新商品追加</a></p>
	</body>
</html>