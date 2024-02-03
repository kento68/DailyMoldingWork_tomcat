<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<Product> list=(List<Product>)request.getAttribute("list");
	Product product=(Product)request.getAttribute("product");
	
	String id=product==null ? "":String.valueOf(product.getId());
	String arrangementnumber=product == null ? "":String.valueOf(product.getArrangementnumber());
	String workperformancedate=product == null ? "":String.valueOf(product.getWorkperformancedate());
	String workmannumber=product == null ? "":String.valueOf(product.getWorkmannumber());
	String workmantime=product == null ? "":String.valueOf(product.getWorkmantime());
	String workinghours=product == null ? "":String.valueOf(product.getWorkinghours());
	String machinetime=product == null ? "":String.valueOf(product.getMachinetime());
	String machinecode=product == null ? "":String.valueOf(product.getMachinecode());
	String numbernodefectiveproducts=product == null ? "":String.valueOf(product.getNumbernodefectiveproducts());
	String totalnumberdefects=product == null ? "":String.valueOf(product.getTotalnumberdefects());
	String remarks=product == null ? "":String.valueOf(product.getRemarks());
	String defectclassificationcode1=product == null ? "":String.valueOf(product.getDefectclassificationcode1());
	String numberdefects1=product == null ? "":String.valueOf(product.getNumberdefects1());
	String defectclassificationcode2=product == null ? "":String.valueOf(product.getDefectclassificationcode2());
	String numberdefects2=product == null ? "":String.valueOf(product.getNumberdefects2());
	String defectclassificationcode3=product == null ? "":String.valueOf(product.getDefectclassificationcode3());
	String numberdefects3=product == null ? "":String.valueOf(product.getNumberdefects3());
	String defectclassificationcode4=product == null ? "":String.valueOf(product.getDefectclassificationcode4());
	String numberdefects4=product == null ? "":String.valueOf(product.getNumberdefects4());
	String defectclassificationcode5=product == null ? "":String.valueOf(product.getDefectclassificationcode5());
	String numberdefects5=product == null ? "":String.valueOf(product.getNumberdefects5());
	String defectclassificationcode6=product == null ? "":String.valueOf(product.getDefectclassificationcode6());
	String numberdefects6=product == null ? "":String.valueOf(product.getNumberdefects6());
	String defectclassificationcode7=product == null ? "":String.valueOf(product.getDefectclassificationcode7());
	String numberdefects7=product == null ? "":String.valueOf(product.getNumberdefects7());
	String defectclassificationcode8=product == null ? "":String.valueOf(product.getDefectclassificationcode8());
	String numberdefects8=product == null ? "":String.valueOf(product.getNumberdefects8());
	String defectclassificationcode9=product == null ? "":String.valueOf(product.getDefectclassificationcode9());
	String numberdefects9=product == null ? "":String.valueOf(product.getNumberdefects9());

	String err=(String)request.getAttribute("err");
	String msg=(String)request.getAttribute("msg");
	
	// セッションスコープからユーザー情報を取得
	User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Main.css">
<title>DailyMoldingWork</title>
</head>
<body>
<div class="container" style="margin-top:5px;">
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

<form action="<%= request.getContextPath() %>/Main" method="post" >

<header>
	<ul> 
	    <!-- loginUser分岐処理 -->
    	<li><a href="<%= request.getContextPath() %>/Main">TOP</a></li>
    	<% if(loginUser != null) {%>
    	<li><a href="<%= request.getContextPath() %>/Ingestiondata">Log</a></li>
    	<li class="contact"><c:out value="${loginUser.name}"/>:ログイン中</li>
    	<% } else { %>
    	<li class="contact"><c:out value="localuser"/>:ログイン中</li>
    	<% } %>
	</ul>
</header>

 <!-- <label for="flag"><b>フラグ:　</b></label> -->
