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
<%--個別cssの読み込み --%>
<link rel="stylesheet" href="./css/mypage.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<title>MyPage</title>
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
			<div class="col-xs-12 col-lg-8 col-lg-offset-2"
				style="background: #fff; height:500px;">
				<div class="panel panel-default" style="margin: 5rem auto;">
					<div class="panel-heading">
						<!-- カプセル・メニュー -->
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a href="#sampleContentA"
								data-toggle="tab"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>登録情報</a></li>
							<li><a href="#sampleContentB" data-toggle="tab"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>購入履歴</a></li>
							<li><a href="#sampleContentC" data-toggle="tab"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>お気に入り</a></li>
						</ul>
					</div>
					<div class="panel-body">
						<!-- 内容 -->
						<div class="tab-content">
							<div class="tab-pane  active" id="sampleContentA">
								<div class="table-responsive">
									<table class="table table-hover table-bordered">
										<tbody>
										<s:iterator value="userList">
											<tr>
												<th class="info">名前</th>
												<td><s:property value="nameKanji" /></td>

											</tr>
											<tr>
												<th class="info">ひらがな</th>
												<td><s:property value="nameHira" /></td>

											</tr>
											<tr>
												<th class="info">メールアドレス</th>
												<td><s:property value="phoneEmail" /></td>

											</tr>
											<tr>
												<th class="info">郵便番号</th>
												<td><s:property value="postal" /></td>
											</tr>
											<tr>
												<th class="info">住所</th>
												<td><s:property value="address1" /><s:property value="address2" /></td>

											</tr>
											<tr>
												<th class="info">電話番号</th>
												<td><s:property value="phoneNumber" /></td>

											</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>

							<div class="tab-pane" id="sampleContentB">
								<div class="table-responsive">
									<table class="table table-bordered table-hover">
										<thead>
											<tr>
												<th class="info">購入日</th>
												<th class="info">商品名</th>
												<th class="info">個数</th>
												<th class="info">合計値段</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2017/4/5</td>
												<td>カバオくん</td>
												<td>68</td>
												<td>67000円</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>

							<div class="tab-pane" id="sampleContentC">
								<p>お気に入り商品</p>
							</div>
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