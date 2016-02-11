<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

</head>

<body>

	<div id="wrapper">
		<jsp:include page="nav.jsp" />
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">进度查看</h1>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">进度查看</h3>
						</div>
						<div class="panel-body">
							<p>这是你报修过的所有报修单</p>
						</div>

						<table class="table">
							<tr>
								<th>单号</th>
								<th>报修时间</th>
								<th>报修类型</th>
								<th>状态</th>
								<th>催单</th>
							</tr>
							<c:if test="${empty list }">
								<tr>
									<td colspan="5">没有报修记录</td>
								</tr>
							</c:if>
							<c:if test="${!empty list }">
								<c:forEach items="${list }" var="form">
									<tr>
										<td><c:out value="${form.fid }" /></td>
										<td><c:out value="${form.fdate}" /></td>
										<td><c:if test="${form.ftype eq 1}">网络故障</c:if> <c:if
												test="${form.ftype eq 2}">电器故障</c:if> <c:if
												test="${form.ftype eq 3}">水控故障</c:if></td>
										<td><c:if test="${form.fstatus eq 1}">已处理</c:if> <c:if
												test="${form.fstatus eq 2}">未处理</c:if></td>
										<td><c:if test="${form.fstatus eq 1}">&nbsp;&nbsp;&nbsp;&nbsp;</c:if>
											<c:if test="${form.fstatus eq 2}">
												<button id="${form.fid }" class="btn btn-primary btn-lg"
													onclick="order(${form.fid},${form.uid })">催单</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
					<c:if test="${!empty orderList }">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">反馈信息</h3>
							</div>
							<div class="panel-body">
								<p>这是你报修过的所有报修单</p>
								<table class="table table-striped">
									<thead>
										<tr>
											<th>单号</th>
											<th>时间</th>
											<th>内容</th>
											<th>反馈信息</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orderList }" var="order">
											<tr>
												<td><c:out value="${ order.fid}" /></td>
												<td><c:out value="${order.odate }" /></td>
												<td><c:out value="${order.ocontent }" /></td>
												<td><c:out value="${ order.orespont}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>

		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">催单</h4>
					</div>
					<form class="form" action="">
						<div class="modal-body">
							<label>请添加催单内容</label> <input id="uid" type="hidden" name="uid"
								value=""> <input id="fid" type="hidden" name="fid"
								value="">
							<textarea id="ocontent" name="ocontent" class="form-control"
								rows="12" cols="24" style="resize:none" placeholder="请添加建议或意见"></textarea>
						</div>
						<div class="modal-footer">
							<button type="button" onclick="clickorder()"
								class="btn btn-primary">催单</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
						</div>
					</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
			<!-- jQuery -->
			<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

			<!-- Bootstrap Core JavaScript -->
			<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

			<!-- Metis Menu Plugin JavaScript -->
			<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

			<!-- Custom Theme JavaScript -->
			<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>
			<script>
				function order(fid, uid) {
					$('#myModal').modal('show');
					$('#fid').val(fid);
					$('#uid').val(uid);
				}
				function clickorder() {
					var fid = $('#fid').val();
					var uid = $('#uid').val();
					var ocontent = $('#ocontent').val();
					if (ocontent == null || ocontent == "") {
						alert('请填写内容再进行催单!');
					} else {
						$
								.ajax({
									url : '${pageContext.request.contextPath}/order/save.do?',
									data : {
										'fid' : fid,
										'ocontent' : ocontent,
										'uid' : uid
									},
									type : 'POST',
									success : function() {
										$('#myModal').modal('hide');
										alert('催单成功');
										var se = "#" + fid;
										$(se).attr('disabled', true);
									}
								});
					}
				}
			</script>
</body>

</html>
