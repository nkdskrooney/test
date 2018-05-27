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
		<title>UserCreate</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">

			<h1>UserCreate</h1>

				<table>
					<s:form action="UserCreateConfirmAction">
						<tr>
							<td><b>ユーザーID:</b></td>
							<td><input type="text" name="userId" value="" /></td>
						</tr>
						<tr>
							<td><b>パスワード:</b></td>
							<td><input type="text" name="password" value="" /></td>
						</tr>
						<tr>
							<td><b>ユーザー名:</b></td>
							<td><input type="text" name="userName" value="" /></td>
						</tr>
						<tr>
							<td><b>ユーザー名(ふりがな):</b></td>
							<td><input type="text" name="userNameKana" value="" /></td>
						</tr>
						<tr><td><b>性別:</b></td>
							<s:if test="sex==0">
								<span>
									<input type="radio" name="sex" value="0" checked="checked">男
									<input type="radio" name="sex" value="1">女
								</span>
							</s:if>
							<s:elseif test="sex==1">
								<span>
									<input type="radio" name="sex" value="0">男
									<input type="radio" name="sex" value="1" checked="checked">女
								</span>
							</s:elseif>
							<s:else>
								<span>
									<input type="radio" name="sex" value="0" checked="checked">男
									<input type="radio" name="sex" value="1">女
								</span>
							</s:else>
						</tr>
						<tr>
							<td><b>メールアドレス:</b></td>
							<td><input type="text" name="email" value="" /></td>
						</tr>

						<s:submit value="登録"/>
					</s:form>
				</table>

			</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
