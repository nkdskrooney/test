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
		<link rel="stylesheet" type="text/css" href="./css/itemlist.css">
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
		<jsp:include page="include_header.jsp"/>
<!-- main -->
		<div class="main">
			<h1>-　contents　-</h1>
			<div class="inner">
<!-- iterator -->
				<s:iterator value="session.itemList">
					<div class="item">
					<a href="<s:url action="BuyItemAction">
							<s:param name="itemId" value="%{itemId}"/>
						</s:url>">
			<!-- 各商品情報 -->
						<img src="<s:property value="imageFilePath"/>" width="100" height="100"/><br>
						<b>商品名：</b><s:property value="itemName" /><br>
						商品かな：<s:property value="itemNameKana" /><br>
						<b>値段：</b><s:property value="price" /><span>円</span><br>

					</a>
					</div>
				</s:iterator>
<!-- iterator -->
			</div>
			<div class="text">
				<h3>Home画面</h3>
				・Home画面では、商品の一覧を表示しています。<br>
				・各商品ごとにパラメータに商品Idが挿入されており、商品をBOXごと選択すると<br>
				　商品Idに対応した商品情報をDBから抽出し商品詳細画面へと遷移します。(BuyItemActon)<br>
				・Home画面へのアクセス方法は2パターンあり、<br>
				　1.タイトル画面(entrance.jsp)からの遷移。(EntranceAction)<br>
				　2.Home画面へのリンク(HomeAction)<br>
				　このうち、EntranceActionでのみtempUserIdを発行しています。<br>
				　tempUserIdには、ランダム文字列(10文字)を発行しています。<br>
				　※apache.commons.lang3.RandomStringUtilsのrandomAlphanumeric()を使用。<br>
				<h3>ヘッダーメニュー</h3>
				・ロゴ…Home画面へのリンク(HomeAction)<br>
				・ヘッダーリスト(未ログイン)<br>
				　◆ようこそゲスト様◆ログイン(LoginGoAction)<br>
				　◆新規ユーザー登録(UserCreateAction)◆カート(CartSelectAction)<br>
				・ヘッダーリスト(ログイン)<br>
				　◆ようこそ【ユーザー名】様◆ログアウト(LogoutAction)<br>
				　◆マイページ(MyPageAction)◆カート(CartSelectAction)<br>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
