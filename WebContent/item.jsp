<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<title>template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/main.css">
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="background: #000;">
				<jsp:include page="header.jsp" /></div>
		</div>

		<div class="row">
			<div class="col-sm-12" style="background: #ccc; height: 550px;">
				<div class="row">
					<div class="col-sm-9" style="background: #023; height: 550px;">商品画像</div>
					<div class="col-sm-3" style="background: #fff; height: 550px;">
						<!-- 							<div class="well" style="height: 460px"> -->
						<div class="panel panel-default">
							<div class="panel-heading" style="height: 100px;">
								<h4>商品名</h4>
							</div>
							<div class="panel-body bg-success" style="height: 450px;">
								<h4>￥5000円</h4>
								<p>残り25点</p>
								<br> <br> <br>
								<form class="form-inline">
									<div class="form-group ">
										<label>数量:</label> <select class="form-control input-sm">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
											<option>7</option>
											<option>8</option>
											<option>9</option>
											<option>10</option>
										</select>
									</div>
									<div class="text-center" style="padding: 30px;">
										<button type="button"
											class="btn btn-primary center-block btn-lg btn-block">カートに入れる</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-12" style="background: #ccc; height: 200px;">
				<div class="panel panel-info" style="height: 200px;">
					<div class="panel-heading">
						<h3>商品の説明</h3>
					</div>
					<div class="panel-body">パネル内容</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-sm-12" style="background: #660; height: 100px;">フッター</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>