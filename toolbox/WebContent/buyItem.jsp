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
		<link rel="stylesheet" type="text/css" href="./css/contents.css">
		<title>商品詳細</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
	<jsp:include page="include_header.jsp"/>

<!-- main -->
	<div class="main">
		<h1>-　item info　-</h1>
		<div class="inner">
			<s:form action="CartInsertAction">


				<img class="item-img" src='<s:property value="session.imageFilePath"/>'width="200" height="200"/><br>
				<div class="item">
				商品名：<s:property value="session.itemName" /><br>
				商品かな：<s:property value="itemNameKana" /><br>
				値段：<s:property value="session.price" />円<br>
				在庫：<s:property value="session.stock" />個<br>
				発売日：<s:property value="releaseDate" /><br>
				購入数：<select name="count">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select><br>

<!-- ValueStackでの受け渡し　home.jsp→BuyItemAction→buyItem.jsp→CartInsertActon -->
				<s:hidden name = "itemId" />
				</div>
				<input type="submit" value="カートへ入れる" />
			</s:form>
			<div class="clear"></div>
		</div>
	</div>
<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
