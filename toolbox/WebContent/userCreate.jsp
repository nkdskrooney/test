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
		<link rel="stylesheet" type="text/css" href="./css/contentsBox.css">
		<title>UserCreate</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>UserCreate</h1>
			<div class="inner">
			<s:form action="UserCreateConfirmAction">
				<div class="box">
				<b>ユーザーID:</b><input type="text" name="userId" value="guestuser" /><br>
				<b>パスワード:</b><input type="text" name="password" value="guestuser" /><br>
				<b>ユーザー名:</b><input type="text" name="userName" value="山田太郎" /><br>
				<b>ユーザー名(ふりがな):</b><input type="text" name="userNameKana" value="やまだたろう" /><br>
				<b>性別:</b>
				<s:if test="sex==0">
					<input type="radio" name="sex" value="0" checked="checked">男
					<input type="radio" name="sex" value="1">女
				</s:if>
				<s:elseif test="sex==1">
					<input type="radio" name="sex" value="0">男
					<input type="radio" name="sex" value="1" checked="checked">女
				</s:elseif>
				<s:else>
					<input type="radio" name="sex" value="0" checked="checked">男
					<input type="radio" name="sex" value="1">女
				</s:else>
				<br><b>メールアドレス:</b><input type="text" name="email" value="guestuser@gmail.com" /><br>

				<input type="submit" value="登録"/>
				</div>
			</s:form>
			<div class="clear"></div>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
