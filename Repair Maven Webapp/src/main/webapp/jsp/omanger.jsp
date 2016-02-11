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
						<h1 class="page-header">催单管理</h1>
					</div>
				</div>
				<div class="row">
					<table class="table table-striped">
						<caption>单号列表</caption>
						<thead>
							<tr>
								<th>单号</th>
								<th>内容</th>
								<th>时间</th>
								<th>查看</th>
							</tr>
						</thead>

						<tbody>
							<c:if test="${empty pager }">
								<tr>
									<td colspan="4">没有相关记录</td>
								</tr>
							</c:if>
							<c:if test="${!empty pager }">
								<c:forEach items="${pager.dataList }" var="order">
									<tr>
										<td><c:out value="${order.fid }" /></td>
										<td><c:out value="${order.ocontent }" /></td>
										<td><c:out value="${order.odate }" /></td>
										<td><button id="${order.oid }"
												onclick="showOrder(${order.oid})" class="btn btn-primary">查看</button>
											<button class="btn btn-warning"
												onclick="delOrder(${order.oid})">删除</button></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
					<div class="col-sm-6">
						<div class="dataTables_paginate paging_simple_numbers"
							id="dataTables-example_paginate">
							<ul class="pagination">
								<c:if test="${pager.totalPage ne 1}">
									<c:if test="${pager.currentPage gt 1 }">
										<li class="paginate_button previous disabled"
											aria-controls="dataTables-example" tabindex="0"
											id="dataTables-example_previous"><a
											href="${pageContext.request.contextPath }/order/manager.do?pageNum=<c:if test='${pager.currentPage-1 le 1 }'>1</c:if>
																<c:if test='${pager.currentPage-1 ne 1 }'>${pager.currentPage-1 }</c:if>">上一页</a>
										</li>
									</c:if>
									<c:forEach begin="1" end="${pager.totalPage }" var="i">
										<li class="paginate_button" aria-controls="dataTables-example"
											tabindex="0"><a
											href="${pageContext.request.contextPath }/order/manager.do?pageNum=${i}"><c:out
													value="${i }" /></a></li>
									</c:forEach>
									<c:if test="${pager.currentPage  lt pager.totalPage}">
										<li class="paginate_button next"
											aria-controls="dataTables-example" tabindex="0"
											id="dataTables-example_next"><a
											href="${pageContext.request.contextPath }/order/manager.do?pageNum=<c:if test='${pager.currentPage-1 ge pager.totalPage }'>${pager.totalPage }</c:if>
																<c:if test='${pager.currentPage-1 ne pager.totalPage }'>${pager.currentPage+1 }</c:if>">下一页</a></li>
									</c:if>
								</c:if>
							</ul>
						</div>
					</div>
				</div>

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
					<h4 class="modal-title" id="myModalLabel">用户催单</h4>
				</div>
				<input type="hidden" id="oID" value="">
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-6">
							<label>单号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<p id="fId"></p>
						</div>
						<div class="col-lg-6">
							<label>时间:&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<p id="odate"></p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<label>内容:&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<p id="ocontent"></p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<label>反馈信息:&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<textarea id="orespont" rows="4" cols="12" class="form-control"
								style="resize:none;" placeholder="请填写反馈信息"></textarea>
						</div>
					</div>
					<div class="row">
						<label><p id="msg" style="color: red;"></p></label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" onclick="corfirmOrder()"
						class="btn btn-primary">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
				</div>
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
			function showOrder(oid) {
				$.ajax({
					url : '${pageContext.request.contextPath}/order/single.do',
					data : {
						'oid' : oid
					},
					type : 'POST',
					success : function(result) {
						$('#fId').text('');
						$('#odate').text('');
						$('#ocontent').text('');
						$('#oID').val('');
						var data = eval(result);
						console.log(data);
						$('#oID').val(oid);
						$('#fId').text(data.fid);
						$('#odate').text(timeStamp2String(data.odate));
						$('#ocontent').text(data.ocontent);
						$('#myModal').modal('show');
					}
				});
			}
			function delOrder(oid) {
				var r = confirm("你确定要删除这一条催单信息？");
				if (r == true) {
					location.href = '${pageContext.request.contextPath}/order/delete.do?oid='
							+ oid;
				}
			}
			function timeStamp2String(time) {
				var datetime = new Date();
				datetime.setTime(time);
				var year = datetime.getFullYear();
				var month = datetime.getMonth() + 1 < 10 ? "0"
						+ (datetime.getMonth() + 1) : datetime.getMonth() + 1;
				var date = datetime.getDate() < 10 ? "0" + datetime.getDate()
						: datetime.getDate();
				var hour = datetime.getHours() < 10 ? "0" + datetime.getHours()
						: datetime.getHours();
				var minute = datetime.getMinutes() < 10 ? "0"
						+ datetime.getMinutes() : datetime.getMinutes();
				var second = datetime.getSeconds() < 10 ? "0"
						+ datetime.getSeconds() : datetime.getSeconds();
				return year + "-" + month + "-" + date + " " + hour + ":"
						+ minute + ":" + second;
			}
			function corfirmOrder() {
				var orespont = $('#orespont').val();
				var oid = $('#oID').val();
				$('#orespont').val('');
				if (orespont == null || orespont == "") {
					$('#myModal').modal('hide');
				} else {
					$
							.ajax({
								url : '${pageContext.request.contextPath}/order/addOrsp.do',
								type : 'POST',
								data : {
									'oid' : oid,
									'orespont' : orespont
								},
								beforeSend : function() {
									$('#msg').text('');
									$('#msg').text('正在添加反馈信息...');
								},
								success : function() {
									$('#msg').text('');
									$('#msg').text('添加反馈信息成功');
								}
							});
				}
			}
		</script>
</body>

</html>
