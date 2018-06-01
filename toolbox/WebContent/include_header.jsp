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
		<link rel="stylesheet" href="./css/global.css">
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<div class="header">
			<div class="logo">
				<a href='<s:url action="HomeAction" />'><span>toolbox.</span></a>
			</div>
			<ul>
				<li>ようこそ
				<s:if test="#session.loginUser.LoginFlg == true">
					<s:property value="#session.loginUser.UserName"/>
				</s:if>
				<s:else>ゲスト</s:else>
				様
				</li>
				<s:if test="#session.loginUser.LoginFlg == true">
				<li><a href='<s:url action="CartSelectAction" />'>カート</a></li>
				<li><a href='<s:url action="MyPageAction" />'>マイページ</a></li>
				<li><a href='<s:url action="LogoutAction" />'>ログアウト</a></li>
				</s:if>
				<s:else>
				<li><a href='<s:url action="CartSelectAction" />'>カート</a></li>
				<li><a href='<s:url action="LoginGoAction" />'>ログイン</a></li>
				<li><a href='<s:url action="UserCreateAction" />'>新規ユーザー登録</a></li>
				</s:else>

			</ul>
			<div class="clear"></div>
		</div>
	</body>
</html>
