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
<%--jQueryの読み込み--%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<%--個別jsの読み込み --%>
<script src="./js/signup.js"></script>
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<title>新規登録</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>

		<form class="center-block" action="SignUpAction"
			style="max-width: 500px; margin: 5rem auto;">
			<fieldset>
				<legend>会員登録フォーム</legend>
				<p>必須項目を入力してから登録してください。</p>

				<div class="form-group">
					<label for="e-mail"> メールアドレス <span
						class="label label-danger">必須</span>
					</label> <input type="email" id="e-mail" name="phoneEmail"
						class="form-control" placeholder="メールアドレスを入力してください" required/>
				</div>


				<div class="form-group">
					<label for="password has-feedback"> パスワード(半角英数字) <span
						class="label label-danger">必須</span>
					</label>
					<p class="help-block">8文字以上でご記入ください</p>
					<input type="password" id="password" name="password"
						class="form-control" minlength="8" placeholder="パスワードを入力してください"
						pattern="^[0-9A-Za-z]+$"required>
				</div>

				<div class="form-group">
					<label for="username"> お名前 <span class="label label-danger">必須</span>
					</label>
					<p class="help-block">漢字でご記入ください。</p>
					<input type="text" id="username" name="nameKanji"
						class="form-control" placeholder="名前を入力してください"
						pattern="[々〇〻\x{3400}-\x{9FFF}\x{F900}-\x{FAFF}\x{20000}-\x{2FFFF}]" required />
				</div>

				<div class="form-group">
					<label for="username"> ふりがな <span
						class="label label-danger">必須</span>
					</label> <input type="text" id="username" name="nameHira"
						class="form-control" placeholder="なまえを入力してください"
						pattern="[\u3041-\u3096]*" required/>
				</div>

				<div class="form-group">
					<label for="zip01"> 郵便番号(半角数字) <span
						class="label label-danger">必須</span>
					</label> <input id="zip01" name="zip01" maxlength="8" class="form-control"
						onKeyUp="AjaxZip3.zip2addr(this,'','addr11','addr11');"
						placeholder="000-0000もしくは0000000" pattern="\d{3}-?\d{4}" required>
				</div>

				<div class="form-group">
					<label for="addr11"> 住所 <span class="label label-danger">必須</span>
					</label>
					<p class="help-block">住所は2つに分けてご記入ください。</p>
					<input type="text" id="addr11" name="addr11" class="form-control"
						placeholder="都道府県・市区町村名"
						pattern="[\u4E00-\u9FFF\u3040-\u309Fー0-9０-９\-－]*" required>
				</div>


				<div class="form-group">
					<p class="help-block">マンション名は必ず記入してください。</p>
					<input type="text" name="address2" class="form-control"
						placeholder="番地・ビル名"
						pattern="[\u4E00-\u9FFF\u3040-\u309Fー0-9０-９\-－]*" required>
				</div>

				<div class="form-group">
					<label for="username"> 電話番号(半角数字) <span
						class="label label-danger">必須</span>
					</label> <input type="tel" id="username" name="phoneNumber"
						class="form-control" placeholder="000-0000-0000もしくは00000000000"
						pattern="^\d{3}-\d{4}-\d{4}$|^\d{11}$" maxlength="14"  required/>
				</div>

				<div class="checkbox">
					<label> <input type="checkbox" id="agreement" value="true"  required/>
						同意する
					</label>
				</div>
				<button type="submit" class="btn btn-primary" id="submit">
					<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
					登録する
				</button>
			</fieldset>
		</form>


		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
				style="background: #fff;">
				<p id="pageTop"><a href="#">⇧</a></p>
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>

</body>
</html>