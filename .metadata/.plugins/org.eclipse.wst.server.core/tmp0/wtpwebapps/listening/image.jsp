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
		<title>image</title>
		<style type="text/css">
		.img-form{
			width: 90%;
			border: 0;
			cellspacing: 2;
			cellpadding: 3;
			align=: center;
		}
		</style>
	</head>
	<body>

	<h2>Struts2ファイルアップデートサンプル</h2>
	<s:form action="FileUploadAction" method="post" enctype="multipart/form-data">
	<s:file name="userImage" label="画像" />
	<s:submit value="アップロード" align="center" />
	</s:form>
	</body>
</html>
