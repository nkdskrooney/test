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
		<style type="text/css"></style>
	</head>
	<body>
<!-- header	 -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
	<div class="main">
		<h1>-　cart item　-</h1>
		<div class="inner">
			<s:if test="session.cartList.isEmpty()">
				<h1>商品を追加してください</h1>
			</s:if>
			<s:form action="BuyItemConfirmAction">
<!-- iterator -->
				<s:iterator value="session.cartList">
			<!-- 各商品情報 -->
					<div class="item">
						<img src="<s:property value="imageFilePath"/>" width="100" height="100"/><br>
						商品名：<s:property value="itemName" /><br>
						商品かな：<s:property value="itemNameKana" /><br>
						購入数：<s:property value="count" /><span>個</span><br>
						値段：<s:property value="price" /><span>円</span><br>
						合計金額：<s:property value="totalPrice" /><span>円</span><br>
						<div class="delete">
							<a href="<s:url action='CartDeleteAction'>
							<s:param name="cartId" value="%{cartId}"/></s:url>">削除</a><br>
						</div>

					</div>
				</s:iterator>
<!-- iterator -->
				<div class="option">
					合計購入金額：<s:property value="session.allTotalPrice" /><span>円</span><br>
					支払い方法：
					<s:if test="payment==0">
						<input type="radio" name="payment" value="0" checked>現金払い
						<input type="radio" name="payment" value="1">クレジットカード
					</s:if>
					<s:elseif test="payment">
						<input type="radio" name="payment" value="0">現金払い
						<input type="radio" name="payment" value="1" checked>クレジットカード
					</s:elseif>
					<s:else>
						<input type="radio" name="payment" value="0" checked>現金払い
						<input type="radio" name="payment" value="1">クレジットカード
					</s:else>
					<br>
					<input type="submit" value="確認画面へ"/>
				</div>
			</s:form>
		</div>
		<div class="text">
			<h3>カート画面</h3>
			・カート機能は前提として、未ログインの状態、ログイン後の状態どちらでも使用可能です。<br>
			　未ログイン状態の際は、カート情報がtempUserIdとともにInsertされます。<br>
			・ログインの際にtempUserIdとuserIdを紐づけし、<br>
			　ログイン後はuserIdとともにカート情報をInsertします。<br>
			・未ログイン状態の際には、確認画面へ遷移する前に弾かれログイン画面に遷移します。<br>
			・ログイン状態であれば、支払い方法とともに購入確認画面へ遷移します。<br>
			・カート内の全商品合計金額はCartSelectActionにて、<br>
			　格納しているリストを拡張for文でまわして合計金額を算出しています。<br>

		</div>
	</div>
<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
