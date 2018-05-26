<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<link rel="stylesheet" type="text/css" href="./css/purchaseHistoryDetails.css">
<title>購入履歴一覧</title>
</head>
<body>
<div class="wrapper">
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
<div class="push"></div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>



