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
						<h1 class="page-header">报单管理</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">报单列表</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="dataTable_wrapper">
									<div id="dataTables-example_wrapper"
										class="dataTables_wrapper form-inline dt-bootstrap no-footer">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-4">
												<div id="dataTables-example_filter"
													class="dataTables_filter">
													<form id="searbar" action="" method="post"
														class="form-inline" onsubmit="return sear()">
														<select name="dataTables-example_length"
															aria-controls="dataTables-example"
															class="form-control input-sm" id="searchoption"
															required="">
															<option value="" selected="true">查询操作</option>
															<option value="adress">地址</option>
															<option value="uname">报修人</option>
															<option value="quest">问题</option>
														</select> <input type="search" class="form-control input-sm"
															placeholder="请选择查询操作" name="search"
															aria-controls="dataTables-example" style="width:200px;">
														<button type="buttton" class="btn btn-outline btn-primary">查询</button>
														<a type="button" href="#" onclick="toExcel()"
															class="btn btn-outline btn-primary"> <i
															class="glyphicon glyphicon-share"></i>&nbsp;导出
														</a>
													</form>

												</div>
											</div>
										</div>
										<div class="row" style="margin-top: 5px">
											<div class="col-sm-12">
												<form
													action="${pageContext.request.contextPath }/form/dowload.do"
													method="post" id="excel">
													<table
														class="table table-striped table-bordered table-hover dataTable no-footer"
														id="dataTables-example" role="grid"
														aria-describedby="dataTables-example_info">
														<thead>
															<tr role="row">
																<th tabindex="0" aria-controls="dataTables-example"
																	rowspan="1" colspan="1" aria-sort="ascending"
																	aria-label="Rendering engine: activate to sort column descending"
																	style="width: 21px;">
																	<div class="checkbox">
																		<label> <input type="checkbox" value="">
																		</label>
																	</div>
																</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="Browser: activate to sort column ascending"
																	style="width: 50px;">序号</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="Browser: activate to sort column ascending"
																	style="width: 50px;">问题</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="Browser: activate to sort column ascending"
																	style="width: 80px;">报修人</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1" aria-label="地址" style="width: 100px;">地址</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="Engine version: activate to sort column ascending"
																	style="width: 50px;">状态</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="CSS grade: activate to sort column ascending"
																	style="width:80px;">报修时间</th>
																<th class="sorting" tabindex="0"
																	aria-controls="dataTables-example" rowspan="1"
																	colspan="1"
																	aria-label="CSS grade: activate to sort column ascending"
																	style="width: 80px;">预约时间</th>
																<th tabindex="0" aria-controls="dataTables-example"
																	rowspan="1" colspan="1"
																	aria-label="CSS grade: activate to sort column ascending"
																	style="width: 30px;">操作</th>
															</tr>
														</thead>
														<tbody>
															<c:if test="${empty pager.dataList}">
																<tr class="gradeA odd" role="row">
																	<td class="sorting_1" colspan="9">没有相关报单记录</td>
																</tr>
															</c:if>
															<c:if test="${!empty pager.dataList}">
																<c:forEach items="${pager.dataList}" var="form"
																	varStatus="status">
																	<tr class="gradeA odd" role="row">
																		<td class="sorting_1">
																			<div class="checkbox">
																				<label> <input name="formId" type="checkbox"
																					value="${form.fid }">
																				</label>
																			</div>
																		</td>
																		<td><c:out value="${status.count }" /></td>
																		<td><c:if test="${form.ftype eq 1}">网络故障</c:if> <c:if
																				test="${form.ftype eq 2}">电器故障</c:if> <c:if
																				test="${form.ftype eq 3}">水控故障</c:if></td>
																		<td><c:out value="${form.funame }" /></td>
																		<td class="center"><c:out
																				value="${form.fuadress }" /></td>
																		<td class="center"><c:if
																				test="${form.fstatus eq 1}">已处理</c:if> <c:if
																				test="${form.fstatus eq 2}">未处理</c:if></td>
																		<td class="center"><c:out value="${form.fdate }" /></td>
																		<td class="center"><c:out
																				value="${form.fapointment }" /></td>
																		<td class="center">
																			<div class="dropdown">
																				<button type="button"
																					class="btn dropdown-toggle btn-circle btn-primary"
																					id="dropdownMenu1" data-toggle="dropdown">
																					<i class="fa fa-list"></i>
																				</button>
																				<ul class="dropdown-menu" role="menu"
																					aria-labelledby="dropdownMenu1" style="width:20px">
																					<c:if test="${form.fstatus eq 2}">
																						<li role="presentation"><a role="menuitem"
																							tabindex="-1" href="#"
																							onclick="updateStatus(${form.fid},${form.fstatus })"><i
																								class="fa fa-file-text-o"></i>&nbsp;&nbsp;&nbsp;审核</a></li>
																					</c:if>
																					<li role="presentation"><a role="menuitem"
																						tabindex="-1"
																						href="${pageContext.request.contextPath }/form/deail.do?identity=${form.fid}"><i
																							class="fa fa-eye"></i>&nbsp;&nbsp;&nbsp;查看</a></li>
																					<li role="presentation"><a role="menuitem"
																						tabindex="-1" href="#"><i
																							class="fa fa-file-text-o"></i>&nbsp;&nbsp;&nbsp;修改</a></li>
																					<li role="presentation"><a role="menuitem"
																						tabindex="-1" onclick="deleteForm(${form.fid})"><i
																							class="fa fa-trash-o"></i>&nbsp;&nbsp;&nbsp;删除</a></li>
																					<c:if test="${form.fstatus eq 1 }">
																						<li role="presentation" class="divider"></li>
																						<li role="presentation"><a role="menuitem"
																							tabindex="-1" href="#"
																							onclick="sendSMS(${form.fid})"><i
																								class="fa fa-envelope-o"></i>&nbsp;&nbsp;&nbsp;短信</a></li>
																						<li role="presentation"><a role="menuitem"
																							tabindex="-1" target="_blank"
																							href="${pageContext.request.contextPath }/form/print.do?identity=${form.fid}"><i
																								class="fa fa-print"></i>&nbsp;&nbsp;&nbsp;打印</a></li>
																					</c:if>
																				</ul>
																			</div>
																		</td>
																	</tr>
																</c:forEach>
															</c:if>
														</tbody>
													</table>
												</form>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="dataTables_info" id="dataTables-example_info"
													role="status" aria-live="polite">
													总记录&nbsp;&nbsp; <span class="text-primary"><c:out
															value="${pager.totalRecord }" /></span>&nbsp;&nbsp;条
												</div>
											</div>
											<div class="col-sm-6">
												<div class="dataTables_paginate paging_simple_numbers"
													id="dataTables-example_paginate">
													<ul class="pagination">
														<c:if test="${pager.totalPage ne 1}">
															<c:if test="${pager.currentPage gt 1 }">
																<li class="paginate_button previous disabled"
																	aria-controls="dataTables-example" tabindex="0"
																	id="dataTables-example_previous"><a
																	href="${pageContext.request.contextPath }/form/manager/all.do?pageNum=<c:if test='${pager.currentPage-1 le 1 }'>1</c:if>
																<c:if test='${pager.currentPage-1 ne 1 }'>${pager.currentPage-1 }</c:if>">上一页</a>
																</li>
															</c:if>
															<c:forEach begin="1" end="${pager.totalPage }" var="i">
																<li class="paginate_button"
																	aria-controls="dataTables-example" tabindex="0"><a
																	href="${pageContext.request.contextPath }/form/manager/all.do?pageNum=${i}"><c:out
																			value="${i }" /></a></li>
															</c:forEach>
															<c:if test="${pager.currentPage  lt pager.totalPage}">
																<li class="paginate_button next"
																	aria-controls="dataTables-example" tabindex="0"
																	id="dataTables-example_next"><a
																	href="${pageContext.request.contextPath }/form/manager/all.do?pageNum=<c:if test='${pager.currentPage-1 ge pager.totalPage }'>${pager.totalPage }</c:if>
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
							<!-- /.panel-body -->
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
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>
	<script>
		function deleteForm(fid) {
			alert(window.location.href);
			var r = confirm("你确定要删除这条报修记录吗?");
			if (r == true) {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/form/delete.do',
							cache : false,
							data : {
								'fid' : fid
							},
							type : 'POST',
							dataType : 'json',
							success : function(result) {
								var data = eval(result);
								alert(data.msg);
								location.href = '${pageContext.request.contextPath}/form/';
							}
						});
			}
		}

		function updateStatus(fid, fstatus) {
			var url = window.location.href;
			var status = 0;
			if (fstatus == 1) {
				status = 2;
			} else {
				status = 1;
			}
			var r = confirm("处理该条报修记录？");
			if (r == true) {
				$.ajax({
					url : '${pageContext.request.contextPath}/form/review.do',
					type : 'POST',
					data : {
						'fid' : fid,
						'fstatus' : status
					},
					dataType : 'json',
					success : function(result) {
						var data = eval(result);
						console.log(data);
						alert(data.msg);
						location.href = url;
					}
				});
			}
		}
		function toExcel() {
			var vals = $('input:checkbox[name="formId"]:checked').val();
			if (vals == null) {
				alert("请选择需要导出的保修单");
			} else {
				$('#excel').submit();
			}
		}
		function sendSMS(fid, fname) {
			var r = confirm("你确定要向报单序号:" + fid + "的保修单发送短信吗？");
			if (r == true) {
				$.ajax({
					url : '${pageContext.request.contextPath}/form/sms.do',
					type : 'POST',
					data : {
						'identity' : fid
					},
					dataType : 'json',
					success : function(result) {
						alert("发送短信成功!");
					}
				});
			}
		}
		function sear() {
			var url = '${pageContext.request.contextPath }/form/manager/';
			var val = $('#searchoption').find('option:selected').val();
			if (val == null) {
				alert("请选择选项后再进行查询");
				return false;
			} else {
				$('#searbar').attr('action', '');
				var path = url + val + '.do?pageNum=1';
				$('#searbar').attr('action', path);
				return true;
			}`
		}
	</script>
</body>

</html>
