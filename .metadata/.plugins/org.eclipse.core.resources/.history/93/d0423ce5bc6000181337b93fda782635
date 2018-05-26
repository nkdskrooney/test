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
		<link rel="stylesheet" href="./css/style.css">
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
		<div id="main">
			<div id="top">
				<p>CartItem</p>
			</div>

			<s:form action="BuyItemConfirmAction">
<!-- iterator -->
				<s:iterator value="session.itemList" id="cart-item">

							商品名<s:property value="itemName" />
							<img class="item-img" src='<s:property value="imgAddress"/>'>
							値段<s:property value="totalPrice" /><span>円</span>
							購入数:<s:property value="PurchaseNumber" /><span>個</span>

				</s:iterator>
<!-- iterator -->
					支払い方法：
					<input type="radio" name="payment" value="1">
						現金払い
					<input type="radio" name="payment" value="2">
						クレ ジットカード

				<br>
				<s:submit value="確認画面へ"/>
			</s:form>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
