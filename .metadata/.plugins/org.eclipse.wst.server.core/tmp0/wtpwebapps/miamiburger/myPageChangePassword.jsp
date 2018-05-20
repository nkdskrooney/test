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
		<title>ユーザー情報変更画面</title>
		<style type="text/css">

		body {
			background-image: url(./images/board.jpg);
			background-attachment: fixed;
			background-size: cover;
			background-size: 100% auto;
		}
		.inner{
			margin:5% 20% 5% 20%;
			text-align:center;
			float:left;
			width: 60%;
			height: 70%;
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.main{
			padding-top:5%;
		}
		.main h1{
			width:60%;
			margin:0 auto;
			margin-top:50px;
			text-align: center;
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.character{
			padding-top:4%;
			padding-bottom:2%;
			text-align:center;
		}

		</style>
	</head>
	<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="main">
		<h1>パスワード変更</h1>
		<div class="inner">
		<!-- ユーザー情報変更フォーム -->
			<div class="character">
				<b>旧パスワード</b><br>
			<div class="character">
				<s:property value="session.passCon"/>
			</div>
			</div>
			<div class="character">
				<b>新規パスワード</b>
			</div>
				<s:form action="MyPageChangePasswordCompleteAction">
			<div class="character">
				<b>1回目</b>
				<input type="password" name="new_password_1" placeholder=" 半角英数字 " maxlength="16"><br>
			</div>
			<div class="character">
				<b>2回目</b>
				<input type="password" name="new_password_2" placeholder=" 半角英数字 " maxlength="16"><br>
			</div>
			<div class="character">
				<s:if test="errorPass!=null">
					<s:property value="errorPass" />
				</s:if>
			</div>

			<s:submit value="パスワード変更完了"/>

			</s:form>
		</div>
	</div>

<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>

	</body>
</html>