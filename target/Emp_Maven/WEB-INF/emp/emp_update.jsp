<%@page language="java" pageEncoding="utf-8"
	contentType="text/html;charset=utf-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html>	
<html>
	<head>
		<meta charset="utf-8"/>
		<title>修改员工</title>

	</head>
	<body>


	<form action="${pageContext.request.contextPath }/emp/update" method="post">
			<table border="1" align="center">
				<tr>
					<td>员工号</td>
					<td>
						<input type="text" value="${emp.id }" name="id" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>姓名</td>
					<td>
						<input type="text" value="${emp.name }" name="name"/>
					</td>
				</tr>
				<tr>
					<td>薪水</td>
					<td>
						<input type="text" value="${emp.salary }" name="salary"/>
					</td>
				</tr>
				<tr>
					<td>奖金</td>
					<td>
						<input type="text" value="${emp.bonus }" name="bonus"/>
					</td>
				</tr>
				<tr>
					<td>入职日期</td>
					<td>
						<input type="text" value="<fmt:formatDate value='${emp.hiredate }' type='date'/>" name="hiredate"/>
					</td>
				</tr>
				<tr>
					<td>部门号</td>
					<td>
						<input type="text" value="${emp.deptno }" name="deptno"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="提交"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>	