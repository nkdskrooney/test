<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>クリエイトバーガー確認</title>
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>
<h1>クリエイトバーガー確認画面</h1>
<h2>以下の内容でよろしいですか？</h2>
金額：<s:property value="#session.createPrice"/>円
<br>
個数：<s:property value="#session.createProduct_count"/>個
<br>
合計金額：<span id="totalPrice"></span>円<script>document.getElementById('totalPrice').textContent = <s:property value="#session.createPrice"/> * <s:property value="#session.createProduct_count"/>;</script>
<br>
選択されたオプション
<br>
<div id="selectList"></div>

<div id="burgerContainer"></div>

<a href="<s:url action='CreateBurgerCompleteAction'/>">カートに入れる</a>
<a href="<s:url action='CreateBurgerAction'/>">作り直す</a>
	<script>
	var maxCount = 10;// 			オプションの選択可能数は10個とする。

//		リストの合計値を算出するファンクション
	var sum = function(list){
		var sum = 0;
		for(var i = 0; i < list.length; i++){
			sum +=list[i];
		};
		return sum;
	};

//		セッションに格納されたoptionListDateをオブジェクトとして配列に格納する。
	var optionDataList = [];
	var optionCount = 0;
	<s:iterator value="#session.burgerOptionsList">
		optionDataList[optionCount] ={id:<s:property value="id"/> , optionName:"<s:property value='optionName'/>" , optionPrice:<s:property value="optionPrice"/> , imgUrl:"<s:property value='imgUrl'/>" , comment:"<s:property value='comment'/>"};
		optionCount++;
	</s:iterator>

//		引数にidを入力することでそのidを持ったオプションのオブジェクトを得ることができるファンクション
	var getOptionData = function(id){
		for(var i= 0 ; i < optionDataList.length ; i++){
			if( id === optionDataList[i].id){
				return optionDataList[i];
			};
		};
	};

// 	ハンバーガー作成用ファンクション
	var burgerMake = function(selectIdList){
		$('#burgerContainer img').remove();
		for(var i = 0; i < selectIdList.length; i++){
			$('#burgerContainer').prepend('<img src="'+getOptionData(selectIdList[i]).imgUrl+'" class="img'+(i+1)+'"/>');
		};
	};
// 	選択内容の表示用ファンクション
	var selectMake = function(selectIdList){
		for(var i = 0; i < selectIdList.length; i++){
			$('#selectList').prepend(getOptionData(selectIdList[i]).optionName+'<br>');
		};
	};


	selectMake(<s:property value='#session.selectOptionIdList'/>);
	burgerMake(<s:property value='#session.selectOptionIdList'/>);

</script>

</body>
</html>