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
<title>入力情報確認画面</title>
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<link rel="stylesheet" type="text/css" href="userCreateConfirm.html">
<link rel="stylesheet" type="text/css" href="./css/userCreateConfirm.css">
</head>

<%-- 		<script>
			function goUserCreateAction(){
			document.getElementById('form-action').action = 'UserCreateAction';
			}
			function goUserCreateCompleteAction(){
			document.getElementById('form-action').action = 'UserCreateCompleteAction';
			}
		</script> --%>
<body>
<div class="wrapper">
<div><jsp:include page="header.jsp"/></div>

<div class="main">
<div class="inner">


<s:form id="form-action">

		<div class="UCConfirm-text">
			 <h1>新規ユーザー登録確認</h1>
			 <p>登録内容はこちらでよろしいですか？</p>
		</div>


<table>
 		<tr>
 			<th>ユーザーID</th>
 			<td><s:property value="userId" escape="false" /></td>
		</tr>

 		<tr>
 			<th>パスワード</th>
			<td><s:property value="passCon" escape="false" /></td>
		</tr>

		<tr>
			<th>名前(姓)</th>
			<td><s:property value="familyName" escape="false" /></td>
		</tr>

		<tr>
			<th>名前(名)</th>
			<td><s:property value="firstName" escape="false" /></td>
		</tr>

		<tr>
			<th>ふりがな(姓)</th>
			<td><s:property value="familyNameKana" escape="false" /></td>
		</tr>

		<tr>
			<th>ふりがな(名)</th>
			<td><s:property value="firstNameKana" escape="false" /></td>
		</tr>

		<tr>
			<th>性別</th>
			<td><s:if test="sex==0">男</s:if>
			<s:if test="sex==1">女</s:if></td>
		</tr>

		<tr>
			<th>メールアドレス</th>
			<td><s:property value="email" escape="false" /></td>
		</tr>

		<tr>
			<th>秘密の質問</th>
			<td><s:if test="secretQuestion==1">好きな食べ物</s:if>
		    <s:if test="secretQuestion==2">好きな動物</s:if></td>
		</tr>

		<tr>
			<th>質問の答え</th>
			<td><s:property value="secretAnswer" escape="false" /></td>
		</tr>
</table>
<%--         <div class="button">
				<s:submit value="訂正" onclick="goUserCreateAction();" />
				<s:submit value="登録" onclick="goUserCreateCompleteAction();" />
			</div> --%>

			<!-- ボタン -->
				<div class="button">
					<input type="button" onclick="location.href='<s:url action="UserCreateAction" />'" value="訂正" class="submitBtn" />
					<input type="button" onclick="location.href='<s:url action="UserCreateCompleteAction" />'" value="登録" class="submitBtn"/>
				</div>


</s:form>

</div>
</div>


<div class="push"></div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>