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
		h1{
		text-align:center;
		}
		.MA_box{
		width:80%;
		height:1000px;
		margin:0 auto;
		border-radius:15px;
		background-color:rgba(0,0,0,0.5);
		}
		.file{
		clear:left;
		float:right;
		}
		</style>
	</head>
	<body>
	<!-- ヘッダー -->
	<jsp:include page="header.jsp" />

	<h1>商品情報を入力してください</h1>
	<div class="MA_box">
	<s:form action="MasterAddConfirmAction" >
	<p>商品名</p>
	<input name="productName" placeholder="商品名" required>
	<p>商品かな</p>
	<input name="productNameKana"placeholder="商品かな" required>
	<p>商品詳細</p>
	<textarea name="productDescription" placeholder="商品詳細" required></textarea>
	<p>カテゴリ</p>
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
	<p>値段</p>
	<input type ="text" name="price" placeholder="1000" required><span>円</span>
	<p>発売日</p>
	<input type ="text" name="releaseDate" placeholder="2000-01-01 00:00:00">
	<p>ステータス</p>
	<input type="radio" name="Status" value="0">無効<br>
	<input type="radio" name="Status" value="1" checked>有効<br>

	<s:submit value="確認画面へ" />
	</s:form>

	<div class="file">
		ファイル名：<s:property value="session.userImageFileName"/><br/>
		<img src="img/<s:property value="session.image_file_path"/>" width="100" height="100"/>
		<s:form action="MasterAddAction" method="post" enctype="multipart/form-data">
			<s:file name="userImage" label="参照" />
			<s:submit value="アップロード" align="center" />
		</s:form>
	</div>
</div>
</body>
</html>