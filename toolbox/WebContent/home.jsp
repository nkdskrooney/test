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
		<link rel="stylesheet" type="text/css" href="./css/itemlist.css">
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>-　contents　-</h1>
			<div class="inner">
<!-- iterator -->
				<s:iterator value="session.itemList">
					<div class="item">
					<a href="<s:url action="BuyItemAction">
							<s:param name="itemId" value="%{itemId}"/>
						</s:url>">
			<!-- 各商品情報 -->
						<img src="<s:property value="imageFilePath"/>" width="100" height="100"/><br>
						<b>商品名：</b><s:property value="itemName" /><br>
						商品かな：<s:property value="itemNameKana" /><br>
						<b>値段：</b><s:property value="price" /><span>円</span><br>

					</a>
					</div>
				</s:iterator>
<!-- iterator -->
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
