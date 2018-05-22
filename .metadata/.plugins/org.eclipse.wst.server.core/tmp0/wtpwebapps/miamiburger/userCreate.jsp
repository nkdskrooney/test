<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8">
<title>ユーザー情報入力画面</title>
<link rel="stylesheet" type="text/css" href="miamiburger.css">
<link rel="stylesheet" type="text/css" href="userCreate.html">

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
/* .UC{
	border: 3px solid blue;
} */
.UC-text{
	padding-left: 15%;
}
.UC-form{
	padding-left: 25%;
}
.errorBox{
 	border:1px solid black;
	width:300px;
	height:50px;
	overflow:scroll;
}
.button{
	text-align:center;
}


</style>

</head>
<body>

	<div><jsp:include page="header.jsp" /></div>

	<div class="main">
		<div class="inner">
			<div class="UC">

			<div class="UC-text">
				<h1>新規ユーザー登録</h1>
				<p>情報を入力してください</p>
			</div>


			<div class="UC-form">
				<s:form action="UserCreateConfirmAction">

					<!-- ユーザーID -->
				<table>
					<tr>
						<th>ユーザーID</th>
						<td><input type="text" name="userId" placeholder=" 半角英数字 "
							<s:if test="errorId.equals('')"> value=<s:property value="#session.userId"/></s:if>
							maxlength="8" />※8文字以内</td>
						<td class="error">
							<s:if test="errorId!=null">
								<div class="errorBox">
									<s:property value="errorId" />
								</div>
							</s:if>
						</td>
					</tr>


					<!-- パスワード -->

					<tr>
						<th>パスワード</th>
						<td><input type="password" name="password"
							placeholder=" 半角英数字 " maxlength="16" />※16文字以内</td>
						<td class="error">
							<s:if test="errorPass!=null">
								<div class="errorBox">
									<s:property value="errorPass" />
								</div>
							</s:if>
						</td>
					</tr>

					<!-- パスワード確認 -->

					<tr>
						<th>パスワード確認用</th>
						<td><input type="password" name="checkPassword"
							placeholder=" 半角英数字 " maxlength="16" />※16文字以内
						<td class="error">
							<s:if test="errorCheck!=null">
								<div class="errorBox">
									<s:property value="errorCheck" />
								</div>
							</s:if>
						</td>
					</tr>

					<!-- 名前 -->

					<tr>
						<th>名前（姓）</th>
						<td><input type="text" name="familyName" placeholder=" 漢字,ひらがな,半角英字 " maxlength="16"
							<s:if test="errorName.equals('')">value=<s:property value="#session.familyName"/>
							</s:if> />※16文字以内
						</td>
					</tr>

					<tr>
						<th>名前（名）</th>
						<td><input type="text" name="firstName"
							placeholder=" 漢字,ひらがな,半角英字 " maxlength="16"
							<s:if test="errorName.equals('')">value=<s:property value="#session.firstName"/></s:if> />※16文字以内
						</td>
						<td class="error">
							<s:if test="errorName!=null">
								<div class="errorBox">
									<s:property value="errorName" />
								</div>
							</s:if>
						</td>
					</tr>

					<!-- なまえ -->

					<tr>
						<th>ふりがな（姓）</th>
						<td><input type="text" name="familyNameKana"
							placeholder=" ひらがな" maxlength="16"
							<s:if test="errorNameKana.equals('')">value=<s:property value="#session.familyNameKana"/></s:if> />※16文字以内
						</td>
					</tr>

					<tr>
						<th>ふりがな（名）</th>
						<td><input type="text" name="firstNameKana" maxlength="16"
							placeholder=" ひらがな"
							<s:if test="errorNameKana.equals('')">value=<s:property value="#session.firstNameKana"/></s:if> />※16文字以内
						</td>
						<td class="error">
							<s:if test="errorNameKana!=null">
								<div class="errorBox">
									<s:property value="errorNameKana" />
								</div>
							</s:if></td>
					</tr>

					<!-- 性別 -->
					<tr>
						<th>性別</th>
						<td><s:if test="sex==0">
								<span> <input type="radio" name="sex" value="0"checked="checked">男
										<input type="radio" name="sex"value="1">女
								</span>
							</s:if> <s:elseif test="sex==1">
								<span> <input type="radio" name="sex" value="0">男
										<input type="radio" name="sex" value="1" checked="checked">女
								</span>
							</s:elseif> <s:else>
								<span> <input type="radio" name="sex" value="0"checked="checked">男
										<input type="radio" name="sex"value="1">女
								</span>
							</s:else></td>
					</tr>


					<!-- メールアドレス -->


					<tr>
						<th>メールアドレス</th>
						<td><input type="text" name="email" placeholder=" 半角英数字,記号 " maxlength="32"
							<s:if test="errorEmail.equals('')">value=<s:property value="#session.email"/>
							</s:if> />※14文字～32文字
						</td>
						<td class="error">
							<s:if test="errorEmail!=null">
								<div class="errorBox">
									<s:property value="errorEmail" />
								</div>
							</s:if>
						</td>
					</tr>




					<!-- 秘密の質問 -->
					<tr>
						<th>秘密の質問</th>
						<td><s:if test="secretQuestion==1">
								<select name="secretQuestion" class="form">
									<option value=null>選択してください</option>
									<option value="1" selected>好きな食べ物</option>
									<option value="2">好きな動物</option>
								</select>
							</s:if> <s:elseif test="secretQuestion==2">
								<select name="secretQuestion" class="form">
									<option value=null>選択してください</option>
									<option value="1">好きな食べ物</option>
									<option value="2" selected>好きな動物</option>
								</select>
							</s:elseif> <s:else>
								<select name="secretQuestion" class="form">
									<option value=null>選択してください</option>
									<option value="1">好きな食べ物</option>
									<option value="2">好きな動物</option>
								</select>
							</s:else></td>
						<td class="error">
							<s:if test="errorQuestion!=null">
								<div class="errorBox">
									<s:property value="errorQuestion" />
								</div>
							</s:if>
						</td>
					</tr>

					<!-- 質問の答え -->


					<tr>
						<th>質問の答え</th>
						<td><input type="text" name="secretAnswer" maxlength="10"
							<s:if test="errorAnswer.equals('')">value=<s:property value="#session.secretAnswer"/>
							</s:if> />※10文字以内
						</td>
						<td class="error">
							<s:if test="errorAnswer!=null">
								<div class="errorBox">
									<s:property value="errorAnswer" />
								</div>
							</s:if>
						</td>
					</tr>
				</table>

				<div class="button">
					<s:submit value="登録確認" />
				</div>



				</s:form>
			</div>
		</div>
	</div>
</div>

</body>

</head>
<body>

</body>
</html>