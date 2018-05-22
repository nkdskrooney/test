<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<style>
body{
	background-image:url(./images/board.jpg);
	background-size: 100% auto;
}
.PH-main {
    position: relative; top: 90px;
	margin: auto;
	width: 90%;
	border: 1px black;
	background-image:url(./images/menutile.jpg);
	background-repeat:repeat;
}


h1 {
	text-align: center;
	text-decoration: underline;
}

.PH-inner {
	border-radius: 1em;
	width: 40%;
	float: left;
	margin: 3%;
	border: 1px solid black;
	background-color: #E6FFE9;
	position: relative;
	left: 5%;
}

.clear {
	clear: both;
}

.text {
	position: relative;
	left: 10px;
}

.submit {
	float: right;
	position: relative;
	right: 10px;
	top: -5px;
}
/* ///////////////////////浮きボタン↓////////////////////// */
.details-submit {
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

.details-submit:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
/* ///////////////////////浮きボタン↑////////////////////// */
.Del-submit {
	width: 60px;
	margin: auto;
}

/* ///////////////////////挿下ボタン↓////////////////////// */
.decision-submit {
	display: inline-block;
	border-radius: 50%;
	text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.5);
	font-size: 13pt;
	text-align: center;
	cursor: pointer; /* カーソル   */
	padding: 12px 12px;
	background: red;
	line-height: 1em; /* 1行の高さ  */
	transition: .3s;
	box-shadow: 6px 6px 3px #666666; /* 影の設定 */
	border: 2px solid #990000;
	font-weight: 500;
	color: #CC0000;
}

.decision-submit:hover {
	box-shadow: none;
	background: #AA0000;
}
/* ///////////////////////挿下ボタン↑////////////////////// */
</style>
<title>購入履歴</title>
</head>
<body>

	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="PH-main">
		<div class="PH-title">
			<h1>購入履歴 時間別</h1>
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
							<s:submit value="詳細" class="details-submit" />
						</s:form>
					</div>
				</div>
			</s:iterator>
			<div class="clear"></div>
			<div class="Del-submit">
				<s:form action="PurchaseHistoryAction">
					<input type="hidden" name="deleteFlg" value=true />
					<s:submit value="削除" class="decision-submit" />
				</s:form>
			</div>
		</s:if>
		<s:else>
			<s:property value="emptyMessage" />
		</s:else>

	</div>

</body>
</html>