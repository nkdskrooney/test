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

	<form action="ImageUploadAction" method="post" enctype="multipart/form-data">
	<table class="img-form" >
            <tr bgcolor="f5f5f5">
                <td width="22%">
                    <div align="right">画像：</div>
                </td>
                <td width="78%">
			<input type="file" name="myfile"/>
                </td>
            </tr>
        </table>

	<input type="submit" value="画像をアップロードする">
	</form>

	</body>
</html>
