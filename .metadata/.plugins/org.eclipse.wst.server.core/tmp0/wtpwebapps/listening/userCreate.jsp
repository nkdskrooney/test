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
		<title>UserCreate</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">
			<div id="top">
			<p>UserCreate</p>
			</div>
				<div>
				<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
				</s:if>
				<table>
					<s:form action="UserCreateConfirmAction">
						<tr>
							<td>
								<label>ログインID:</label>
							</td>
							<td><input type="text" name="LoginId" value="" /></td>
						</tr>
						<tr>
							<td>
								<label>ログインPASS:</label>
							</td>
							<td><input type="text" name="LoginPassword" value="" /></td>
						</tr>
						<tr>
							<td>
								<label>ユーザー名:</label>
							</td>
							<td><input type="text" name="UserName" value="" /></td>
						</tr>
						<tr>
							<td>
								<label>メールアドレス:</label>
							</td>
							<td><input type="text" name="WebAddress" value="" /></td>
						</tr>
						<tr>
							<td>
								<label>住所:</label>
							</td>
							<td><input type="text" name="Address" value="" /></td>
						</tr>
						<s:submit value="登録"/>
					</s:form>
				</table>

			</div>

		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>