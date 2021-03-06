<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
</head>
<body>
<a href="<%=path%>/page/index.jsp">返回首页</a>
<form action="<%=path%>/FilmServlet" method="get">
	<input name="choice" value="add" style="display: none;">
	<table>
		<tr>
			<td>title:</td>
			<td><input name="title" type="text"></td>
		</tr>
		<tr>
			<td>description:</td>
			<td><input name="description" type="text"></td>
		</tr>
		<tr>
			<td>language:</td>
			<td>
				<select name="language">
					<c:forEach items="${languages}" var="item">
						<option value="${item.language_id}">${item.name}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td><button type="submit">提交</button></td>
			<td><button type="reset">重置</button></td>
		</tr>
	</table>
</form>
</body>
</html>