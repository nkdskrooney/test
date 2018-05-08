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
<!-- iterator -->
				<s:iterator value="itemList">
					<tr>
						<s:form action="BuyItemAction">

							<td>
								<s:property value="itemName" />
							</td>
							<td>
								<img class="item-img" src='<s:property value="imgAddress"/>'>
							</td>
							<td>
								<s:property value="itemPrice" />
								<span>円</span>
							</td>
							<td>
								<s:property value="itemStock" />
								<span>個</span>
							</td>
							<s:hidden name = "itemId" />

							<td><s:submit value="商品詳細へ" /></td>

						</s:form>
					</tr>
				</s:iterator>
<!-- iterator -->
			</div>
		</div>

<!-- footer -->
		<jsp:include page="include_footer.jsp"/>
	</body>
</html>
