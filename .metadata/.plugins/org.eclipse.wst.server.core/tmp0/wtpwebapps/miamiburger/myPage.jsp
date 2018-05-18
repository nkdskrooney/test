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
<title>MyPage画面</title>
<style type="text/css">
body {
	background-image: url(./images/board.jpg);
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% auto;
}
.inner{
	margin:5% 20% 5% 20%;
	float:left;
	width: 60%;
	height: 50%;
/* 	影をつけるボックスのプロパティです */
	border-left:1px solid black;
	border-bottom:1px solid black;
	border-radius:10px;
	background-color:rgba(255,255,255,0.5);
	box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
}
.main{
	padding-top:2%;
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
.user_info{
	margin:10%;
}
.user_info p{
	font-size:20px;
	padding-bottom:3%;
}
.character{
	padding:3%;
}
.character b{
	padding-right:1%;
}
.button{
	margin:10%;
}
.button input{
	width:30%;
	margin:3%;
}
</style>
</head>
<body>
		<div class="header">
			<jsp:include page="header.jsp" />
		</div>
		<div class="main">
			<h1>―マイページ―</h1>
			<div class="inner">
				<div class="user_info">
					<p>■　ユーザー情報</p>
					<div class="character">
						<b>姓:</b><s:property value="session.new_familyName" /><b>　名:</b><s:property value="session.new_firstName" />
					</div>
					<div class="character">
						<b>ふりがな:</b><s:property value="session.new_familyNameKana" /><s:property value="session.new_firstNameKana" />
					</div>
					<div class="character">
						<b>性別:</b><s:property value="session.old_sex_Name" />
					</div>
					<div class="character">
						<b>メールアドレス:</b><s:property value="session.new_email" />
					</div>
				</div>
				<div class="button">
				<!-- ユーザー情報変更画面への遷移 -->
				<input type="button"
					onclick="location.href='<s:url action="UserUpdateAction" />'"
					value="ユーザー情報変更" /><br>

				<!-- パスワード再設定画面への遷移 -->
				<input type="button"
					onclick="location.href='<s:url action="MyPageChangePasswordAction" />'"
					value="パスワード変更" /><br>

				<!-- 購入履歴画面への遷移 -->
				<input type="button"
					onclick="location.href='<s:url action="PurchaseHistoryAction" />'"
					value="購入履歴" /><br>
				</div>
			</div>
		</div>
</body>
</html>
