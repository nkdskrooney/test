<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>登録完了画面</title>
<link rel="stylesheet" type="text/css" href="miamiburger.css">
<link rel="stylesheet" type="text/css" href="userCreateComplete.html">

<style type="text/css">

/*================LAYOUT==============*/
body {
	background-image: url(./images/board.jpg);
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% auto;
}
.inner{
	margin:auto;
	width:80%;
	height:80%;
/* 	影をつけるボックスのプロパティです */
	border-left:1px solid black;
	border-bottom:1px solid black;
	border-radius:10px;
	background-color:rgba(255,255,255,0.5);
	box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
}
/* .UCComplete{
	border: 3px solid blue;
} */
.UCComplete-text{
	padding-top: 15%;
	text-align: center ;
}
.UCComplete-gohome{
	padding-top: 10%;
	padding-bottom:10%;
	text-align: center ;
}

</style>
</head>
<body>

<div><jsp:include page="header.jsp"/></div>

<div class="main">
<div class="inner">
<div class="UCComplete">

       <div class="UCComplete-text">
          <h3>ユーザーの登録が完了しました。</h3></div>



<div class="UCComplete-gohome"><a href=<s:url action="HomeAction"/>>ホームへ戻る</a></div>

</div>
</div>
</div>

</body>
</html>