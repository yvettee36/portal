<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>总部进货单管理</title>
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
    <link rel="stylesheet" type="text/css" href="css/user.css" media="all">
</head>
</head>
<body>
<div class="layui-fluid larry-wrapper">
    <div class="layui-row">
    	<div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
    		<fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="color-design">总部派发采购单 -> 选择门店</a></legend>
            </fieldset>
            <form class="layui-form " action="">
            	<div class="layui-form-item layui-input-inline">
            		<select name="province" id="selectProvince" required lay-filter="province">
						<option value="">[不限]</option>
	        			<c:forEach var="province" items="${Provinces}">
				        	<option value="${province.areaId}">${province.areaName}</option>
	        			</c:forEach>
				    </select>
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<select name="city" id="selectCity" required lay-filter="city">
				    </select>
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<select id="selectAreas" name="areaId" required lay-filter="areas">
					</select>
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<input type="text" name="groupName" autocomplete="off"  class="layui-input" value="">
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<button class="layui-btn" lay-submit lay-filter="queryMerStores"><i class="layui-icon">&#xe615;</i><cite>查询</cite></button>
            	</div>
            </form>
    	</div>

    	<div class="layui-col-lg10 layui-col-md12 layui-col-sm12 layui-col-xs12">
    		<div class="user-tables">
    			<table id="groupsTables" lay-filter="groupsTables"></table>
    		</div>
    	</div>
    </div>
</div>
<script type="text/html" id="groupsbar">
  <a class="layui-btn layui-btn-mini" lay-event="select">选择门店</a>
</script>
<!-- 加载js文件 -->
<script type="text/javascript" src="../common/frame/layui/layui.js"></script> 
<script type="text/javascript" src="js/common.js"></script> 
<script type="text/javascript" src="js/stocks/master_stock_order_select.js"></script> 
</body>
</html>