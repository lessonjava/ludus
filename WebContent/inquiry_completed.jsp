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
<title>お問い合わせ完了画面</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>

		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2"
				style="background: #fff; height: auto;">
				<div class="panel panel-default" style="margin: 5rem auto;">
					<div class="panel-heading text-center">
						<h3>
							<b>お問い合わせ完了</b>
						</h3>
					</div>
					<div class="panel-body ">
						<div class="col-xs-3 col-sm-3 ">
							<p class="text-right" style="margin: 5px 10px 10px 10px;">
								<b>お名前</b>
							</p>
						</div>
						<div class="col-xs-9 col-sm-9">
							<p style="margin: 10px;">
								<s:property value="name" />
							</p>
						</div>
						<div class="col-xs-3 col-sm-3">
							<p class="text-right" style="margin: 10px;">
								<b>メールアドレス</b>
							</p>
						</div>
						<div class="col-xs-9 col-sm-9">
							<p style="margin: 10px;">
								<s:property value="email" />
							</p>
						</div>
						<div class="col-xs-3 col-sm-3 ">
							<p class="text-right" style="margin: 10px;">
								<b>お問い合わせの種類</b>
							</p>
						</div>
						<div class="col-xs-9 col-sm-9">
							<p style="margin: 10px;">
								<s:property value="genre" />
							</p>
						</div>
						<div class="col-xs-12 col-sm-12 text-center">
							<p style="margin: 10px;">
								<b>お問い合わせ内容</b>
							</p>
						</div>
						<div class="col-xs-12 col-sm-12">
							<p style="margin: 10px;">
								<s:property value="contents" />
							</p>
						</div>

						<div class="col-xs-12 col-sm-12 text-center">
							<hr
								style="width: 100%; color: black; height: 1px; background-color: black;" />
							<h4>送信ありがとうございます</h4>
							<p>この度はお問い合わせメールをお送りいただきありがとうございます。</p>
							<p>後ほど、担当者よりご連絡をさせていただきます。</p>
							<p>今しばらくお待ちくださいますようよろしくお願い申し上げます。</p>
							<p>なお、しばらくたっても当ショップより返信、返答がない場合は、</p>
							<p>お客様によりご入力いただいたメールアドレスに誤りがある場合がございます。</p>
							<p>その際は、お手数ですが再度送信いただけますと幸いです。</p>
						</div>

					</div>
				</div>
			</div>
		</div>


		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
				style="background: #fff;">
				<p id="pageTop">
					<a href="#">⇧</a>
				</p>
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>

</body>
</html>