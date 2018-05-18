<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<style>
.PH-title {
	background-color: #FFFFAA;
	text-align: center;
	border-radius: 1em;
}

.PH-inner {
	border-radius: 1em;
	width: 35%;
	height: 55px;
	float: left;
	margin: 7%;
	border: 1px solid black;
	background-color: #E6FFE9;
}

.text {
	position: relative;
	left: 10px;
}

.submit {
	position: relative;
	left: 400px;
	top: -45px;
}

.clear {
	clear: left;
}

.delete {
	width: 4%;
	margin: 0 auto;
}

.DetailsBtn {
	width: 60px;
	height: 25px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: blue;
	background-color: skyblue;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.DetailsBtn:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

.deleteBtn {
	display: inline-block;
	border-radius: 50%; /* ←角を丸くできる       */
	font-size: 13pt; /* 文字サイズ */
	text-align: center; /* 文字位置   */
	cursor: pointer; /* カーソル   */
	padding: 12px 12px; /* 余白       */
	background: pink; /* 背景色     */
	line-height: 1em; /* 1行の高さ  */
	transition: .3s; /* なめらか変化 */
	box-shadow: 6px 6px 3px #666666; /* 影の設定 */
	border: 2px solid hotpink; /* 枠の指定 */
	font-weight: 500;
	color: red;
}

.deleteBtn:hover {
	box-shadow: none;
	background: hotpink;
}
</style>
<title>購入履歴</title>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="PH-title">
		<h1>購入履歴 (時間別)</h1>
	</div>
	<s:if test="emptyMessage == null">
		<s:iterator value="purchaseListDTOList">
			<div class="PH-inner">
				<div class="text">
					購入日時：
					<s:property value="registDate" />
					<br> 合計金額:
					<s:property value="totalPrice" />
					円
				</div>
				<div class="submit">
					<s:form action="PurchaseHistoryDetailsAction">
						<s:hidden name="allPurchaseListNumber" />
						<s:submit value="詳細" class="DetailsBtn" />
					</s:form>
				</div>
			</div>
		</s:iterator>
		<div class="PHDel-submit"></div>
		<s:form action="PurchaseHistoryAction">
			<input type="hidden" name="deleteFlg" value=true />
			<s:submit value="削除" />
		</s:form>
	</s:if>
	<s:else>
		<s:property value="emptyMessage" />
	</s:else>
<!-- 	<div class="footer"></div> -->
</body>
</html>