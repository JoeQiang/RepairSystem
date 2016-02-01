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
						<h1 class="page-header">个人信息</h1>
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">更改信息</div>
						<sf:form modelAttribute="user"
							action="${pageContext.request.contextPath }/user/infomation.do"
							method="POST">
							<div class="panel-body">
								<sf:hidden path="uid" value="${user.uid }" />
								<div class="form-group">
									<label>学号:</label>
									<sf:input cssClass="form-control" path="stunum" disabled="true"
										value="${user.stunum }" placeholder="学号" />
									<%-- <input type="text" class="form-control" name=""
										disabled="disabled" value="${user.stunum }" placeholder="学号" /> --%>
								</div>
								<div class="form-group">
									<label>姓名:</label>
									<sf:input cssClass="form-control" path="uname" required=""
										value="${user.uname }" placeholder="姓名 " />
								</div>
								<div class="form-group">
									<label>手机号码:</label>
									<sf:input cssClass="form-control" path="uphone"
										value="${user.uphone }" placeholder="手机号码" required="" />
								</div>
								<div class="form-group">
									<label>宿舍地址</label>
									<sf:input cssClass="form-control" path="uadress"
										value="${user.uadress }" placeholder="宿舍地址" required="" />
								</div>
								<label style="color:red;">${msg }</label>
							</div>
							<div class="panel-footer">
								<button class="btn btn-primary" type="submit"
									onclick="alert('更新成功')">更新</button>
								<button class="btn btn-default" onclick="history.go(-1)">返回</button>
							</div>
						</sf:form>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
	<!-- /.row -->
	<!-- 头部信息 -->
	</div>
	<!-- /.container-fluid -->
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->



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
