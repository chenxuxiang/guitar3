<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>查询页面</title>
<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}

table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
</head>
<body>
	<table class="gridtable">
		<tr>
			<td>serialNumber</td>
			<td>price</td>
			<td>builder</td>
			<td>model</td>
			<td>type</td>
			<td>numStrings</td>
			<td>backWood</td>
			<td>topWood</td>
			<td>操作</td>
		</tr>
		<tr>
			<td>${requestScope.guitar.serialNumber}</td>
			<td>${requestScope.guitar.price}</td>
			<td>${requestScope.guitar.getSpec().builder}</td>
			<td>${requestScope.guitar.getSpec().model}</td>
			<td>${requestScope.guitar.getSpec().type}</td>
			<td>${requestScope.guitar.getSpec().numStrings}</td>
			<td>${requestScope.guitar.getSpec().backWood}</td>
			<td>${requestScope.guitar.getSpec().topWood}</td>
			<td><a
				href="delGuitar?serialNumber=${requestScope.guitar.serialNumber}">删除</a></td>
		</tr>
	</table>
</body>
</html>