<input type="hidden" class="form-control" id="flag" name="flag" value="1"required>
<!-- <label for="flag"><b>予備品番1:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber1" name="sparepartnumber1" value="">
<!-- <label for="flag"><b>予備品番2:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber2" name="sparepartnumber2" value="">
<!-- <label for="flag"><b>予備品番3:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber3" name="sparepartnumber3" value="">
<!-- <label for="flag"><b>予備不良数1:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects1" name="sparenumberdefects1" value="">
<!-- <label for="flag"><b>予備不良数2:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects2" name="sparenumberdefects2" value="">
<!-- <label for="flag"><b>予備不良数3:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects3" name="sparenumberdefects3" value="">


<div class="form-row">
  <div class="form-group col-sm-6">
    <label for="arrangementnumber"><b>手配番号　:　</b></label>
    <input type="number" class="form-control" id="arrangementnumber" name="arrangementnumber" value="<%=arrangementnumber%>"required>
  </div>
  <div class="form-group col-sm-6">
    <label for="workperformancedate"><b>作業実績日:　</b></label>
    <input type="date" class="form-control" id="workperformancedate" name="workperformancedate" value="<%=workperformancedate%>"required>
 </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
    <label for="workmannumber"><b>作業担当者:　</b></label>
    <input type="number" class="form-control" id="workmannumber" name="workmannumber" value="<%=workmannumber%>"required>
  </div>
  <div class="form-group col-sm-6">
    <label for="workmantime"><b>作業工数　:　</b></label>
    <input type="number" step="0.01" class="form-control" id="workmantime" name="workmantime" value="<%=workmantime%>"required>
 </div>
</div>
 
<div class="form-group">
	<p class="control-label"><b>日勤夜勤区分:　</b></p>
	<div class="radio-inline">
		<input type="radio" name="workinghours" id="radio1a" value="日勤" required>
        <label for="radio1a">日勤</label>
        <input type="radio" name="workinghours" id="radio1b" value="夜勤"required>
        <label for="radio1b">夜勤</label>
    </div>
</div>

<div class="form-row">
 <div class="form-group col-sm-6">
 	<label for="machinetime"><b>機械時間　:　</b></label>
 	<input type="number" step="0.01" class="form-control" id="machinetime" name="machinetime" value="<%=machinetime%>"required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="machinecode"><b>機械コード:　</b></label>
 		<select class="form-control" name="machinecode" value="<%=machinecode%>" required>
 		<option value=""></option>
        <option value="P1">P1</option>
        <option value="P2">P2</option>
        <option value="P3">P3</option>
        <option value="P4">P4</option>
        <option value="P5">P5</option>
        <option value="P6">P6</option>
        <option value="P7">P7</option>
        <option value="P8">P8</option>
        <option value="P9">P9</option>
        <option value="P10">P10</option>
        <option value="P11">P11</option>
        <option value="P12">P12</option>
        <option value="PL1">PL1</option>
        <option value="PSW1">PSW1</option>
        <option value="PSW2">PSW2</option>
        <option value="PT1">PT1</option>
        <option value="PT2">PT2</option>
        <option value="PT3">PT3</option>
        <option value="PV1">PV1</option>
        <option value="R11">R11</option>
        <option value="R12">R12</option>
        <option value="RD1">RD1</option>
        <option value="RD2">RD2</option>
        <option value="RD3">RD3</option>
        <option value="RD4">RD4</option>
        <option value="RD5">RD5</option>
        <option value="RD6">RD6</option>
        <option value="RD7">RD7</option>
        <option value="RD8">RD8</option>
        <option value="RD9">RD9</option>
        <option value="RD10">RD10</option>
        <option value="RR1">RR1</option>
        <option value="RR2">RR2</option>
        <option value="RR3">RR3</option>
        <option value="RR4">RR4</option>
        <option value="RR5">RR5</option>
        <option value="RR6">RR6</option>
        <option value="RR7">RR7</option>
        <option value="RR8">RR8</option>
        <option value="RR9">RR9</option>
        <option value="RR10">RR10</option>
        <option value="RS1">RS1</option>
        <option value="RS2">RS2</option>
        <option value="PT3">PT3</option>
    </select>
 </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="numbernodefectiveproducts"><b>良品数　　:　</b></label>
 	<input type="number" class="form-control" id="numbernodefectiveproducts" name="numbernodefectiveproducts" value="<%=numbernodefectiveproducts%>"required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="totalnumberdefects"><b>合計不良数:　</b></label>
 	<input type="number" class="form-control" id="totalnumberdefects" name="totalnumberdefects" value="<%=totalnumberdefects%>"required>
 </div>
