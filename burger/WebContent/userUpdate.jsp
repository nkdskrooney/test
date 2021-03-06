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
<!-- ユーザー情報変更フォーム -->
	<s:form action="UserUpdateConfirmAction">
	<label>ユーザーID</label>
	<input name="new_userId"value="<s:property value="session.new_userId" />"><br>
	<label>姓</label>
	<input name="new_familyName"value="<s:property value="session.new_familyName" />"><br>
	<label>名</label>
	<input name="new_firstName"value="<s:property value="session.new_firstName" />"><br>
	<label>姓（かな）</label>
	<input name="new_familyNameKana"value="<s:property value="session.new_familyNameKana" />"><br>
	<label>名（かな）</label>
	<input name="new_firstNameKana"value="<s:property value="session.new_firstNameKana" />"><br>
	<label>性別</label>
	<input name="new_sex"value="<s:property value="session.new_sex" />"><br>
	<label>Eメール</label>
	<input name="new_email"value="<s:property value="session.new_email" />"><br>
	<label>秘密の質問</label>
	<input name="new_secretQuestion"value="<s:property value="session.new_secretQuestion" />"><br>
	<label>答え</label>
	<input name="new_secretAnswer"value="<s:property value="session.new_secretAnswer" />"><br>
	<s:submit value="確認画面へ"/>
	</s:form>


<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>

	</body>
</html>