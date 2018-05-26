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
		<link rel="stylesheet" href="./css/style.css">
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">
			<h1>商品一覧</h1>

<!-- iterator -->
			<s:iterator value="itemList">
				<s:form action="BuyItemAction">
		<!-- 各商品情報 -->
					商品名：<s:property value="itemName" />
					商品かな：<s:property value="itemNameKana" />
					<img src='<s:property value="imageFilePath"/>'>
					値段：<s:property value="price" /><span>円</span>

		<!-- 商品単体のidをActionへ送る -->
					<s:hidden name = "itemId" />

					<input type="submit" value="商品詳細へ" />

					</s:form>
				</s:iterator>
<!-- iterator -->
			</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>