</div>

<div class="form-group">
  <label for="remarks"><b>備考　　　:　</b></label>
  <input type="text" class="form-control" id="remarks" name="remarks" value="<%=remarks%>">
 </div>
 
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode1"><b>不良分類コード1:　</b></label>
 	<input type="number" class="form-control" id="defectclassificationcode1" name="defectclassificationcode1" value="1010"required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects1"><b>不良数1:　</b></label>
 	<input type="number" class="form-control" id="numberdefects1" name="numberdefects1" value="<%=numberdefects1%>"required>
 </div>
</div>
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode2"><b>不良分類コード2:　</b></label>
 	<input type="number" class="form-control" id="defectclassificationcode2" name="defectclassificationcode2" value="1043"required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects2"><b>不良数2:　</b></label>
 	<input type="number" class="form-control" id="numberdefects2" name="numberdefects2" value="<%=numberdefects2%>"required>
 </div>
</div>
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode3"><b>不良分類コード3:　</b></label>
 	<input type="number" class="form-control" id="defectclassificationcode3" name="defectclassificationcode3" value="1044"required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects3"><b>不良数3:　</b></label>
 	<input type="number" class="form-control" id="numberdefects3" name="numberdefects3" value="<%=numberdefects3%>"required>
 </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode4"><b>不良分類コード4:　</b></label>
 		<select class="form-control" name="defectclassificationcode4">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects4"><b>不良数4:　</b></label>
 	<input type="number" class="form-control" id="numberdefects4" name="numberdefects4" value="<%=numberdefects4%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode5"><b>不良分類コード5:　</b></label>
 		<select class="form-control" name="defectclassificationcode5">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects5"><b>不良数5:　</b></label>
 	<input type="number" class="form-control" id="numberdefects5" name="numberdefects5" value="<%=numberdefects5%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode6"><b>不良分類コード6:　</b></label>
 		<select class="form-control" name="defectclassificationcode6">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects6"><b>不良数6:　</b></label>
 	<input type="number" class="form-control" id="numberdefects6" name="numberdefects6" value="<%=numberdefects6%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode7"><b>不良分類コード7:　</b></label>
 		<select class="form-control" name="defectclassificationcode7">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects7"><b>不良数7:　</b></label>
 	<input type="number" class="form-control" id="numberdefects7" name="numberdefects7" value="<%=numberdefects7%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode8"><b>不良分類コード8:　</b></label>
 		<select class="form-control" name="defectclassificationcode8">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects8"><b>不良数8:　</b></label>
 	<input type="number" class="form-control" id="numberdefects8" name="numberdefects8" value="<%=numberdefects8%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode9"><b>不良分類コード9:　</b></label>
 		<select class="form-control" name="defectclassificationcode9">
        <option value=""></option>
        <option value="1001">1001</option>
        <option value="1002">1002</option>
        <option value="1003">1003</option>
        <option value="1004">1004</option>
        <option value="1005">1005</option>
        <option value="1006">1006</option>
        <option value="1007">1007</option>
        <option value="1008">1008</option>
        <option value="1009">1009</option>
        <option value="1010">1010</option>
        <option value="1021">1021</option>
        <option value="1022">1022</option>
        <option value="1023">1023</option>
        <option value="1024">1024</option>
        <option value="1025">1025</option>
        <option value="1026">1026</option>
        <option value="1027">1027</option>
        <option value="1028">1028</option>
        <option value="1029">1029</option>
        <option value="1030">1030</option>
        <option value="1031">1031</option>
        <option value="1032">1032</option>
        <option value="1033">1033</option>
        <option value="1034">1034</option>
        <option value="1035">1035</option>
        <option value="1036">1036</option>
        <option value="1037">1037</option>
        <option value="1038">1038</option>
        <option value="1039">1039</option>
        <option value="1040">1040</option>
        <option value="1041">1041</option>
        <option value="1042">1042</option>
        <option value="1043">1043</option>
        <option value="1044">1044</option>
        <option value="1045">1045</option>
        <option value="1046">1046</option>
        <option value="1047">1047</option>
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects9"><b>不良数9:　</b></label>
 	<input type="number" class="form-control" id="numberdefects9" name="numberdefects9" value="<%=numberdefects9%>">
 </div>
