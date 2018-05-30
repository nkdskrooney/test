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
		<title>登録画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>-　UserCreateConfirm　-</h1>
			<div class="inner">
				<div class="box">
				<h3>登録する内容は以下でよろしいですか。</h3>
					<s:form action="UserCreateCompleteAction">
						<b>ユーザーID:</b><s:property value="session.userId" escape="false" /><br>
						<b>パスワード:</b><s:property value="session.password" escape="false" /><br>
						<b>ユーザー名:</b><s:property value="session.userName" escape="false" /><br>
						<b>ユーザー名(ふりがな):</b><s:property value="session.userNameKana" escape="false" /><br>
						<b>性別:</b><s:property value="session.sexName" escape="false" /><br>
						<b>メールアドレス:</b><s:property value="session.email" escape="false" /><br>

						<input type="submit" value="完了" />
					</s:form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
