<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>部门管理</title>
	<meta name="keywords" content="" />
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="Shortcut Icon" href="/favicon.ico" />
	<!-- load css -->
	<link rel="stylesheet" type="text/css" href="../common/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/gobal.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/animate.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/mypanel.css" media="all">
</head>
</head>
<body>
<div class="layui-fluid larry-wrapper">
    <div class="layui-row lay-col-space20">
    	<div class="layui-cos-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
    		<section class="larry-body">
                <div class="larry-body-header">
    				<span class="tit">部门信息</span>
    			</div>
    			<div class="larry-body-content clearfix changepwd">
                    <form class="layui-form layui-col-lg8 layui-col-md12 layui-col-sm12 layui-col-xs12 " method="post" action="">
			 	        <div class="layui-form-item">
				        	<label class="layui-form-label">部门名称</label>
				        	<div class="layui-input-block">  
				        	  	<input type="hidden" name="merGroupId" value="${sessionScope.CurrentMerGroup.merGroupId}">
				        	  	<input type="text" name="groupName" required lay-verify="groupName"  autocomplete="off"  class="layui-input" value="${sessionScope.CurrentMerGroup.groupName}" placeholder="请输入部门名称">
				        	</div>
				        </div>
				        <div class="layui-form-item">
				        	<label class="layui-form-label">部门描述</label>
				        	<div class="layui-input-block">  
				        	  	<input type="text" name="groupDesc" autocomplete="off"  class="layui-input" value="${sessionScope.CurrentMerGroup.groupDesc}">
				        	</div>
				        </div>
				        <div class="layui-form-item change-submit">
				        	<div class="layui-input-block">
				        		<button class="layui-btn larry-tj" lay-submit lay-filter="groupSubmit">立即提交</button>
				        		<a class="layui-btn layui-btn-primary" href="merchant_groups.html">取消</a>
				        	</div>
				        </div>
				        
			        </form>
    			</div>
    		</section>
    	</div>
    </div>
</div>
<!-- 加载js文件 -->
<script type="text/javascript" src="../common/frame/layui/layui.js"></script> 
<script type="text/javascript" src="js/common.js"></script> 
<script type="text/javascript" src="js/groups.js"></script> 
</body>
</html>