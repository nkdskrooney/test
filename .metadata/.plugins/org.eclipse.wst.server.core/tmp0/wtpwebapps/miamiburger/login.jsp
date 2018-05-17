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
<title>ログイン</title>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="header.jsp" />

<h2>ログイン</h2>
<s:if test ='!(errorMassage == "")'>
<s:property value="errorMessage"/>
</s:if>
<s:form action="GoLoginAction">

<input type="checkbox" value =1 name ="idCheck" checked="checked"/><span>ログインID保存</span><br><br>

<s:if test ="#session.idCheck == 1">
	<span>ログインID：</span><input type="text" name="userId" size="5" value='<s:property value ="#session.userId" />'><br>

</s:if>
<s:else>
	<span>ログインID：</span><input type="text" name="userId" size="5" ><br>
</s:else>
<span>パスワード：</span><input type="password" name="password" size="5"><br>
<s:submit value="送信"/>
</s:form>
<p>パスワードを忘れたら？</p>
<a href="<s:url action="ChangePasswordAction"/>">こちらで再設定しましょう。</a><br>
<a href="<s:url action="UserCreateAction"/>">新規ユーザー登録</a><br>

</body>
</html>