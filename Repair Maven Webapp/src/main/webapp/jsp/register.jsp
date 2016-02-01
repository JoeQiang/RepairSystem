<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>宿舍保修系统</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath }/css/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
		<div class="container">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
					<li class="glyphicon glyphicon-tint" style="color:#6495ED;"></li>
					&nbsp;&nbsp;宿舍报修系统
				</a>
			</div>
			<!-- /.navbar-header -->
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-top-links navbar-right">
					<li><a href="${pageContext.request.contextPath }/login.do">登陆</a></li>
					<li><a href="${pageContext.request.contextPath }/register.do">注册</a></li>
					<li><a
						href="${pageContext.request.contextPath }/jsp/about.jsp">关于</a></li>
				</ul>
			</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h3>注册账号</h3>
			</p>
		</div>
		<div class="row">
			<div class="col-lg-5">
				<h4>
					<label>创建新账号</label>
				</h4>
				<sf:form action="${pageContext.request.contextPath }/register.do"
					method="POST" onsubmit="return check()" modelAttribute="command">
					<div class="form-group">
						<label>学号</label>
						<!-- <input type="text" id="stunum"
							class="form-control" name="stunum" placeholder="学号" required=""> -->
						<sf:input cssClass="form-control" path="stunum" id="stunum"
							placeholder="学号" required="" />
						<p class="help-block">这是你的以后登陆系统的账号</p>
					</div>
					<div class="form-group">
						<label>登陆密码</label>
						<!-- <input id="upwd" name="upwd" type="password"
							class="form-control" placeholder="密码" required=""> -->
						<sf:password path="upwd" id="upwd" placeholder="密码" required=""
							cssClass="form-control" />
						<p class="help-block">密码长度为6-16位</p>
					</div>
					<div class="form-group">
						<label>确认密码</label> <input id="rpwd" type="password"
							class="form-control" placeholder="密码" required="">
						<p class="help-block">密码长度为6-16位</p>
					</div>
					<div class="form-group">
						<label>姓名</label>
						<sf:input cssClass="form-control" path="uname" id="uname"
							placeholder="姓名" required="" />
						<p class="help-block">请输入姓名</p>
						<label style="color:red;" id="msg">${errorMsg }</label> <label
							style="color: red"><sf:errors /></label>
					</div>
					<div class="form-group">
						<label>手机号</label>
						<sf:input cssClass="form-control" path="uphone" id="uphone"
							placeholder="手机号" required="" />
						<p class="help-block">预留手机号</p>
						<label style="color: red"><sf:errors /></label>
					</div>
					<div class="form-group">
						<label>宿舍地址</label>
						<sf:input cssClass="form-control" path="uadress" id="uadress"
							placeholder="宿舍地址" required="" />
						<p class="help-block">宿舍地址格式如 18#b213</p>
						<label style="color:red;" id="msg">${errorMsg }</label> <label
							style="color: red"><sf:errors /></label>
					</div>
					<button class="btn btn-primary" type="submit">注册</button>
					<button class="btn btn-default" onclick="history.go(-1)">返回</button>

				</sf:form>
			</div>
			<!-- 	<div class="col-lg-3 col-md-offset-1">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">注册向导</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<label>步骤一</label>
								<p class="text-info">填写注册信息</p>
							</div>
						</div>
						<div class="row" style="border-top:1px solid #F8F8D1;">
							<div class="col-lg-12">
								<label>步骤二</label>
								<p class="text-info">填写注册信息</p>
							</div>
						</div>
						<div class="row" style="border-top:1px solid #F8F8D1;">
							<div class="col-lg-12">
								<label>步骤一</label>
								<p class="text-info">填写注册信息</p>
							</div>
						</div>
					</div>
				</div>
			</div>
 -->
		</div>

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>
		<script>
			$(document).ready(function() {
				$('#stunum').val('');
				$('#uphone').val('');
			});
			function check() {

				var upwd = $('#upwd').val();
				var rpwd = $('#rpwd').val();
				var stunum = $('#stunum').val();
				var uphone = $('#uphone').val();
				var uname = $('#uname').val();
				var uadress = $('#uadress').val();
				if (!/^1[2|3|4|5]\d{7}$/.test(stunum)) {
					$('#msg').html('输入学号必须合法');
					return false;
				}

				if (!/^\d{1,2}#[a|b]?\d{3}$/.test(uadress)) {
					$('#msg').html('输入地址不合法，地址格式:栋数+#+房间号,如:18#b213');
					return false;
				}
				if (!/^1[3|4|5|8][0-9]\d{4,8}$/.test(uphone)) {
					$('#msg').html('输入手机号必须合法');
					return false;
				}
				if (!/^\D{2,5}$/.test(uname)) {
					$('#msg').html('输入姓名不合法');
					return false;
				}
				if (upwd.length<6||upwd.length>16) {
					$('#msg').html('密码长度为6~16位');
					return false;
				}
				if (upwd != rpwd) {
					$('#msg').html('两次输入密码不一致');
					return false;
				}

				return true;

			}
		</script>
</body>

</html>
