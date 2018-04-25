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
<!-- main -->
		<div id="main">

			<div id="top">
				<p>商品一覧</p>
			</div>
			<div>
<!-- iterator -->
				<s:iterator value="itemList">
					<tr>
						<td>
							<s:property value="itemName" />
						</td>
						<td>
							<img class="item-img" src='<s:property value="imgAddress"/>'>
						</td>
						<td>
							<s:property value="itemPrice" />
							<span>円</span>
						</td>
						<td>
							<s:property value="itemStock" />
							<span>個</span>
						</td>


						<s:form action="BuyItemCartAction">
						<s:hidden name = "itemId" />
						<td>
							<select name="PurchaseNumber">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</td>
						<td>
							<input type="radio" name="pay" value="1" checked="checked">
								現金払い
							<input type="radio" name="pay" value="2">
								クレ ジットカード
						</td>
						<td><s:submit value="購入" /></td>
						</s:form>
					</tr>
				</s:iterator>
<!-- iterator -->
			</div>
			<div><form><p><a href='<s:url action="GoImageAction" />'>画像テスト</a></p></form></div>
		</div>

<!-- footer -->
		<div id="footer">
			<ul>
				<li><a href='<s:url action="GoHomeAction" />'>ホーム画面へ戻る</a></li>
				<li>利用規約</li>
				<li>internous株式会社</li>
			</ul>
		</div>
	</body>
</html>
