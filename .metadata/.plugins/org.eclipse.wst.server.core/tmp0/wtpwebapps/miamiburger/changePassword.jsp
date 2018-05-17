<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"type="text/css"href="">
<title>パスワード変更</title>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="header.jsp" />
<h2>秘密の質問に答えてください</h2>

<s:if test = "!(errorMessage.isEmpty())">
	<s:property value ="errorMessage" />
</s:if>

<s:form action ="ChangePasswordConfirmAction">


<span>あなたのログインID：</span><input type="text" name="userId" size="8"><span>1文字以上8文字以下</span>
		<s:if test="errorId!=null">
				<s:property value="errorId" />
		</s:if>
		<br>

<span>秘密の質問：</span>
		<select name="secretQuestion">
		<option value = "1">好きな食物</option>
		<option value = "2">好きな生物</option>
		</select>
		<br>

		<span>秘密の質問の答え：</span><input type= "text" name="secretAnswer" value =""><span>1文字以上10文字以下</span>
		<s:if test="errorAnswer!=null">
				<s:property value="errorAnswer" />
		</s:if>
		<br>


		<span>パスワード：</span><input type= "password" name="password1" value =""><span>1文字以上16文字以下</span>
		<s:if test="errorPass!=null">
				<s:property value="errorPass" />
		</s:if>
		<br>

		<span>再確認パスワード：</span><input type= "password" name="password2" value =""><span>1文字以上16文字以下</span>
		<s:if test="errorRePass!=null">
			<s:property value="errorRePass" /><br>
		</s:if>
		<br>

		<s:submit value="送信"/>
	</s:form>
</html>