</div>

  <%if(!id.isEmpty()) {%>
  <input type="hidden" name="id" value="<%=id %>">
  <%} %>
  <button type="submit" class="btn btn-primary"><%=id.isEmpty()?"登録":"更新" %></button>
  
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

<!-- 日勤夜勤区分:初期値に基づいて分岐 -->
var workinghoursValue = '<%=workinghours%>';

if (!workinghoursValue) {
	document.getElementById('radio1a').checked = false;
    document.getElementById('radio1b').checked = false;
} else if(workinghoursValue === '日勤') {
    document.getElementById('radio1a').checked = true;
} else if(workinghoursValue === '夜勤'){
	document.getElementById('radio1b').checked = true;
}

<!-- 機械コード:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var machinecodeValue = '<%=machinecode%>';
    var selectElement = document.getElementsByName('machinecode')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!machinecodeValue) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = machinecodeValue;
    }
});

<!-- 不良分類コード4:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode4Value = '<%=defectclassificationcode4%>';
    var selectElement = document.getElementsByName('defectclassificationcode4')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode4Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode4Value;
    }
});

<!-- 不良分類コード5:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode5Value = '<%=defectclassificationcode5%>';
    var selectElement = document.getElementsByName('defectclassificationcode5')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode5Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode5Value;
    }
});

<!-- 不良分類コード6:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode6Value = '<%=defectclassificationcode6%>';
    var selectElement = document.getElementsByName('defectclassificationcode6')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode6Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode6Value;
    }
});

<!-- 不良分類コード7:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode7Value = '<%=defectclassificationcode7%>';
    var selectElement = document.getElementsByName('defectclassificationcode7')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode7Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode7Value;
    }
});

<!-- 不良分類コード8:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode8Value = '<%=defectclassificationcode8%>';
    var selectElement = document.getElementsByName('defectclassificationcode8')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode8Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode8Value;
    }
});

<!-- 不良分類コード9:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var defectclassificationcode9Value = '<%=defectclassificationcode9%>';
    var selectElement = document.getElementsByName('defectclassificationcode9')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!defectclassificationcode9Value) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = defectclassificationcode9Value;
    }
});

<!-- 不良分類コード4 & 不良数4:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード4と不良数4の初期値を取得
    var defectClassificationCode4Select = document.getElementsByName('defectclassificationcode4')[0];
    var numberDefects4Input = document.getElementById('numberdefects4');

    // 不良分類コード4が変更されたときのイベントリスナーを追加
    defectClassificationCode4Select.addEventListener('input', function () {
        // 不良分類コード4の選択値を取得
        var selectedDefectClassificationCode4 = defectClassificationCode4Select.value;

        // 不良分類コード4が選択された場合、関連する不良数4の入力を必須にする
        if (selectedDefectClassificationCode4) {
            numberDefects4Input.required = true;
        } else {
            // 不良分類コード4が未選択になった場合、関連する不良数4の入力を必須解除
            numberDefects4Input.required = false;
        }
    });

    // 不良数4が変更されたときのイベントリスナーを追加
    numberDefects4Input.addEventListener('input', function () {
        // 不良数4の入力値を取得
        var inputNumberDefects4 = numberDefects4Input.value;

        // 不良数4が入力された場合、関連する不良分類コード4の選択を必須にする
        if (inputNumberDefects4) {
            defectClassificationCode4Select.required = true;
        } else {
            // 不良数4が未入力になった場合、関連する不良分類コード4の選択を必須解除
            defectClassificationCode4Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode4Select.value) {
        numberDefects4Input.required = true;
    }

    if (numberDefects4Input.value) {
        defectClassificationCode4Select.required = true;
    }
});

