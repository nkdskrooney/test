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
		<title>UserCreateConfirm</title>
		<style type="text/css"></style>
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
				<p>UserCreateConfirm</p>
			</div>
			<div>
				<h3>登録する内容は以下でよろしいですか。</h3>
				<table>
					<s:form action="UserCreateCompleteAction">
						<tr id="box">
							<td>
								<label>ログインID:</label>
							</td>
							<td>
								<s:property value="LoginId" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>ログインPASS:</label>
							</td>
							<td>
								<s:property value="LoginPassword" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>ユーザー名:</label>
							</td>
							<td>
								<s:property value="UserName" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>メールアドレス:</label>
							</td>
							<td>
								<s:property value="WebAddress" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>住所:</label>
							</td>
							<td>
								<s:property value="Address" escape="false" />
							</td>
						</tr>
						<tr>
							<td>
								<s:submit value="完了" />
							</td>
						</tr>
					</s:form>
				</table>
			</div>

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