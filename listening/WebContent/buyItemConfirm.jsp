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
		<title>確認画面</title>
		<style type="text/css">

		</style>
	</head>
	<body>
		<div id="header">
			<h1><a href='<s:url action="GoHomeAction" />'>Listening.</a></h1>
			<ul>
				<li>マイページへ</li>
				<li><a href='<s:url action="UserCreateAction" />'>新規ユーザー登録</a></li>
				<li><a href='<s:url action="HomeAction" />'>ログイン</a></li>
				<li>ようこそ
				<s:if test="#session.loginUser.LoginFlg == true">
					<s:property value="#session.loginUser.UserName"/>
				</s:if>
				<s:else>ゲスト</s:else>
				様
				</li>
			</ul>
		</div>


		<div id="main">
			<div id="top">
				<p>CartItem</p>
			</div>
			<s:form action="BuyItemCompleteAction">

				<s:iterator value="session.itemList" id="cart-item">
						<tr>
							<td>商品名</td>
							<td>
								<s:property value="itemName" />
							</td>
						</tr>
						<tr>
							<td>
								<img class="item-img" src='<s:property value="imgAddress"/>'>
							</td>
						</tr>
						<tr>
							<td>値段</td>
							<td>
								<s:property value="totalPrice" />
								<span>円</span>
							</td>
						</tr>
						<tr>
							<td>購入個数</td>
							<td>
								<s:property value="PurchaseNumber" />
								<span>個</span>
							</td>
						</tr>
						<tr>
							<td>支払い方法</td>
							<td>
								<s:property value="payment"/>
							</td>
						</tr>
				</s:iterator>
					<span>合計金額</span>
					<s:property value="session.alltotalprice" />
					<span>円</span>
					<s:submit value="完了"/>
					<tr>
						<td>
							<input type="button" value="戻る"   onclick="submitAction('GoHomeAction')" />
						</td>
						<td>
							<input type="button" value="完了"   onclick="submitAction('BuyItemCompleteAction')" />
						</td>
					</tr>
				</s:form>


		</div>


		<div id="footer">
			<ul>
				<li><a href='<s:url action="GoHomeAction" />'>ホーム画面へ戻る</a></li>
				<li>利用規約</li>
				<li>internous株式会社</li>
			</ul>
		</div>
	</body>
</html>
