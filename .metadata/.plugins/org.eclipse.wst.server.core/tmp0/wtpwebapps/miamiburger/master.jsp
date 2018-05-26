<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
if(!(session.getAttribute("admin") == "admin")){
  out.println("本ページへのアクセスは認められていません");
  out.close();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="./css/master.css">
<title>管理画面</title>
<style type="text/css"></style>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="main">
		<h1>管理画面</h1>
		<div class="button">
			<input type="button"
				onclick="location.href='<s:url action="MasterAddAction" />'"
				value="新商品追加" />
			<br>
		</div>
		<!-- 商品一覧 -->
			<s:iterator value="productInfoList">
				<div class="product_container">
					<img src='<s:property value="imageFilePath"/>'/> <br>
					<b><s:property value="productName" /></b><br>
					<s:property value="productNameKana" /><br>
					<s:property value="price" />円<br>
				</div>
			</s:iterator>
	</div>
<jsp:include page="footer.jsp" />
</body>
</html>