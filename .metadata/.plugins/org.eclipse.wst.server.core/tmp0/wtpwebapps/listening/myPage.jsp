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
				<p>マイページ</p>
			</div>
			<div>
<!-- 購入履歴がない場合 -->
				<s:if test="myPageList == null">
					<h3>ご購入情報はありません。</h3>
				</s:if>
<!-- 削除ボタン後のメッセージがない場合 -->
				<s:elseif test="message == null">
					<h3>ご購入情報は以下になります。</h3>
					<table border="1">
						<tr>
							<th>商品名</th>
							<th>値段</th>
							<th>購入個数</th>
							<th>支払い方法</th>
							<th>購入日</th>
						</tr>
						<s:iterator value="myPageList">
							<tr>
								<td>
									<s:property value="itemName" />
								</td>
								<td>
									<s:property value="totalPrice" />
									<span>円</span>
								</td>
								<td>
									<s:property value="totalCount" />
									<span>個</span>
								</td>
								<td>
									<s:property value="payment" />
								</td>
								<td>
									<s:property value="insert_date" />
								</td>
							</tr>
							</s:iterator>
					</table>
					<!-- 削除ボタン -->
					<s:form action="MyPageAction">
						<input type="hidden" name="deleteFlg" value="1">
						<s:submit value="削除" method="delete" />
					</s:form>
				</s:elseif>
<!-- 削除ボタン後のメッセージがある場合 -->
				<s:if test="message != null">
					<h3><s:property value="message"/></h3>
				</s:if>
<!-- リンク・ログアウト -->
				<div id="text-right">
					<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
					<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
				</div>
			</div>
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
