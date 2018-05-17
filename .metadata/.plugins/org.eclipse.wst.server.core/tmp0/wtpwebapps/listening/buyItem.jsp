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
		<link rel="stylesheet" href="./css/style.css">
		<title>HOME</title>
		<style type="text/css"></style>
	</head>
	<body>
<!-- header -->
	<jsp:include page="include_header.jsp"/>

<!-- main -->
		<div id="main">

			<div id="top">
				<p>商品一覧</p>
			</div>
			<div>
						<s:form action="BuyItemCartAction">
							<tr>
								<td>
									<s:property value="session.itemName" />
								</td>
								<td>
									<img class="item-img" src='<s:property value="session.imgAddress"/>'>
								</td>
								<td>
									<s:property value="session.itemPrice" />
									<span>円</span>
								</td>
								<td>
									<s:property value="session.itemStock" />
									<span>個</span>
								</td>
								<td>
									<select name="count">
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</td>
								<td>
									<input type="radio" name="pay" value="1">
										現金払い
									<input type="radio" name="pay" value="2">
										クレ ジットカード
								</td>
								<td><s:submit value="購入" /></td>
							</tr>
						</s:form>
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>