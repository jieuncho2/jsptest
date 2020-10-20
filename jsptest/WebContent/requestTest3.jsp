<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test3</title>
<style>
	h1, #commandCell{
		text-align: center;
	}
	table{
		margin: auto;
		width: 400px;
		border: 1px solid red;
	}
</style>
</head>
<body>
	<h1>쿠키, URL, 요청방식에 관련된 정보 예제</h1>
	<table border="1">
		<tr>
			<td>쿠키 정보</td>
<%
	Cookie[] cookie=request.getCookies();
if(cookie==null){
%>
	<td>쿠키가 존재하지 않습니다</td>
<%
} else {
	for(int i=0; i<cookie.length; i++){
		%>
		<td><%=cookie[i].getName() %>(<%=cookie[i].getValue(
				
			) %>)&nbsp;&nbsp;</td>
			<%
				}
			}
		%>
	
		</tr>
		<%
			Enumeration e=request.getHeaderNames();
			while(e.hasMoreElements()){
				String headerName=(String)e.nextElement();
				%>
				<tr>
				<td><%=headerName %></td>
				<td><%=request.getHeader(headerName) %></td>
				<%
			}
		%>
	</table>
</body>
</html>