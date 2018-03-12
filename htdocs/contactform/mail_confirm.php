<!doctype html>

<html lang="ja">
<head>
  <meta charset="utf-8">

  <title>お問い合わせ内容確認</title>

  <link rel="stylesheet" href="style2.css">
</head>
<body>
<header>
 <h1>お問い合わせ内容確認</h1>
</header>
<div class="main">
<div class="contents">
    お問い合わせ内容はこちらでよろしいでしょうか？<br>
    よろしければ「送信する」ボタンを押してください。
</div>    
<div  class="contents">
名前<br>
<?php echo $_POST["name"]; ?>
</div>
<div class="contents">
メールアドレス<br>
<?php 
 echo $_POST["mail"] ;
?>
</div>
<div class="contents">
年齢<br>
<?php 
 echo $_POST["age"] ;
?>
</div>
<div class="contents">
コメント<br>
<?php 
 echo $_POST["comments"] ;
?>
</div>
    
<form action="index.html">
    <input type="submit" class="button1" value="戻って修正する"/>
</form>
<form action="insert.php" method="post">
    <input type="submit" class="button2" value="登録する"/>
    <input type="hidden" value="<?php echo $_POST["name"]; ?>" name="name">
    <input type="hidden" value="<?php echo $_POST["mail"]; ?>" name="mail">
    <input type="hidden" value="<?php echo $_POST["age"]; ?>" name="age">
    <input type="hidden" value="<?php echo $_POST["comments"]; ?>" name="comments">
</form>
  <script src="js/scripts.js"></script>
    </div>
</body>
</html>