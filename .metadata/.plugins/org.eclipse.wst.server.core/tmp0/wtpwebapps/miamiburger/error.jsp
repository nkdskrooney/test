<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5;URL=<s:url action="HomeAction"/>">
<title>エラー</title>
</head>
<body>
<h1>エラー</h1>
<h2>5秒後に<a href='<s:url action="HomeAction"/>'>Home</a>に戻ります。</h2>
</body>
</html>