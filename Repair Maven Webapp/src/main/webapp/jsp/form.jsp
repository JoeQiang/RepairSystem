<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>宿舍报修系统</title>

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
</head>
<body>

	<div id="wrapper">

		<%@include file="nav.jsp"%>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">查看报单</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">报修单</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<form action="#" method="get">
									<table width="100%" class="table table-bordered">
										<tbody class="table-hover">
											<tr>
												<th colspan="2" scope="col">宿舍报修单</th>
											</tr>
											<tr>
												<td colspan="2">
													<ul class="list-group">
														<li class="list-group-item" style="float:left;width:50%;">
															<label>姓名</label>
															<p class="text-default" class="display:inline">
																<c:out value="${form.funame }" />
															</p>
														</li>
														<li class="list-group-item" style="float:left;width:50%;">
															<label>联系电话</label>
															<p class="text-default" class="display:inline;">
																<c:out value="${form.fuphone }" />
															</p>
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<div class="row">
														<div class="col-lg-3">
															<label>报单情况</label>&nbsp;&nbsp;&nbsp;&nbsp;
															<p class="text-danger" style="display:inline;">
																<c:if test="${form.fstatus eq 2}">未处理</c:if>
																<c:if test="${form.fstatus eq 1}">已处理</c:if>
															</p>
														</div>
														<div class="col-lg-3">
															<label>宿舍地址</label> &nbsp;&nbsp;&nbsp;&nbsp;
															<p class="text-default" style="display:inline;">
																<c:out value="${form.fuadress }" />
															</p>
														</div>
														<div class="col-lg-3">
															<label>报修时间</label> &nbsp;&nbsp;&nbsp;&nbsp;
															<p class="text-default" style="display:inline;">
																<c:out value="${form.fdate }" />
															</p>
														</div>
														<div class="col-lg-3">
															<label>预约时间</label> &nbsp;&nbsp;&nbsp;&nbsp;
															<p class="text-default" style="display:inline;">
																<c:out value="${form.fapointment }" />
															</p>
														</div>
													</div>
												</td>
											<tr>
												<td colspan="2"><label>故障描述</label>
													<p class="text-info">
														<c:out value="${form.fcontent }" />
													</p></td>
											</tr>
											<c:if test="${!empty form.frsp}">
												<tr>
													<td colspan="2"><label>反馈信息</label>
														<p class="text-info">
															<c:out value="${form.frsp}" />
														</p></td>
												</tr>
											</c:if>
										</tbody>
									</table>
								</form>
							</div>
							<!-- /.panel-body -->
							<div class="panel-footer">
								<div style="margin-left:42%;">
									<!-- <button type="submit" class="btn btn-primary">提交</button> -->
									<button type="button" onclick="history.go(-1)"
										class="btn btn-default">返回</button>
								</div>
							</div>
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>



			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="../bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
