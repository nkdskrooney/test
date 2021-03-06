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
		<title>MyPage画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- ユーザー情報 -->
	<label>ユーザーID</label>
	<p><s:property value="session.new_userId" /></p>
	<label>姓</label>
	<p><s:property value="session.new_familyName" /></p>
	<label>名</label>
	<p><s:property value="session.new_firstName" /></p>
	<label>性別</label>
	<p><s:property value="session.new_sex" /></p>
	<label>Eメール</label>
	<p><s:property value="session.new_email" /></p>
	<label>秘密の質問</label>
	<p><s:property value="session.new_registDate" /></p>
	<label>答え</label>
	<p><s:property value="session.new_updatedDate" /></p>
<!-- 購入履歴画面への遷移 -->
	<p>購入履歴</p>
<!-- ユーザー情報変更画面への遷移 -->
	<p><a href='<s:url action="UserUpdateAction" />'>ユーザー情報変更</a></p>
<!-- パスワード再設定画面への遷移 -->
	<p><a href='<s:url action="ChangePasswordAction" />'>パスワード変更</a></p>
	</body>
</html>
