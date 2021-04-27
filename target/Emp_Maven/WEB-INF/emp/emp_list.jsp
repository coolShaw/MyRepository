<%@page language="java" pageEncoding="utf-8"
	contentType="text/html;charset=utf-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>	
<html>
	<head>
		<meta charset="utf-8"/>
		<title>员工列表</title>
		<link rel="stylesheet" href="../layui/css/layui.css">
		<script src="../layui/layui.js"></script>
	</head>
	<body>

	<script>
		layui.use(['layer', 'form'], function(){
			var layer = layui.layer
					,form = layui.form;

			layer.msg('Welcome ~');
		});
	</script>
		<table class="layui-table" width="60%" align="center"
			border="1" cellspacing="2" cellspadding="2">
			<thead>
			<tr>
				<th>员工号</th>
				<th>姓名</th>
				<th>薪水</th>
				<th>奖金</th>
				<th>入职日期</th>
				<th>部门号</th>
				<th>操作</th>
			</tr>
			</thead>
			<!-- 数据区域 -->
			<c:forEach items="${emps }" var="emp">
				<tr align="center">
					<td>${emp.id }</td>
					<td>${emp.name }</td>
					<td>${emp.salary }</td>
					<td>${emp.bonus }</td>
					<td><fmt:formatDate value="${emp.hiredate }" type="date"/></td>
					<td>${emp.deptno }</td>
					<td>
						<a href="${pageContext.request.contextPath }/emp/toUpdate?id=${emp.id}" class="layui-bg-blue">修改</a>
						<a href="${pageContext.request.contextPath }/emp/delete?id=${emp.id}" onclick="return confirm('是否确定删除${emp.name}?');" class="layui-bg-red">删除</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div align="center">
			<input type="button" class="layui-btn layui-btn-radius" value="增加"
				onclick="location.href='${pageContext.request.contextPath}/emp/toAdd'"/>
		</div>
	</body>
</html>	