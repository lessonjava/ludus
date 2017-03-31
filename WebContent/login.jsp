<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ↓IEの表示を常に最新する↓ -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- ↓mobileでも崩れないよう？↓ -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href=" css/login.css">
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<title>ログイン画面</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>

		<form class="center-block" style="margin: 5rem auto;">
			<fieldset>
				<legend>ログイン画面</legend>
				<p>メールアドレスとパスワードを入力してください</p>
				<div class="form-group">
					<label for="mail"> メールアドレス <%-- 						<span class="label label-danger">必須</span> --%>
					</label> <input type="email" id="mail" name="" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password"> パスワード <%-- 						<span class="label label-danger">必須</span> --%>
					</label> <input type="password" name="" class="form-control">
				</div>

				<button type="submit" class="btn btn-primary center-block"
					id="submit">
					<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
					ログイン
				</button>
			</fieldset>
		</form>

		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
				style="background: #fff;">
				<hr class="style-one" style="margin:200px 0px 0px 0px;">
				<h1 style="margin: 3rem auto;">会社概要　　利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>
</body>
</html>