<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>进销存报表</title>
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
                <legend><a name="color-design">进销存报表</a></legend>
            </fieldset>
            <form class="layui-form " action="">
            	<div class="layui-form-item layui-input-inline">
            		<input type="text" id="stockOrderStartDate" name="createDateText" autocomplete="off"  class="layui-input" placeholder="请选择开始日期">
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<input type="text" id="stockOrderEndDate" name="endDateText" autocomplete="off"  class="layui-input" placeholder="请选择结束日期">
            	</div>
            	<div class="layui-form-item layui-input-inline">
            		<select name="stockOrderStatus">
						<option value="">订货单状态[全部]</option>
						<option value="0">新建</option>
						<option value="1">一审中</option>
						<option value="2">二审中</option>
						<option value="3">下采购单/调拨单</option>
						<option value="4">待门店收货确认</option>
						<option value="5">收货完成</option>
					</select>
            	</div>
            	<div class="layui-form-item layui-input-inline">
	                <button class="layui-btn" lay-submit lay-filter="stockOrderQuerySubmit"><i class="layui-icon">&#xe615;</i><cite>查询</cite></button>
            	</div>
            </form>
            
    	</div>

    	<div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
    		<div class="user-tables">
    			<table id="goodsStockOrderReportsTables" lay-filter="goodsStockOrderReportsTables"></table>
    		</div>
    	</div>
    </div>
</div>
<script type="text/html" id="goodsbar">
<a class="layui-btn layui-btn-normal layui-btn-mini" lay-event="view">查看</a>
</script>

<script type="text/html" id="stockOrderStatusTpl">
{{# if(d.stockOrderStatus == 0){ }}
	新建
{{#  } else if(d.stockOrderStatus == 1){ }}
	一审中
{{#  } else if(d.stockOrderStatus == 2){ }}
	二审中
{{#  } else if(d.stockOrderStatus == 3){ }}
	下采购单/调拨单
{{#  } else if(d.stockOrderStatus == 4){ }}
	待门店收货确认
{{#  } else if(d.stockOrderStatus == 5){ }}
	收货完成
{{#  } }}
</script>

<script type="text/html" id="ackGoodsCountTpl">
{{#  if(d.goodsCount == d.ackGoodsCount){ }}
{{d.goodsCount}}
{{#  } else if(d.ackGoodsCount){ }}
<span style="color:#f00">{{d.ackGoodsCount}}</span>
{{#  } }}
</script>

<script type="text/html" id="ackGoodsTotalPriceTextTpl">
{{#  if(d.goodsTotalPrice == d.ackGoodsTotalPrice){ }}
{{d.goodsTotalPriceText}}
{{#  } else { }}
<span style="color:#f00">{{d.ackGoodsTotalPriceText}}</span>
{{#  } }}
</script>

<!-- 加载js文件 -->
<script type="text/javascript" src="../common/frame/layui/layui.js"></script> 
<script type="text/javascript" src="js/common.js"></script> 
<script type="text/javascript" src="js/reports/store_stock_orders_reports.js"></script> 
</body>
</html>