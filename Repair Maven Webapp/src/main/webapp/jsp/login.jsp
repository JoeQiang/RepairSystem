<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
					<li><a
						href="${pageContext.request.contextPath }/user/loginView.do">登陆</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/registerView.do">注册</a></li>
					<li><a
						href="${pageContext.request.contextPath }/jsp/about.jsp">关于</a></li>
				</ul>
			</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h2 style="text-align:center;" class="panel-title">请登录</h2>
					</div>
					<div class="panel-body">
						<form role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="注册手机号" name="email"
										type="text" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="输入密码" name="password"
										type="password" value="">
									<p class="help-block" style="float:right;">
										<a href="www.baidu.com">忘记密码?</a>
									</p>
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">记住密码
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<a href="index.html" class="btn btn-lg btn-primary btn-block">登录</a>
							</fieldset>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>

</body>

</html>
