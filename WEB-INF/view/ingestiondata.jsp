<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<Product> list=(List<Product>)request.getAttribute("list");
	Product product=(Product)request.getAttribute("product");
	String arrangementnumber=product == null ? "":String.valueOf(product.getArrangementnumber());
	String workperformancedate=product == null ? "":product.getWorkperformancedate();
	String id=product==null ? "":String.valueOf(product.getId());
	String err=(String)request.getAttribute("err");
	String msg=(String)request.getAttribute("msg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Registration.css">
<title>DailyMoldingWork</title>
</head>
<body>
<div class="container" style="margin-top:10px;">
<% if(err !=null){%>
<div class="alert alert-danger" role="alert">
<%=err %>
</div>
<%} %>
<% if(msg !=null){%>
<div class="alert alert-success" role="alert">
<%=msg %>
</div>
<%} %>

<form action="<%= request.getContextPath() %>/ingestiondata" method="post" >

<header>
	<ul>
    	<li><a href="<%= request.getContextPath() %>/Main">TOP</a></li>
    	<li class="contact"><c:out value="${loginUser.name}"/>:ログイン中</li>
	</ul>
</header>

<%if(list != null && list.size()>0){%>
<table class="table table-striped mt-4">
<tr><th>ID</th><th>作業実績日</th><th>手配番号</th><th>機械コード</th><th>日勤夜勤区分</th><th>備考</th>
<th></th></tr>

<%for(Product p:list) {%>
<tr><th><%= p.getId() %></th><td><%= p.getWorkperformancedate() %></td><td><%= p.getArrangementnumber() %></td>
<td><%= p.getMachinecode() %></td><td><%= p.getWorkinghours() %></td><td><%=p.getRemarks() %></td>
<td>
<a href="<%= request.getContextPath() %>/Main?action=update&id=<%=String.valueOf(p.getId()) %>" class="btn btn-primary">更新</a>
<a href="<%= request.getContextPath() %>/Ingestiondata?action=delete&id=<%=String.valueOf(p.getId()) %>" class="btn btn-danger" onclick="return confirm('削除してよろしいですか？');">削除</a>
<a href="<%= request.getContextPath() %>/Ingestiondata?action=download&id=<%=String.valueOf(p.getId()) %>" class="btn btn-success" onclick="return confirm('ダウンロードしてよろしいですか？');">CSV</a>
</td>
</tr>

<%} %>
</table>
<%} %>
</div>

<footer>
	<ul>
    	<li><a href="<%= request.getContextPath() %>/Logout">Logout</a></li>
	</ul>
</footer>
 
</form>
</tr>

<script>
const forms=document.getElementsByClassName("form-control");
const alerts=document.getElementsByClassName("alert");
for(let i=0;i<forms.length;i++){
	forms[i].addEventListener("focus",()=>{
		for(let j=0;j<alerts.length;j++){
			alerts[j].style.display="none";
		}
	});
}
</script>
</body>