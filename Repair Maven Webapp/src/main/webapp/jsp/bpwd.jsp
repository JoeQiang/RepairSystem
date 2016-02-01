<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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

	<div id="wrapper">
		<jsp:include page="nav.jsp" />
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">修改密码</h1>
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">修改密码</div>
						<sf:form modelAttribute="user" onsubmit="return check()"
							action="${pageContext.request.contextPath }/user/bcpwd.do"
							method="POST">
							<div class="panel-body">
								<div class="form-group">
									<label>学号:</label>
									<sf:input cssClass="form-control" path="stunum" disabled="true"
										value="${user.stunum }" placeholder="学号" />
								</div>
								<div class="form-group">
									<label>新密码</label>
									<sf:password id="upwd" cssClass="form-control" path="upwd"
										required="" placeholder="输入新密码" />
								</div>
								<div class="form-group">
									<label>确认密码</label> <input id="rpwd" class="form-control"
										type="password" id="rpwd" required="" placeholder="重复输入新密码">
								</div>
								<label style="color:red;">${msg }<p id="msg"></p></label>
							</div>
							<div class="panel-footer">
								<button class="btn btn-primary" type="submit" id="cpbtn">修改</button>
								<button class="btn btn-default" onclick="history.go(-1)">返回</button>
							</div>
						</sf:form>
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
	<script>
		function check() {
			var uwpd = $('#upwd').val();
			var rpwd = $('#rpwd').val();
			if (uwpd.length <6||upwd.length>16) {
				$('#msg').html('密码长度为6~16位');
				return false;
			}
			if(upwd!=rpwd){
				$('#msg').html('两次输入密码不一致');
				return false;
			}
			$('#cpbtn').click(function() {
				alert('修改密码成功');
			});
			return true;
		}
	</script>
</body>

</html>
