<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--個別cssの読み込み --%>
<link rel="stylesheet" href=" ./css/header.css">
<%--bootstrapの読み込み --%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>header</title>
</head>
<body>

	<nav class="navbar navbar-inverse  all" role="navigation">
		<div class="container-fuild">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main_top.jsp"><img
					src="./img/ludus.jpg" alt="hogehoge" class="img-responsive"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="main_top.jsp"><span
							class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME</a></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><span class="glyphicon glyphicon-gift"
							aria-hidden="true"></span> 商品<span class="caret"></span></a>
						<ul class="dropdown-menu">
	<li><a href='<s:url action="GoItemListAction"><s:param name="itemGenre">あんパン</s:param></s:url>'>あんパン</a></li>
	<li><a href='<s:url action="GoItemListAction"><s:param name="itemGenre">食パン</s:param></s:url>'>食パン</a></li>
	<li><a href='<s:url action="GoItemListAction"><s:param name="itemGenre">カレーパン</s:param></s:url>'>カレーパン</a></li>
							<li><a href="">ブラウニー</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="">One more separated link</a></li>
						</ul></li>
					<li><a href="inquiry.jsp"><span
							class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
							お問い合わせ</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<s:if test="#session.userList != null">
						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> <span
								class="glyphicon glyphicon-dashboard" aria-hidden="true"></span>ようこそ！<s:property
									value="#session.userList.nameKanji" />さん <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href='<s:url action="MyPageAction"><s:param name="type" value="1"/></s:url>'><span
										class="glyphicon glyphicon-user" aria-hidden="true"></span>
										マイページ</a></li>
								<li><a
									href='<s:url action="MyPageAction"><s:param name="type" value="2"/></s:url>'><span
										class="glyphicon glyphicon-book" aria-hidden="true"></span>
										購入履歴</a></li>
								<li><a
									href='<s:url action="MyPageAction"><s:param name="type" value="3"/></s:url>'><span
										class="glyphicon glyphicon-star" aria-hidden="true"></span>
										お気に入り</a></li>
								<li role="separator" class="divider"></li>
								<li><a href='<s:url action="LoginOutAction"></s:url>'><span
										class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
										ログアウト</a></li>
							</ul></li>
					</s:if>
					<s:else>
						<li><a href="login.jsp"><span
								class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
								ログイン</a></li>
						<li><a href="sign_up.jsp"><span
								class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								新規登録</a></li>
					</s:else>
					<li><a href=""><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							カート</a></li>
				</ul>
				<form class="navbar-form navbar-right" style="padding: 15px 0;">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>検索
					</button>
				</form>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>