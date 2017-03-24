<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%--jQueryの読み込み bootstrapよりさきに読み込まないといけない--%>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<%--bootstrapの読み込み --%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href=" css/login.css">
<title>ログイン画面</title>
</head>
<body>
	<div class="container">
		<form class="center-block">
			<fieldset>
				<legend>ログイン画面</legend>
				<p>メールアドレスとパスワードを入力してください</p>
				<div class="form-group">
					<label for="mail">
						メールアドレス
<%-- 						<span class="label label-danger">必須</span> --%>
					</label>
					<input type="email" id="mail" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">
						パスワード
<%-- 						<span class="label label-danger">必須</span> --%>
					</label>
					<input type="password" class="form-control">
				</div>

				<button type="submit" class="btn btn-primary center-block" id="submit">
					<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
					ログイン
				</button>
			</fieldset>
		</form>
		</div>
</body>
</html>