<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登録フォーム</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/signUp.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="./js/signup.js"></script>
    <script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
  </head>
  <body>
    <div class="container">
      <form  class="center-block">
        <fieldset>
          <legend>会員登録フォーム</legend>
          <p>必須項目を入力してから登録してください。</p>

          <div class="form-group">
            <label for="e-mail">
              メールアドレス
              <span class="label label-danger">必須</span>
            </label>
            <input type="email" id="e-mail" class="form-control" placeholder="メールアドレスを入力してください"/>
          </div>


          <div class="form-group">
            <label for="password has-feedback">
              パスワード
              <span class="label label-danger">必須</span>
            </label>
            <input type="password" id="password" class="form-control" placeholder="パスワードを入力してください"/>
          </div>

           <div class="form-group">
            <label for="username">
              お名前
              <span class="label label-danger">必須</span>
            </label>
            <input type="text" id="username" class="form-control"placeholder="名前を入力してください"  />
          </div>

           <div class="form-group">
            <label for="zip01">
              郵便番号
              <!--<span class="label label-danger">必須</span>-->
            </label>

            <input id="zip01" name="zip01" maxlength="7" class="form-control" onKeyUp="AjaxZip3.zip2addr(this,'','addr11','addr11');" placeholder="ハイフン除く数字7桁">
          </div>

           <div class="form-group">
            <label for="addr11">
              住所
              <!--<span class="label label-danger">必須</span>-->
            </label>
             <p class="help-block">住所は2つに分けてご記入ください。</p>
            <input type="text" id="addr11" name="addr11" class="form-control" placeholder="市区町村名">
          </div>


           <div class="form-group">
            <label for="a">
              市区町村
              <!--<span class="label label-danger">必須</span>-->
            </label>
             <p class="help-block">マンション名は必ず記入してください。</p>
             <input type="text" id="a" name="a" class="form-control" placeholder="番地・ビル名">
          </div>

           <div class="form-group">
            <label for="username">
              電話番号
              <span class="label label-danger">必須</span>
            </label>
            <input type="tel" id="username" class="form-control"placeholder="名前を入力してください"  />
          </div>

          <div class="checkbox">
            <label>
              <input type="checkbox" id="agreement" value="true" />
              同意する
            </label>
          </div>
          <button type="submit" class="btn btn-primary" id="submit">
            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
            登録する
          </button>
        </fieldset>
      </form>
    </div>
  </body>
</html>