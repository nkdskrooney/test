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
		<title>ユーザー情報変更入力画面</title>
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
		.user_info{
			margin:0 auto;
		}
		.character{
			padding-top:4%;
			padding-bottom:3%;
			text-align:center;
		}


		</style>
	</head>
	<body>
		<div class="header">
			<jsp:include page="header.jsp" />
		</div>
	<div class="main">
		<h1>ユーザー情報変更</h1>
		<div class="inner">
			<s:form action="UserUpdateConfirmAction">
				<table class="user_info">
					<tr>
						<td class="character"><b>姓:</b>※16文字以内</td>
						<td class="character"><input name="new_familyName" maxlength="16" value="<s:property value="session.new_familyName" />"></td>
					</tr>
					<tr>
						<td class="character"><b>名:</b>※16文字以内</td>
						<td class="character"><input name="new_firstName" maxlength="16" value="<s:property value="session.new_firstName" />"></td>
					</tr>
					<tr>
						<td class="character"><s:if test="errorName!=null">
						<s:property value="errorName" />
						</s:if></td>
					</tr>
					<tr>
						<td class="character"><b>姓（かな）:</b>※16文字以内</td>
						<td class="character"><input name="new_familyNameKana" maxlength="16" value="<s:property value="session.new_familyNameKana" />"></td>
					</tr>
					<tr >
						<td class="character"><b>名（かな）:</b>※16文字以内</td>
						<td class="character"><input name="new_firstNameKana" maxlength="16" value="<s:property value="session.new_firstNameKana" />"></td>
					</tr>
					<tr>
						<td class="character"><s:if test="errorNameKana!=null">
						<s:property value="errorNameKana" />
						</s:if></td>
					</tr>
					<tr>
						<td class="character"><b>性別:</b></td>
							<s:if test="session.get('new_sex') == 0 ">
								<td><input type="radio" name="new_sex" value="0" checked>男性</td>
								<td><input type="radio" name="new_sex" value="1">女性</td>
								</s:if>
							<s:else>
								<td><input type="radio" name="new_sex" value="0">男性</td>
								<td><input type="radio" name="new_sex" value="1" checked>女性</td>
							</s:else>
					</tr>
					<tr>
						<td class="character"><b>Eメール</b>※14文字～32文字</td>
						<td class="character"><input name="new_email" maxlength="32" value="<s:property value="session.new_email" />"></td>
						<td class="character"><s:if test="errorEmail!=null"><s:property value="errorEmail" /></s:if></td>
					</tr>
					<tr>
						<td class="character"><b>秘密の質問</b></td>
							<td class="character"><s:if test="session.new_secretQuestion==1">
							<select name="new_secretQuestion" >
								<option value="1" selected>好きな食べ物</option>
								<option value="2">好きな動物</option>
							</select>
							</s:if>
							<s:elseif test="session.new_secretQuestion==2">
							<select name="new_secretQuestion" >
								<option value="1">好きな食べ物</option>
								<option value="2" selected>好きな動物</option>
							</select>
							</s:elseif></td>
					</tr>
					<tr>
						<td class="character"><b>秘密の答え</b></td>
						<td class="character"><input name="new_secretAnswer" maxlength="10" value="<s:property value="session.new_secretAnswer" />"></td>
						<td class="character"><s:if test="errorAnswer!=null">
							<s:property value="errorAnswer" />
						</s:if></td>
					</tr>
					<tr>
						<td></td>
						<td><br></td>
						<td ><s:submit value="確認画面へ"/></td>
					</tr>
				</table>
			</s:form>
		</div>
	</div>

<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>

	</body>
</html>