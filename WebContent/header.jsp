<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Template</title>
    <!-- CSSの読み込み -->
    <!--<link rel="stylesheet" href=".css">-->
    <!-- bootstrap(CSS)の読み込み -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- IE9未満のブラウザをHTML5&CSS3対応させるために下のを読み込む -->
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  </head>
  <body>
<!--   <nav class="navbar navbar-fixed-top" role="navigation"> -->

<nav class="navbar navbar-inverse">
  <div class="container-fuild">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="">ルードゥス</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
              <li><a href="">HOME</a></li>
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">商品<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="">アクション</a></li>
            <li><a href="">RPG</a></li>
            <li><a href="">シュミレーション</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="">One more separated link</a></li>
          </ul>
        </li>
<li><a href="">お問い合わせ</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ようこそ！！太郎さん <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="">マイページ</a></li>
            <li><a href="">購入履歴</a></li>
            <li><a href="">お気に入り</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="">ログアウト</a></li>
          </ul>
        </li>
        <li><a href="">カート</a></li>
      </ul>
                  <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">検索</button>
      </form>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!-- <hr style="margin: 40px 0;"> -->
    <!-- jQueryの読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- bootstrap(JS)の読み込み -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>