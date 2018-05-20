<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<title>管理画面</title>
<style type="text/css">
body {
	background-image: url(./images/board.jpg);
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% auto;
}
.main{
	padding-top:5%;
}
.main h1{
	width:60%;
	margin:0 auto;
	margin-top:50px;
	text-align: center;
/* 	影をつけるボックスのプロパティです */
	border-left:1px solid black;
	border-bottom:1px solid black;
	border-radius:10px;
	background-color:rgba(255,255,255,0.5);
	box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
}
.product_container {
	float: left;
	width: 25%;
	margin: 0 4% 4% 4%;
	border: 1px solid black;
	border-left:1px solid black;
	border-bottom:1px solid black;
	border-radius:10px;
	background-color:rgba(255,255,255,0.5);
	box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
}
img {
	width: 50%;
	height: 50%;
	padding: 5px;
}
.product_info{
	text-align:center;

}
.button{
	width:40%;
	margin:0 auto;
	padding:2%;
}
.button input{
	width:100%;
}
</style>
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
					<div class="product_info"><img src='<s:property value="imageFilePath"/>' width="100"height="100" /> <br></div>
					<div class="product_info"><b><s:property value="productName" /></b><br></div>
					<div class="product_info"><s:property value="productNameKana" /><br></div>
					<div class="product_info"><s:property value="price" />円<br></div>
				</div>
			</s:iterator>
	</div>

</body>
</html>