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
						<h1 class="page-header">新增报单</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">报修单</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<sf:form action="" method="POST" modelAttribute="form">
									<sf:hidden path="uid" value="${user.uid }" />
									<table style="width:100%;" class="table table-bordered">
										<tbody class="table-hover">
											<tr>
												<th colspan="2" scope="col">宿舍报修单</th>
											</tr>
											<tr>
												<td>
													<div class="form-group">
														<label>姓名</label>
														<!--  <input type="text" class="form-control"
															id="exampleInputEmail1" placeholder="请输入姓名"> -->
														<sf:input cssClass="form-control" path="funame"
															placeholder="请输入姓名" required="" value="${user.uname }" />
													</div>
												</td>
												<td>
													<div class="form-group">
														<label>联系电话</label>
														<!-- <input type="text"
															class="form-control" id="exampleInputEmail1"
															placeholder="请输入电话"> -->
														<sf:input cssClass="form-control" path="fuphone"
															placeholder="请输入电话" required="" value="${user.uphone }" />
													</div>
												</td>
											</tr>
											<tr>
												<sf:hidden path="fuadress" value="${user.uadress }" />
												<td colspan="2"><label>地址&amp;故障类型</label>
													<ul class="list-group">
														<li class="list-group-item" style="float:left; width:25%;">
															<select class="form-control" required="">
																<option value="#" selected>区域</option>
																<option>北苑</option>
																<option>南苑</option>
														</select>
														</li>
														<li class="list-group-item" style="float:left; width:25%;">
															<select class="form-control" required="">
																<option value="#" selected>楼栋</option>
																<option>21</option>
														</select>
														</li>
														<li class="list-group-item" style="float:left; width:25%;">
															<input type="text" class="form-control" placeholder="房间号"
															required="">
														</li>
														<li class="list-group-item" style="float:left; width:25%;">
															<sf:select cssClass="form-control" path="ftype"
																required="">
																<option value="#" selected>故障类型</option>
																<option value="1">网络故障</option>
																<option value="2">电器故障</option>
																<option value="3">水控故障</option>
															</sf:select>
														</li>
													</ul></td>
											</tr>
											<tr>
												<td colspan="2">
													<div class="form-group">
														<label>预约时间</label>
														<%-- <sf:input type="date" path="fapointment"
															class="form-control" required="" /> --%>
														<input type="date" class="form-control">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"><label>故障描述</label> <sf:textarea
														cssClass="form-control"
														cssStyle="width:100%;margin-top:5px; resize:none"
														cols="10" rows="10" placeholder="故障描述" required=""
														path="fcontent"></sf:textarea></td>
											</tr>
										</tbody>
									</table>
								</sf:form>
							</div>
							<!-- /.panel-body -->
							<div class="panel-footer">
								<div style="margin-left:42%;">
									<button type="submit" class="btn btn-primary">提交</button>
									<button type="button" class="btn btn-default">返回</button>
								</div>
							</div>
						</div>
					</div>
					<!-- /.panel -->

				</div>
				<!-- /.col-lg-12 -->
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