<!-- 不良分類コード5 & 不良数5:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード5と不良数5の初期値を取得
    var defectClassificationCode5Select = document.getElementsByName('defectclassificationcode5')[0];
    var numberDefects5Input = document.getElementById('numberdefects5');

    // 不良分類コード5が変更されたときのイベントリスナーを追加
    defectClassificationCode5Select.addEventListener('input', function () {
        // 不良分類コード5の選択値を取得
        var selectedDefectClassificationCode5 = defectClassificationCode5Select.value;

        // 不良分類コード5が選択された場合、関連する不良数5の入力を必須にする
        if (selectedDefectClassificationCode5) {
            numberDefects5Input.required = true;
        } else {
            // 不良分類コード5が未選択になった場合、関連する不良数5の入力を必須解除
            numberDefects5Input.required = false;
        }
    });

    // 不良数5が変更されたときのイベントリスナーを追加
    numberDefects5Input.addEventListener('input', function () {
        // 不良数5の入力値を取得
        var inputNumberDefects5 = numberDefects5Input.value;

        // 不良数5が入力された場合、関連する不良分類コード5の選択を必須にする
        if (inputNumberDefects5) {
            defectClassificationCode5Select.required = true;
        } else {
            // 不良数5が未入力になった場合、関連する不良分類コード5の選択を必須解除
            defectClassificationCode5Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode5Select.value) {
        numberDefects5Input.required = true;
    }

    if (numberDefects5Input.value) {
        defectClassificationCode5Select.required = true;
    }
});

<!-- 不良分類コード6 & 不良数6:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード6と不良数6の初期値を取得
    var defectClassificationCode6Select = document.getElementsByName('defectclassificationcode6')[0];
    var numberDefects6Input = document.getElementById('numberdefects6');

    // 不良分類コード6が変更されたときのイベントリスナーを追加
    defectClassificationCode6Select.addEventListener('input', function () {
        // 不良分類コード6の選択値を取得
        var selectedDefectClassificationCode6 = defectClassificationCode6Select.value;

        // 不良分類コード6が選択された場合、関連する不良数6の入力を必須にする
        if (selectedDefectClassificationCode6) {
            numberDefects6Input.required = true;
        } else {
            // 不良分類コード6が未選択になった場合、関連する不良数6の入力を必須解除
            numberDefects6Input.required = false;
        }
    });

    // 不良数6が変更されたときのイベントリスナーを追加
    numberDefects6Input.addEventListener('input', function () {
        // 不良数6の入力値を取得
        var inputNumberDefects6 = numberDefects6Input.value;

        // 不良数6が入力された場合、関連する不良分類コード6の選択を必須にする
        if (inputNumberDefects6) {
            defectClassificationCode6Select.required = true;
        } else {
            // 不良数6が未入力になった場合、関連する不良分類コード6の選択を必須解除
            defectClassificationCode6Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode6Select.value) {
        numberDefects6Input.required = true;
    }

    if (numberDefects6Input.value) {
        defectClassificationCode6Select.required = true;
    }
});

