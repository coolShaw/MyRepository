<%@page language="java" pageEncoding="utf-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>	
<html>
	<head>
		<meta charset="utf-8"/>
		<title>新增员工</title>

		<link rel="stylesheet" href="../layui/css/layui.css">
	</head>
	<body>

	<script src="../layui/layui.js"></script>
	<script>
		layui.use(['layer', 'form'], function(){
			var layer = layui.layer
					,form = layui.form;

			//layer.msg('欢迎');
		});
	</script>
	<form action="${pageContext.request.contextPath }/emp/add" method="post">
			<table border="1" align="center">
				<tr>
					<td>姓名</td>
					<td>
						<input type="text" name="name"/>
					</td>
				</tr>
				<tr>
					<td>薪水</td>
					<td>
						<input type="text" name="salary"/>
					</td>
				</tr>
				<tr>
					<td>奖金</td>
					<td>
						<input type="text" name="bonus"/>
					</td>
				</tr>
				<tr>
					<td>入职日期</td>
					<td>
						<input type="text" name="hiredate"/>
					</td>
				</tr>
				<tr>
					<td>部门号</td>
					<td>
						<input type="text" name="deptno"/>
					</td>
				</tr>
				<tr>
					<td colspan="2"  align="center">
						<input type="submit" class="layui-btn layui-btn-radius layui-btn-normal" value="提交"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>	