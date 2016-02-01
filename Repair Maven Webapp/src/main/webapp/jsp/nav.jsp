<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">宿舍报修系统</a>
	</div>
	<!-- /.navbar-header -->

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>${user.uname }</a></li>
				<li class="divider"></li>
				<li><a href="${pageContext.request.contextPath }/logout.do"><i
						class="fa fa-sign-out fa-fw"></i> 退出</a></li>
			</ul> <!-- /.dropdown-user --></li>
		<!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<c:if test="${user.urank eq 0 }">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</c:if>
					</div> <!-- /input-group -->
				</li>
				<c:if test="${user.urank eq 0 }">
					<li><a
						href="${pageContext.request.contextPath }/main/admin.do"><i
							class="fa fa-wrench fa-fw"></i> 系统首页</a></li>
					<!-- 报单管理 -->
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
							报单管理<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath }/form/addNew.do">新增报单
							</a></li>
							<li><a href="#">报单状态 <span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">全部</a></li>
									<li><a href="#">未审核</a></li>
									<li><a href="#">已审核</a></li>
								</ul> <!-- /.nav-third-level --></li>
						</ul> <!-- /.nav-second-level --></li>

					<li><a href="#"><i class="fa fa-edit fa-fw"></i>短信管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">发送短信</a></li>
							<li><a href="#">已发短信</a></li>
						</ul></li>
				</c:if>
				<!-- 我要保修 -->
				<c:if test="${user.urank eq 1 }">
					<li><a href="#"><i class="fa fa-table fa-fw"></i>我要报修<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath }/form/addNew.do">添加报修单</a></li>
							<li><a href="#">进度查询</a></li>
						</ul></li>
				</c:if>
				<!-- 个人中心 -->
				<li><a href="#"><i class="fa fa-table fa-fw"></i> 个人中心<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a
							href="${pageContext.request.contextPath }/user/infomation.do?identity=${user.uid}">个人信息</a></li>
						<li><a
							href="${pageContext.request.contextPath }/user/bcpwd.do">修改密码</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>
