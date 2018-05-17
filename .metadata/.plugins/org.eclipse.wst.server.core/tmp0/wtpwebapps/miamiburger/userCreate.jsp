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
<title>新規登録</title>

</head>
<body>

<jsp:include page="header.jsp" />

	<h2>ユーザー登録</h2>
	<p>情報を入力してください</p>


	<s:form action="UserCreateConfirmAction">

		<!-- ユーザーID -->

		<div class="form-text">ログインID</div>
		<span> <input type="text" name="userId" placeholder="半角英数字 " maxlength="8" value=<s:property value="session.userId" /> >※8文字以内
		</span>
		<s:if test="errorId!=null">
				<s:property value="errorId" />
		</s:if>

		<!-- パスワード -->

		<div class="form-text">パスワード</div>
		<span><input type="password" name="password"
			placeholder=" 半角英数字 " maxlength="16" >※16文字以内</span>
		<s:if test="errorPass!=null">
			<s:property value="errorPass" />
		</s:if>


		<!-- 名前 -->

		<div class="form-text">姓</div>
		<span><input type="text" name="familyName"
			placeholder=" 漢字,ひらがな,半角英字 " maxlength="16" value=<s:property value="session.familyName"/> >※16文字以内 </span>
		<s:if test="errorSei!=null">
				<s:property value="errorSei" />
		</s:if>

		<div class="form-text">名</div>
		<span><input type="text" name="firstName"
			placeholder=" 漢字,ひらがな,半角英字 " maxlength="16" value=<s:property value="session.firstName"/> >※16文字以内 </span>
		<s:if test="errorMei!=null">
				<s:property value="errorMei" />
		</s:if>

		<!-- なまえ -->

		<div class="form-text">姓ふりがな</div>
		<span><input type="text" name="familyNameKana"
			placeholder=" ひらがな" maxlength="16" value=<s:property value="session.familyNameKana"/> >※16文字以内</span>
		<s:if test="errorSeiKana!=null">
				<s:property value="errorSeiKana" />
		</s:if>

		<div class="form-text">名ふりがな</div>
		<span><input type="text" name="firstNameKana" maxlength="16"
			placeholder=" ひらがな" value=<s:property value="session.firstNameKana"/> >※16文字以内</span>
		<s:if test="errorMeiKana!=null">
				<s:property value="errorMeiKana" />
		</s:if>

		<!-- 性別 -->
		<div class="form-text">性別</div>
		<s:if test="sex==0">
			<span>
				<input type="radio" name="sex" value="0" checked="checked">男
				<input type="radio" name="sex" value="1">女
			</span>
		</s:if>
		<s:elseif test="sex==1">
			<span>
				<input type="radio" name="sex" value="0">男
				<input type="radio" name="sex" value="1" checked="checked">女
			</span>
		</s:elseif>
		<s:else>
			<span>
				<input type="radio" name="sex" value="0" checked="checked">男
				<input type="radio" name="sex" value="1">女
			</span>
		</s:else>

		<!-- メールアドレス -->

		<div class="form-text">メールアドレス</div>
		<span><input type="text" name="email" placeholder=" 半角英数字,記号 "
			maxlength="32" value=<s:property value="session.email"/> >※14文字～32文字</span>
		<s:if test="errorEmail!=null">
				<s:property value="errorEmail" />
		</s:if>


		<div class="form-text">秘密の質問</div>
		<s:if test="secretQuestion==1">
			<select name="secretQuestion" class="form">
				<option value="1" selected>好きな食べ物</option>
				<option value="2">好きな動物</option>
			</select>
		</s:if>

		<s:elseif test="secretQuestion==2">
			<select name="secretQuestion" class="form">
				<option value="1">好きな食べ物</option>
				<option value="2" selected>好きな動物</option>
			</select>
		</s:elseif>

		<s:else>
			<select name="secretQuestion" class="form">
				<option value="1" selected>好きな食べ物</option>
				<option value="2">好きな動物</option>
			</select>
		</s:else>

		<s:if test="errorQuestion!=null">
				<s:property value="errorQuestion" />
		</s:if>

		<!-- 質問の答え -->

		<div class="form-text">答え</div>
		<span> <input type="text" name="secretAnswer" placeholder="漢字,ひらがな,半角英数字,記号 " maxlength="10" size="25" value=<s:property value="session.secretAnswer"/> >※10文字以内
		</span>

		<s:if test="errorAnswer!=null">
				<s:property value="errorAnswer" />
		</s:if>


		<s:submit value="登録確認" />

	</s:form>
</body>


</head>
<body>

</body>
</html>