<!-- 不良分類コード7 & 不良数7:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード7と不良数7の初期値を取得
    var defectClassificationCode7Select = document.getElementsByName('defectclassificationcode7')[0];
    var numberDefects7Input = document.getElementById('numberdefects7');

    // 不良分類コード7が変更されたときのイベントリスナーを追加
    defectClassificationCode7Select.addEventListener('input', function () {
        // 不良分類コード7の選択値を取得
        var selectedDefectClassificationCode7 = defectClassificationCode7Select.value;

        // 不良分類コード7が選択された場合、関連する不良数7の入力を必須にする
        if (selectedDefectClassificationCode7) {
            numberDefects7Input.required = true;
        } else {
            // 不良分類コード7が未選択になった場合、関連する不良数7の入力を必須解除
            numberDefects7Input.required = false;
        }
    });

    // 不良数7が変更されたときのイベントリスナーを追加
    numberDefects7Input.addEventListener('input', function () {
        // 不良数7の入力値を取得
        var inputNumberDefects7 = numberDefects7Input.value;

        // 不良数7が入力された場合、関連する不良分類コード7の選択を必須にする
        if (inputNumberDefects7) {
            defectClassificationCode7Select.required = true;
        } else {
            // 不良数7が未入力になった場合、関連する不良分類コード7の選択を必須解除
            defectClassificationCode7Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode7Select.value) {
        numberDefects7Input.required = true;
    }

    if (numberDefects7Input.value) {
        defectClassificationCode7Select.required = true;
    }
});

<!-- 不良分類コード8 & 不良数8:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード8と不良数8の初期値を取得
    var defectClassificationCode8Select = document.getElementsByName('defectclassificationcode8')[0];
    var numberDefects8Input = document.getElementById('numberdefects8');

    // 不良分類コード8が変更されたときのイベントリスナーを追加
    defectClassificationCode8Select.addEventListener('input', function () {
        // 不良分類コード8の選択値を取得
        var selectedDefectClassificationCode8 = defectClassificationCode8Select.value;

        // 不良分類コード8が選択された場合、関連する不良数8の入力を必須にする
        if (selectedDefectClassificationCode8) {
            numberDefects8Input.required = true;
        } else {
            // 不良分類コード8が未選択になった場合、関連する不良数8の入力を必須解除
            numberDefects8Input.required = false;
        }
    });

    // 不良数8が変更されたときのイベントリスナーを追加
    numberDefects8Input.addEventListener('input', function () {
        // 不良数8の入力値を取得
        var inputNumberDefects8 = numberDefects8Input.value;

        // 不良数8が入力された場合、関連する不良分類コード8の選択を必須にする
        if (inputNumberDefects8) {
            defectClassificationCode8Select.required = true;
        } else {
            // 不良数8が未入力になった場合、関連する不良分類コード8の選択を必須解除
            defectClassificationCode8Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode8Select.value) {
        numberDefects8Input.required = true;
    }

    if (numberDefects8Input.value) {
        defectClassificationCode8Select.required = true;
    }
});

<!-- 不良分類コード9 & 不良数9:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード9と不良数9の初期値を取得
    var defectClassificationCode9Select = document.getElementsByName('defectclassificationcode9')[0];
    var numberDefects9Input = document.getElementById('numberdefects9');

    // 不良分類コード9が変更されたときのイベントリスナーを追加
    defectClassificationCode9Select.addEventListener('input', function () {
        // 不良分類コード9の選択値を取得
        var selectedDefectClassificationCode9 = defectClassificationCode9Select.value;

        // 不良分類コード9が選択された場合、関連する不良数9の入力を必須にする
        if (selectedDefectClassificationCode9) {
            numberDefects9Input.required = true;
        } else {
            // 不良分類コード9が未選択になった場合、関連する不良数9の入力を必須解除
            numberDefects9Input.required = false;
        }
    });

    // 不良数9が変更されたときのイベントリスナーを追加
    numberDefects9Input.addEventListener('input', function () {
        // 不良数9の入力値を取得
        var inputNumberDefects9 = numberDefects9Input.value;

        // 不良数9が入力された場合、関連する不良分類コード9の選択を必須にする
        if (inputNumberDefects9) {
            defectClassificationCode9Select.required = true;
        } else {
            // 不良数9が未入力になった場合、関連する不良分類コード9の選択を必須解除
            defectClassificationCode9Select.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode9Select.value) {
        numberDefects9Input.required = true;
    }

    if (numberDefects9Input.value) {
        defectClassificationCode9Select.required = true;
    }
});

</script>
</body>