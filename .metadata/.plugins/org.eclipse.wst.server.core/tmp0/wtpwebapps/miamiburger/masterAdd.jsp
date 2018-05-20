<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<title>管理画面</title>
		<style type="text/css">
		body {
			background-image: url(./images/board.jpg);
			background-attachment: fixed;
			background-size: cover;
			background-size: 100% auto;
		}
		.inner{
			margin:5% 15% 5% 15%;
			float:left;
			width: 70%;
			height: 50%;
		/* 	影をつけるボックスのプロパティです */
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
		/* 	影をつけるボックスのプロパティです */
			border-left:1px solid black;
			border-bottom:1px solid black;
			border-radius:10px;
			background-color:rgba(255,255,255,0.5);
			box-shadow:-10px 10px 10px 5px rgba(0,0,0,0.4);
		}
		.product_info{
			float:left;
			width:42%;
			margin:6%;
		}
		.character{
			padding:3%;
		}
		.character b{
			padding-right:1%;
		}
		.file{
			float:right;
			width:33%;
			margin:6%;
		}
		.clear{
		clear:both;
		}
		</style>
	</head>
	<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="main">
		<h1>商品情報を入力してください</h1>
		<div class="inner">
			<div class="product_info">
				<s:form action="MasterAddConfirmAction" >
					<div class="character">
						<b>商品名:</b><input name="productName" placeholder="商品名" required><br>
					</div>
					<div class="character">
						<b>商品かな:</b><input name="productNameKana"placeholder="商品かな" required><br>
					</div>
					<div class="character">
						<b>商品詳細:</b><textarea name="productDescription" placeholder="商品詳細" required></textarea><br>
					</div>
					<div class="character">
						<b>カテゴリ:</b><br>
						<s:iterator value="#session.mCategoryDTOList">
							<s:if test= "categoryId >0">
								<s:if test="categoryId ==1">
									<input type="radio" name="categoryId" value=<s:property value="categoryId"/> checked><s:property value ="categoryName"/><br>
								</s:if>
								<s:else>
									<input type="radio" name="categoryId" value=<s:property value="categoryId"/> ><s:property value ="categoryName"/><br>
								</s:else>
							</s:if>
						</s:iterator>
					</div>
					<div class="character">
						<b>値段:</b><input type ="text" name="price" placeholder="1000" required><span>円</span><br>
					</div>
					<div class="character">
						<b>発売日:</b><input type ="text" name="releaseDate" placeholder="2000-01-01 00:00:00"><br>
					</div>
					<div class="character">
						<b>ステータス:</b><input type="radio" name="Status" value="0">無効<input type="radio" name="Status" value="1" checked>有効<br>
					</div>

					<s:submit value="確認画面へ" />
				</s:form>
			</div>
			<div class="file">
				<b>ファイル名：</b><s:property value="session.userImageFileName"/><br/>
				<img src="img/<s:property value="session.image_file_path"/>" width="100" height="100"/>
				<s:form action="MasterAddAction" method="post" enctype="multipart/form-data">
					<s:file name="userImage" label="参照" />
					<s:submit value="アップロード" align="center" />
				</s:form>
			<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>