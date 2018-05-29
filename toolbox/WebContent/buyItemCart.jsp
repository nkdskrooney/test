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
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="./css/itemlist.css">
		<title>カート</title>
		<style type="text/css">
		#cart-item{
		float:left;
		width:25%;

		}
		</style>
	</head>
	<body>
<!-- header	 -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
	<div class="main">
		<h1>-　cart item　-</h1>
		<div class="inner">
			<s:form action="BuyItemConfirmAction">
<!-- iterator -->
				<s:iterator value="session.cartList" id="cart-item">
			<!-- 各商品情報 -->
					<div class="item">
						<img src="<s:property value="imageFilePath"/>" width="100" height="100"/><br>
						商品名：<s:property value="itemName" /><br>
						商品かな：<s:property value="itemNameKana" /><br>
						値段：<s:property value="price" /><span>円</span><br>
						購入数：<s:property value="count" /><span>個</span><br>
						合計金額：<s:property value="totalPrice" /><span>円</span><br>
					</div>
				</s:iterator>
<!-- iterator -->
				<div class="option">
					支払い方法：
					<input type="radio" name="payment" value="1">
						現金払い
					<input type="radio" name="payment" value="2">
						クレジットカード
				<br>
				<input type="submit" value="確認画面へ"/>
				</div>
			</s:form>
		</div>
	</div>
<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
