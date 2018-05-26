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
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel= javascript type= text/javascript href="./miamiburger.js">
<title>ログイン</title>
</head>
<body>
<div class="wrapper">
<div class="header">
	<jsp:include page="header.jsp" />
</div>
<div class="main">
	<h1>LOGIN</h1><br>
	<div class="inner">
		<s:if test ='!(errorMassage == "")'>
			<s:property value="errorMessage"/>
		</s:if>
		<s:form action="GoLoginAction">

			<s:if test ="#session.idCheck == 1">
				<div id="login"><span></span><input id="form" type="text" name="userId" size="15" placeholder="username" value='<s:property value ="#session.userId" />'><br></div>
			</s:if>
			<s:else>
				<div id="login"><span></span><input id="form" type="text" name="userId" size="15" placeholder="username">
					<s:if test="!(errorId.equals(''))">
						<span class="error">エラー 詳細はこちら</span><span class="tooltip"><s:property value ="errorId" /></span>
					</s:if>
				</div>
			</s:else>

				<div id="login"><span></span><input id="form" type="password" name="password" size="15" placeholder="password">
					<s:if test="!(errorPass.equals(''))">
						<span class="error">エラー 詳細はこちら</span><span class="tooltip"><s:property value ="errorPass" /></span>
					</s:if>
				</div>

				<div id="login"><input type="checkbox" value =1 name ="idCheck" checked="checked"/><span>ログインID保存</span><br><br></div>



			<input id="submit_button" type="submit" value="LOGIN"/><br>
		</s:form>
		<div id="login"><p>パスワードを忘れたら？</p></div>
		<div id="login"><a href="<s:url action="ChangePasswordAction"/>">こちらで再設定しましょう。</a><br><br></div>
		<div id="login"><a href="<s:url action="UserCreateAction"/>">新規ユーザー登録</a><br></div>
	</div>
</div>
<div class="push"></div>
</div>
<jsp:include page="footer.jsp" />

<script>
		$(function(){
			$('span.tooltip').css({
				opacity:'0.9',
				position:'absolute',
				display:'none'
			});
			$('span.error').mouseover(function(){
				$(this).parent().find('span.tooltip').fadeIn();
			}).mouseout(function(){
				$(this).parent().find('span.tooltip').fadeOut();
			}).mousemove(function(e){
				$(this).parent().find('span.tooltip').css({
					"top":(e.pageY)+10+"px",
					"left":(e.pageX )+10+"px"
				});
			});
		});
</script>

</body>
</html>


