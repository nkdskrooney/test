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
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" href="./css/miamiburger.css">
<title>ヘッダー</title>
<style type="text/css">
</style>
</head>
<body>
	<div class="header-contents">
		<a href="<s:url action="HomeAction"/>">ホーム</a>

		<s:if test="#session.containsKey('userInfoDTO')">
			<a href="<s:url action="MyPageAction"/>">マイページ</a>
		</s:if>

		<a href="<s:url action="CartAction"/>">カート</a> <a
			href="<s:url action="ProductInfoAction"/>">商品一覧</a> <a
			href="<s:url action="CreateBurgerAction"/>">クリエイトバーガー</a>

		<s:if test="!(#session.containsKey('userInfoDTO'))">
			<a href="<s:url action="LoginAction"/>">ログイン</a>
		</s:if>

		<s:if test="!(#session.userInfoDTO.userId =='')">
			<a href="<s:url action="LogoutAction"/>">ログアウト</a>
		</s:if>


		<!-- ///////////////////////検索機能///////////////////////// -->
	</div>

	<div class="search">
		<s:form action="ProductInfoAction">
			カテゴリ：
			<select name="categoryId">

				<s:iterator value="#session.mCategoryDTOList">
					<s:if test="categoryId < 5">
						<option value="<s:property value ='categoryId'/>"><s:property
								value="categoryName" /></option>
					</s:if>
				</s:iterator>

			</select>

			<span>検索ワード:</span>
			<input type="text" name="search"
				value="<s:property value ='search'/>">
			<s:submit value="検索" />
		</s:form>
	</div>

	<!-- ///////////////////////ここまで///////////////////////// -->


</body>
</html>