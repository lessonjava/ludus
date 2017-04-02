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
<title>Template</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>


		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2"
				style="background: #fff; height: auto;">
				<div class="panel panel-default" style="margin: 5rem auto;">
					<div class="panel-heading text-center">
						<h3>
							<b>お問い合わせ</b>
						</h3>
					</div>
					<div class="panel-body">

						<s:form class="form-horizontal">
							<div class="form-group">
								<label class="col-xs-3 col-sm-3 control-label" for="Name">お名前</label>
								<div class="col-xs-9 col-sm-9">
									<s:if test="#session.userList != null">
										<p class="form-control-static">
											<s:property value="#session.userList.nameKanji" />
										</p>
									</s:if>
									<s:else>
										<input type="text" class="form-control" id="Name" name="name"
											placeholder="名前を入力して下さい。">
									</s:else>
								</div>


							</div>
							<div class="form-group">
								<label class="col-xs-3 col-sm-3 control-label" for="Email">メールアドレス</label>
								<div class="col-xs-9 col-sm-9">
									<s:if test="#session.userList != null">
										<p class="form-control-static">
											<s:property value="#session.userList.phoneEmail" />
										</p>
									</s:if>
									<s:else>
										<input type="email" class="form-control" id="Email"
											name="email" placeholder="メールアドレスを入力して下さい。">
									</s:else>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-3 col-sm-3 control-label" for="Select">お問い合わせの種類</label>
								<div class="col-xs-9 col-sm-9">
									<select class="form-control" id="Select" nama="genre">
										<option>商品について</option>
										<option>返品について</option>
										<option>その他</option>
									</select>
								</div>
							</div>
							<div class="form-group ">
								<label class="col-xs-12 col-sm-12 text-center" for="Textarea">お問い合わせ内容</label>
								<div class="col-xs-12 col-sm-12">
								<textarea class="form-control" id="Textarea" name="contents"
									placeholder="お問い合わせ内容を入力して下さい。" style="height: 150px;"></textarea>
							</div></div>


							<button type="submit" class="btn btn-primary center-block">送信</button>

						</s:form>

					</div>
				</div>
			</div>
		</div>



		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
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