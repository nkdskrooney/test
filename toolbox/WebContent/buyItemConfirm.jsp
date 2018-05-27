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
		<link rel="stylesheet" type="text/css" href="./css/contents.css">
		<title>確認画面</title>
		<style type="text/css">

		</style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">
			<div id="top">
				<p>CartItem</p>
			</div>
			<s:form action="BuyItemCompleteAction">
<!-- iterator -->
				<s:iterator value="session.itemList" id="cart-item">
					<br>

							<label>商品名</label>
								<s:property value="itemName" />

								<img class="item-img" src='<s:property value="imgAddress"/>'>

							<label>値段</label>

								<s:property value="totalPrice" />
								<span>円</span>


							<label>購入個数</label>

								<s:property value="PurchaseNumber" />
								<span>個</span>

							<td>支払い方法</td>

								<s:property value="payment"/>

				</s:iterator>
<!-- iterator -->
				<br>
				<span>合計金額</span>
				<s:property value="session.alltotalprice" />
				<span>円</span>
				<br>
				<s:submit value="完了画面へ"/>
			</s:form>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
