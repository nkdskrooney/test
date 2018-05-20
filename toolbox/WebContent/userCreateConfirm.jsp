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
		<title>登録画面</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">
			<div id="top">
				<p>UserCreateConfirm</p>
			</div>
			<div>
				<h3>登録する内容は以下でよろしいですか。</h3>
				<table>
					<s:form action="UserCreateCompleteAction">
						<tr>
							<td><b>ユーザーID:</b></td>
							<td><s:property value="session.userId" escape="false" /></td>
						</tr>
						<tr>
							<td><b>パスワード:</b></td>
							<td><s:property value="session.password" escape="false" /></td>
						</tr>
						<tr>
							<td><b>ユーザー名:</b></td>
							<td><s:property value="session.userName" escape="false" /></td>
						</tr>
						<tr>
							<td><b>ユーザー名(ふりがな):</b></td>
							<td><s:property value="session.userNameKana" escape="false" /></td>
						</tr>
						<tr>
							<td><b>性別:</b></td>
							<td><s:property value="session.sexName" escape="false" /></td>
						</tr>
						<tr>
							<td><b>メールアドレス:</b></td>
							<td><s:property value="session.email" escape="false" /></td>
						</tr>

						<tr>
							<td><s:submit value="完了" /></td>
						</tr>
					</s:form>
				</table>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
