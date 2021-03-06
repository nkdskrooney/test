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
		<title>ユーザー情報変更画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- ユーザー情報変更 旧 -->
	<label>ユーザーID</label>
	<p><s:property value="session.old_userId" /></p>
	<label>姓</label>
	<p><s:property value="session.old_familyName" /></p>
	<label>名</label>
	<p><s:property value="session.old_firstName" /></p>
	<label>姓（かな）</label>
	<p><s:property value="session.old_familyNameKana" /></p>
	<label>名（かな）</label>
	<p><s:property value="session.old_firstNameKana" /></p>
	<label>性別</label>
	<p><s:property value="session.old_sex" /></p>
	<label>Eメール</label>
	<p><s:property value="session.old_email" /></p>
	<label>秘密の質問</label>
	<p><s:property value="session.old_secretQuestion" /></p>
	<label>答え</label>
	<p><s:property value="session.old_secretAnswer" /></p>

	<h3>↓</h3>

<!-- ユーザー情報変更 新 -->
	<label>ユーザーID</label>
	<p><s:property value="session.new_userId" /></p>
	<label>姓</label>
	<p><s:property value="session.new_familyName" /></p>
	<label>名</label>
	<p><s:property value="session.new_firstName" /></p>
	<label>姓（かな）</label>
	<p><s:property value="session.new_familyNameKana" /></p>
	<label>名（かな）</label>
	<p><s:property value="session.new_firstNameKana" /></p>
	<label>性別</label>
	<p><s:property value="session.new_sex" /></p>
	<label>Eメール</label>
	<p><s:property value="session.new_email" /></p>
	<label>秘密の質問</label>
	<p><s:property value="session.new_secretQuestion" /></p>
	<label>答え</label>
	<p><s:property value="session.new_secretAnswer" /></p>

	<p><a href='<s:url action="UserUpdateCompleteAction" />'>変更完了</a></p>

<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>
	<p><a href='<s:url action="UserUpdateAction" />'>変更画面へ戻る</a></p>

	</body>
</html>