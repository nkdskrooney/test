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
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div id="main">
		<h2>アップロード結果</h2>
		画像：<s:property value="userImage"/><br>/
		Content Type:<s:property value="userImageContentType"/><br/>
		ファイル名：<s:property value="userImageFileName"/><br/>
		画像イメージ：<img src="img/<s:property value="userImageFileName"/>" width="100" height="100"/>

		</div>
<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
