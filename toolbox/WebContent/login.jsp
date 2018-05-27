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
		<link rel="stylesheet" type="text/css" href="./css/contents.css">
		<title>LOGIN</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">

			<div id="top">
				<p>Login</p>
			</div>
			<div>
				<h3>商品を購入する際にはログインをお願いします。</h3>
				<s:form action="LoginAction">
					<input type="text" name="loginUserId">
					<input type="text" name="loginPassword">
					<s:submit value="ログイン"/>
				</s:form>
				<br/>
				<div id="text-link">
					<p>新規ユーザー登録は <a href='<s:url action="UserCreateAction" />'>こちら</a></p>
					<p>Homeへ戻る場合は <a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				</div>
			</div>

		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>

	</body>
</html>
