<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pos Query Order Print</title>
<link href="layui/css/layui.css" rel="stylesheet">
</head>
<body  class="layui-layout">

<fieldset class="layui-elem-field layui-field-title">
  <legend>获取小票打印信息</legend>
</fieldset>
<form class="layui-form" method="post" action="posGetOrderPrintInfo">
	<div class="layui-form-item">
	    <label class="layui-form-label">版本号</label>
	    <div class="layui-input-block">
	      <input type="text" name="version" required  autocomplete="off" class="layui-input" value="1.1.0">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">APP ID</label>
	    <div class="layui-input-block">
	      <input type="text" name="softId" required  autocomplete="off" value="1" class="layui-input">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">spCode</label>
	    <div class="layui-input-block">
	      <input type="text" name="spCode" required  autocomplete="off" value="0" class="layui-input">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">os</label>
	    <div class="layui-input-block">
	      <input type="text" name="os" required  autocomplete="off" value="AndroidPOS" class="layui-input">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">deviceType</label>
	    <div class="layui-input-block">
	      <input type="text" name="deviceType" required  autocomplete="off" value="AndroidPOS" class="layui-input">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">longitude</label>
	    <div class="layui-input-block">
	      <input type="text" name="longitude" required  autocomplete="off" value="30.259244" class="layui-input">
	    </div>
	</div>
	<div class="layui-form-item">
	    <label class="layui-form-label">latitude</label>
	    <div class="layui-input-block">
	      <input type="text" name="latitude" required  autocomplete="off" value="120.219375" class="layui-input">
	    </div>
	</div>
	
	<div class="layui-form-item">
	    <label class="layui-form-label">Token</label>
	    <div class="layui-input-block">
	      <input type="text" name="token" required  autocomplete="off" value="" class="layui-input">
	    </div>
	</div>
	
	<div class="layui-form-item">
	    <label class="layui-form-label">订单号</label>
	    <div class="layui-input-block">
	      <input type="text" name="orderCode" required  autocomplete="off" value="" class="layui-input">
	    </div>
	</div>
	
	<div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit>查询</button>
	      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
	    </div>
	</div>

</form>

<!-- Layui necessary plugins -->
<script type="text/javascript" src="${ctx}/layui/layui.js"></script>

<script type="text/javascript">

layui.use(['jquery', 'form', 'layer', 'element', 'table', 'laydate'], function(){
	
	var $ = layui.jquery
	var form = layui.form;
	var layer = layui.layer;
	var element = layui.element;
	var table = layui.table;
	
	var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#orderDate', //指定元素,
	    type: 'date'
	  });
});

</script>
</body>
</html>