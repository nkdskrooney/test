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
		<title>購入情報確認</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>-　BuyItemConfirm　-</h1>
			<s:form action="BuyItemCompleteAction">
	<!-- iterator -->
				<s:iterator value="session.cartList">

					<div class="item">
						<img src="<s:property value="imageFilePath"/>" width="100" height="100"/><br>
						商品名：<s:property value="itemName" /><br>
						商品かな：<s:property value="itemNameKana" /><br>
						購入数：<s:property value="count" /><span>個</span><br>
						値段：<s:property value="price" /><span>円</span><br>
						合計金額：<s:property value="totalPrice" /><span>円</span><br>
					</div>

				</s:iterator>
	<!-- iterator -->
					<div class="option">
						支払い方法：<s:property value="session.paymentName"/><br>
						合計購入金額：<s:property value="session.allTotalPrice" /><span>円</span><br>
						<input type="submit" value="購入完了"/>
					</div>
			</s:form>
			<div class="text">
			<h3>購入確認画面</h3>
				・購入情報の確認のために購入情報の表示をしています。<br>
				・支払い情報はデータ上では、int型のため<br>
				　BuyItemConfirmActionで判別し文字列を挿入しています。<br>
				・購入完了ボタンを押すと購入履歴情報へ購入情報がInsertされます。<br>
				・同時にカート情報を削除しています。<br>
			</div>
		</div>


<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
