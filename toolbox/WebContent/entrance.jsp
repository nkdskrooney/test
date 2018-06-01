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
		<title>START</title>
		<link rel="stylesheet" type="text/css" href="./css/entrance.css">
		<style type="text/css"></style>
	</head>
	<body>
<!-- main -->
	<div class="title">
		<a href='<s:url action="EntranceAction" />'>＿<br>　Life with　<br>　　＿　￣<br>　ToolBox　<br>　　　　￣</a>
	</div>
	<div class="text">
		<h3>はじめに</h3>
		この度は私、中川大輔の個人製作をご覧頂きありがとうございます。<br>
		私は、チーム製作においては管理画面及びマイページ画面の担当を<br>
		させて頂いていました。<br>
		ですが、チームの製作物のみでは私個人の学習の習熟度を企業様側で<br>
		測りかねるのではないかと思い、誠に勝手ではありますが、<br>
		このような資料を作らせて頂きました。<br>
		チーム製作に重心を置きながら、短期間で急造した拙作では<br>
		ございますが、ぜひご覧いただければ幸いです。<br>

		<h3>注意事項</h3>
		・時間的な制約により、機能実装を優先している為、<br>
		　InputChecker等の主要機能以外の機能は省略しています。<br>
		・各画面にて機能や動作に関して簡単な説明をしています。<br>
		・管理画面、マイページに関しては優先順位を最後にしています。<br>
		　ご覧頂く日程によっては、実装されていない可能性もございますので、<br>
		　ご了承ください。<br>
		・左記のタイトルをクリック頂くとtempUserId(一時的な仮ID)の発行と<br>
		　DBから商品情報を抽出しHome画面へ遷移します。(EntranceAction)<br>
	</div>
	</body>
</html>
