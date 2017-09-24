<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>公司信息</title>
	<%@include file="/common/css.jsp" %>
</head>
<body>
	<div class="widget-box">
		<div class="widget-title">
			<span class="icon"><i class="icon-th"></i></span>
			<h5>公司信息&nbsp;&nbsp;<a href="javascript:void(0);" class="add"><i class="icon-plus"></i>新增</a></h5>
		</div>
		<div class="panel panel-default">
		   <div class="panel-body" style="padding-top:20px;">
		   		<form role="form">
				      公司名称：<input type="text" id="companyName" name="companyName" placeholder="请输入名称" value=""/>
				   <a href="javascript:void(0);" class="search"><i class="icon-search"></i>查询</a>
			   </form>
		   </div>
		</div>
		<div class="widget-content nopadding">
			<table class="table table-bordered data-table">
				
			</table>
		</div>
	</div>
</body>
<%@include file="/common/js.jsp" %>
<script type="text/javascript" src="${basePath}defaultEdit.js"></script>
<script type="text/javascript" src="${basePath}company/index.js"></script>
</html>