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
	String partnumber=product == null ? "":String.valueOf(product.getPartnumber());

	String arrangementnumber_R=product == null ? "":String.valueOf(product.getArrangementnumber_R());
	String numbernodefectiveproducts_R=product == null ? "":String.valueOf(product.getNumbernodefectiveproducts_R());
	String totalnumberdefects_R=product == null ? "":String.valueOf(product.getTotalnumberdefects_R());
	String numberdefects1_R=product == null ? "":String.valueOf(product.getNumberdefects1_R());
	String numberdefects2_R=product == null ? "":String.valueOf(product.getNumberdefects2_R());
	String numberdefects3_R=product == null ? "":String.valueOf(product.getNumberdefects3_R());
	String numberdefects4_R=product == null ? "":String.valueOf(product.getNumberdefects4_R());
	String numberdefects5_R=product == null ? "":String.valueOf(product.getNumberdefects5_R());
	String numberdefects6_R=product == null ? "":String.valueOf(product.getNumberdefects6_R());
	String numberdefects7_R=product == null ? "":String.valueOf(product.getNumberdefects7_R());
	String numberdefects8_R=product == null ? "":String.valueOf(product.getNumberdefects8_R());
	String numberdefects9_R=product == null ? "":String.valueOf(product.getNumberdefects9_R());
	String partnumber_R=product == null ? "":String.valueOf(product.getPartnumber_R());
	
	String err=(String)request.getAttribute("err");
	String msg=(String)request.getAttribute("msg");
	String arrangementLabel=(String)request.getAttribute("arrangementLabel");
	
	// セッションスコープからユーザー情報を取得
	User loginUser = (User) session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Main.css">
<title>DailyMoldingWork</title>
</head>
<body>

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

<div class="container-fluid" style="margin-top:20px;">

<form action="<%= request.getContextPath() %>/main2" method="post" >

<header>
	<ul> 
	    <!-- loginUser分岐処理 -->
    	<li><a href="<%= request.getContextPath() %>/main">SingleData</a></li>
    	<li><a href="<%= request.getContextPath() %>/main2">MultiData</a></li>
    	<% if(loginUser != null) {%>
    	<li><a href="<%= request.getContextPath() %>/Ingestiondata">Log</a></li>
    	<li><a href="<%= request.getContextPath() %>/BacklogList">Backlog</a></li>
    	<li class="contact"><c:out value="${loginUser.name}"/>:ログイン中</li>
    	<button type="button" class="btn btn-primary custom-btn" style="margin-left: 5px; margin-bottom: 5px; padding-top: 1px; padding-bottom: 1px;" id="toggle-language-btn" onclick="toggleLanguage()">Dịch văn bản</button>
    	<% } else { %>
    	<li class="contact"><c:out value="localuser"/>:ログイン中</li>
    	<button type="button" class="btn btn-primary custom-btn" style="margin-left: 5px; margin-bottom: 5px; padding-top: 1px; padding-bottom: 1px;" id="toggle-language-btn" onclick="toggleLanguage()">Dịch văn bản</button>
    	<% } %>
	</ul>

<!-- ボタンを押したときにフォームの必須フィールドのバリデーションがトリガーされないようにする  type="button -->
</header>

 <!-- <label for="flag"><b>フラグ:　</b></label> -->
<input type="hidden" class="form-control" id="flag" name="flag" value="2"required>
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

<!-- <label for="flag"><b>作業工数_R:　</b></label> -->
<input type="hidden" class="form-control" id="workmantime_R" name="workmantime_R" value="0">
<!-- <label for="flag"><b>機械時間_R:　</b></label> -->
<input type="hidden" class="form-control" id="machinetime_R" name="machinetime_R" value="0">
<!-- <label for="flag"><b>不良分類コード1_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode1_R" name="defectclassificationcode1_R" value="0">
<!-- <label for="flag"><b>不良分類コード2_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode2_R" name="defectclassificationcode2_R" value="0">
<!-- <label for="flag"><b>不良分類コード3_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode3_R" name="defectclassificationcode3_R" value="0">
<!-- <label for="flag"><b>不良分類コード4_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode4_R" name="defectclassificationcode4_R" value="0">
<!-- <label for="flag"><b>不良分類コード5_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode5_R" name="defectclassificationcode5_R" value="0">
<!-- <label for="flag"><b>不良分類コード6_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode6_R" name="defectclassificationcode6_R" value="0">
<!-- <label for="flag"><b>不良分類コード7_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode7_R" name="defectclassificationcode7_R" value="0">
<!-- <label for="flag"><b>不良分類コード8_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode8_R" name="defectclassificationcode8_R" value="0">
<!-- <label for="flag"><b>不良分類コード9_R:　</b></label> -->
<input type="hidden" class="form-control" id="defectclassificationcode9_R" name="defectclassificationcode9_R" value="0">
<!-- <label for="flag"><b>予備品番1_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber1_R" name="sparepartnumber1_R" value="">
<!-- <label for="flag"><b>予備品番2_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber2_R" name="sparepartnumber2_R" value="">
<!-- <label for="flag"><b>予備品番3_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparepartnumber3_R" name="sparepartnumber3_R" value="">
<!-- <label for="flag"><b>予備不良数1_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects1_R" name="sparenumberdefects1_R" value="">
<!-- <label for="flag"><b>予備不良数2_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects2_R" name="sparenumberdefects2_R" value="">
<!-- <label for="flag"><b>予備不良数3_R:　</b></label> -->
<input type="hidden" class="form-control" id="sparenumberdefects3_R" name="sparenumberdefects3_R" value="">

<div class="form-row">
  <div class="form-group col-sm-6">
    <label for="workperformancedate" class="required-label" id="workperformancedate_label"><b>作業実績日:</b></label>
    <input type="date" class="form-control" id="workperformancedate" name="workperformancedate" value="<%=workperformancedate%>"required>
 </div>
</div>

<div class="form-row">
	<div class="form-group col-sm-6">
    <label for="arrangementnumber" class="required-label" id="arrangementnumber_label"><b>手配番号　:</b> </label>
    <input 
      type="number" class="form-control" id="arrangementnumber" 
      name="arrangementnumber" placeholder="LH(LWR):手配番号を入力してください" required>
      <input 
      type="number" class="form-control" id="arrangementnumber_R" 
      name="arrangementnumber_R" placeholder="RH(UPR):手配番号を入力してください" required>
      <% if(loginUser != null) {%> ✅ 更新の際は、LH(LWR) RH(UPR)の手配番号を一度削除して再入力して下さい。 <% } %>
  </div>
  
  <div class="form-group col-sm-6">
    <label for="partnumber" class="required-label" id="partnumber_label"><b>品番　　　:</b></label>
    <input 
      type="text" class="form-control" id="partnumber" name="partnumber" placeholder="LH(LWR):手配番号入力後、手配番号と合致する品番が表示されます"  disabled >
     <div id="partnumber_errmessage" style="color: red; display: none;">LH(LWR):手配番号と合致する品番がありません</div>
    <input 
      type="text" class="form-control" id="partnumber_R" name="partnumber_R" placeholder="RH(UPR):手配番号入力後、手配番号と合致する品番が表示されます"  disabled >
     <div id="partnumber_R_errmessage" style="color: red; display: none;">RH(UPR):手配番号と合致する品番がありません</div>
     <% if(loginUser != null) {%> ✅ 手配番号を再入力した際、LH(LWR) RH(UPR)の品番が更新されたか確認して下さい。 <% } %>
  </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
    <label for="workmannumber" class="required-label" id="workmannumber_label"><b>作業担当者:</b></label>
    <input type="number" class="form-control" id="workmannumber" name="workmannumber" value="<%=workmannumber%>" placeholder="作業担当者番号を入力してください" required>
  </div>
  <div class="form-group col-sm-6">
    <label for="workmantime" class="required-label" id="workmantime_label"><b>作業工数　:</b></label>
    <input type="number" step="0.01" class="form-control" id="workmantime" name="workmantime" value="<%=workmantime%>" placeholder="作業工数を入力してください" required>
 </div>
</div>
 
<div class="form-group">
	<p class="required-label" id="workinghours_label"><b>昼夜勤区分:</b></p>
	<div class="radio-inline">
		<input type="radio" name="workinghours" id="radio1a" value="日勤" required>
        <label for="radio1a" id="radio1a_label">昼勤</label>
        <input type="radio" name="workinghours" id="radio1b" value="夜勤"required>
        <label for="radio1b" id="radio1b_label">夜勤</label>
    </div>
</div>

<div class="form-row">
 <div class="form-group col-sm-6">
 	<label for="machinetime" class="required-label" id="machinetime_label"><b>機械時間　:</b></label>
 	<input type="number" step="0.01" class="form-control" id="machinetime" name="machinetime" value="<%=machinetime%>"  placeholder="機械時間を入力してください" required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="machinecode" class="required-label" id="machinecode_label"><b>機械コード:</b></label>
 		<select class="form-control" name="machinecode" value="<%=machinecode%>" required>
 		<option value='' id="machinecode_comment" >機械コードを選択してください</option>
        <option value="P1">P-1</option>	
        <option value="P2">P-2</option>	
        <option value="P3">P-3</option>	
        <option value="P4">P-4</option>	
        <option value="P5">P-5</option>	
        <option value="P6">P-6</option>	
        <option value="P7">P-7</option>	
        <option value="P8">P-8</option>	
        <option value="P9">P-9</option>	
        <option value="P10">P-10</option>	
        <option value="P11">P-11</option>	
        <option value="P12">P-12</option>	
        <option value="PL1">L-1</option>
        <option value="PL2">PL-2</option>	
        <option value="PSW1">SW-1</option>	
        <option value="PSW2">SW-2</option>	
        <option value="PT1">T-1</option>	
        <option value="PT2">T-2</option>	
        <option value="PT3">T-3</option>	
        <option value="PV1">V-1</option>	
        <option value="R-11">R-11</option>	
        <option value="R-12">R-12</option>	
        <option value="R-13">R-13</option>	
        <option value="RD1">D-1</option>	
        <option value="RD2">D-2</option>	
        <option value="RD3">D-3</option>	
        <option value="RD4">D-4</option>	
        <option value="RD5">D-5</option>	
        <option value="RD6">D-6</option>	
        <option value="RD7">D-7</option>	
        <option value="RD8">D-8</option>	
        <option value="RD9">D-9</option>	
        <option value="RD10">D-10</option>	
        <option value="RR1">R-1</option>	
        <option value="RR2">R-2</option>	
        <option value="RR3">R-3</option>	
        <option value="RR4">R-4</option>	
        <option value="RR5">R-5</option>	
        <option value="RR6">R-6</option>	
        <option value="RR7">R-7</option>	
        <option value="RR8">R-8</option>	
        <option value="RR9">R-9</option>	
        <option value="RR10">R-10</option>	
        <option value="RS1">S-1</option>	
        <option value="RS2">S-2</option>	
    </select>
 </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="numbernodefectiveproducts" class="required-label" id="numbernodefectiveproducts_label"><b>良品数　　:</b></label>
 	<input type="number" class="form-control" id="numbernodefectiveproducts" name="numbernodefectiveproducts" value="<%=numbernodefectiveproducts%>" placeholder="LH(LWR):良品数を入力してください" required>
 	<input type="number" class="form-control" id="numbernodefectiveproducts_R" name="numbernodefectiveproducts_R" value="<%=numbernodefectiveproducts_R%>" placeholder="RH(UPR):良品数を入力してください" required>
 </div>
 <div class="form-group col-sm-6">
 	<label for="totalnumberdefects" class="required-label" id="totalnumberdefects_label"><b>合計不良数:</b></label>
 	<input type="number" class="form-control" id="totalnumberdefects" name="totalnumberdefects" value="<%=totalnumberdefects%>" placeholder="LH(LWR):不良数1～9を入力してください" required disabled>
 	<input type="number" class="form-control" id="totalnumberdefects_R" name="totalnumberdefects_R" value="<%=totalnumberdefects_R%>" placeholder="RH(UPR):不良数1～9を入力してください" required disabled>
 </div>
</div>

<div class="form-group">
  <label for="remarks" id="remarks_label"><b>備考　　　:</b></label>
  <input type="text" class="form-control" id="remarks" name="remarks" value="<%=remarks%>">
 </div>
 
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode1" class="required-label" id="defectclassificationcode1_label"><b>不良分類コード1:</b></label>
 	<input type="text" class="form-control" id="defectclassificationcode1" name="defectclassificationcode1" value="1010:強制廃棄"required disabled>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects1" class="required-label" id="numberdefects1_label"><b>不良数1:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects1" name="numberdefects1" value="<%=numberdefects1%>" placeholder="LH(LWR):不良数を入力してください" required>
 	<input type="number" class="form-control defect-number_R" id="numberdefects1_R" name="numberdefects1_R" value="<%=numberdefects1_R%>" placeholder="RH(UPR):不良数を入力してください" required>
 </div>
</div>
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode2" class="required-label" id="defectclassificationcode2_label"><b>不良分類コード2:</b></label>
 	<input type="text" class="form-control" id="defectclassificationcode2" name="defectclassificationcode2" value="1043:捨てｼｮｯﾄ"required disabled>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects2" class="required-label" id="numberdefects2_label"><b>不良数2:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects2" name="numberdefects2" value="<%=numberdefects2%>" placeholder="LH(LWR):不良数を入力してください" required>
 	<input type="number" class="form-control defect-number_R" id="numberdefects2_R" name="numberdefects2_R" value="<%=numberdefects2_R%>" placeholder="RH(UPR):不良数を入力してください" required>
 </div>
</div>
 <div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode3" class="required-label" id="defectclassificationcode3_label"><b>不良分類コード3:</b></label>
 	<input type="text" class="form-control" id="defectclassificationcode3" name="defectclassificationcode3" value="1047:検査ｻﾝﾌﾟﾙ破棄"required disabled>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects3" class="required-label" id="numberdefects3_label"><b>不良数3:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects3" name="numberdefects3" value="<%=numberdefects3%>" placeholder="LH(LWR):不良数を入力してください" required>
 	<input type="number" class="form-control defect-number_R" id="numberdefects3_R" name="numberdefects3_R" value="<%=numberdefects3_R%>" placeholder="RH(UPR):不良数を入力してください" required>
 </div>
</div>

<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode4" id="defectclassificationcode4_label"><b>不良分類コード4:</b></label>
 		<select class="form-control" name="defectclassificationcode4" id="defectclassificationcode4">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects4"  id="numberdefects4_label"><b>不良数4:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects4" name="numberdefects4" value="<%=numberdefects4%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects4_R" name="numberdefects4_R" value="<%=numberdefects4_R%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode5" id="defectclassificationcode5_label"><b>不良分類コード5:</b></label>
 		<select class="form-control" name="defectclassificationcode5" id="defectclassificationcode5">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects5" id="numberdefects5_label"><b>不良数5:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects5" name="numberdefects5" value="<%=numberdefects5%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects5_R" name="numberdefects5_R" value="<%=numberdefects5_R%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode6" id="defectclassificationcode6_label"><b>不良分類コード6:</b></label>
 		<select class="form-control" name="defectclassificationcode6" id="defectclassificationcode6">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects6" id="numberdefects6_label"><b>不良数6:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects6" name="numberdefects6" value="<%=numberdefects6%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects6_R" name="numberdefects6_R" value="<%=numberdefects6_R%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode7" id="defectclassificationcode7_label"><b>不良分類コード7:</b></label>
 		<select class="form-control" name="defectclassificationcode7" id="defectclassificationcode7">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects7" id="numberdefects7_label"><b>不良数7:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects7" name="numberdefects7" value="<%=numberdefects7%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects7_R" name="numberdefects7_R" value="<%=numberdefects7_R%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode8" id="defectclassificationcode8_label"><b>不良分類コード8:</b></label>
 		<select class="form-control" name="defectclassificationcode8" id="defectclassificationcode8">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects8" id="numberdefects8_label"><b>不良数8:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects8" name="numberdefects8" value="<%=numberdefects8%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects8_R" name="numberdefects8_R" value="<%=numberdefects8_R%>">
 </div>
</div>
<div class="form-row">
  <div class="form-group col-sm-6">
 	<label for="defectclassificationcode9" id="defectclassificationcode9_label"><b>不良分類コード9:</b></label>
 		<select class="form-control" name="defectclassificationcode9" id="defectclassificationcode9">
        <option value=""></option>
        <option value="1001">1001:異物(黒･混入･ｱｸﾘﾙ･樹脂ｶｽ)</option>
        <option value="1002">1002:ｼｮｰﾄ</option>
        <option value="1003">1003:ﾃｶﾘ</option>
        <option value="1004">1004:ｷｬﾋﾞﾄﾗﾚ</option>
        <option value="1005">1005:ｷｽﾞ</option>
        <option value="1006">1006:ｳｴﾙﾄﾞ</option>
        <option value="1007">1007:ﾊﾞﾘ</option>
        <option value="1008">1008:ﾜﾚ</option>
        <option value="1009">1009:ﾋｹ</option>
        <!-- <option value="1010">1010:強制廃棄</option> -->
        <option value="1011">1011:ﾌﾗｯｼｭ</option>
        <option value="1012">1012:ｷﾎｳ､ｴｱ</option>
        <!-- <option value="1013">1013:ｺﾞﾑ流れ</option> -->
        <!-- <option value="1014">1014:ｺﾞﾑ付着</option> -->
        <option value="1015">1015:ﾔｹ</option>
        <option value="1016">1016:欠け</option>
        <option value="1017">1017:その他</option>
        <option value="1019">1019:油汚れ･油ｸﾓﾘ表面･裏面</option>
        <option value="1020">1020:ｹﾞｰﾄ凹凸</option>
        <option value="1021">1021:ｶﾞｽｸﾓﾘ</option>
        <option value="1022">1022:ﾑﾗ</option>
        <option value="1023">1023:白化</option>
        <option value="1024">1024:剥離</option>
        <option value="1025">1025:糸引き</option>
        <option value="1026">1026:ﾍｺﾐ</option>
        <!-- <option value="1027">1027:異物(毛)</option> -->
        <!-- <option value="1028">1028:予備に本体材料付着</option> -->
        <!-- <option value="1029">1029:異物(予備ﾊﾞﾘ､ｶｽ)</option> -->
        <option value="1030">1030:変形</option>
        <option value="1031">1031:ｱｸ</option>
        <option value="1032">1032:寸法不良</option>
        <!-- <option value="1033">1033:ｱﾊﾞﾀ</option> -->
        <!-- <option value="1034">1034:端子変形</option> -->
        <!-- <option value="1035">1035:界面不良</option> -->
        <!-- <option value="1036">1036:ﾛｸﾛ不良</option> -->
        <option value="1037">1037:一次成形不良</option>
        <option value="1038">1038:汚れ</option>
        <option value="1039">1039:仕上げﾐｽ</option>
        <!-- <option value="1040">1040:ﾌｨﾙﾑ貼りﾐｽ</option> -->
        <!-- <option value="1041">1041:ﾛｯｸｱｳﾄ</option> -->
        <option value="1042">1042:ｼﾙﾊﾞｰ</option>
        <!--<option value="1043">1043:捨てｼｮｯﾄ</option> -->
        <option value="1044">1044:ｺﾝﾍﾞｱ落下</option>
        <option value="1045">1045:BH後不良</option>
        <option value="1046">1046:凸加工不良</option>
        <!--<option value="1047">1047:検査ｻﾝﾌﾟﾙ破棄</option> -->
        <!-- <option value="1048">1048:溶着不良(浮き･段差)</option> -->
    </select>
 </div>
 <div class="form-group col-sm-6">
 	<label for="numberdefects9" id="numberdefects9_label"><b>不良数9:</b></label>
 	<input type="number" class="form-control defect-number" id="numberdefects9" name="numberdefects9" value="<%=numberdefects9%>">
 	<input type="number" class="form-control defect-number_R" id="numberdefects9_R" name="numberdefects9_R" value="<%=numberdefects9_R%>">
 </div>
</div>

</div>

<%if(!id.isEmpty()) {%>
<input type="hidden" name="id" value="<%=id %>">
<%} %>
<button type="submit" class="btn btn-primary custom-btn" id="registration" style="margin-left: 15px;" onclick="submitForm()"><%=id.isEmpty()?"登録":"更新" %></button>
 
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

<!-- 品番:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var partnumberValue = '<%=partnumber%>';
    var selectElement = document.getElementsByName('partnumber')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!partnumberValue) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = partnumberValue;
    }
});

<!-- 品番_R:初期値に基づいて分岐 -->
document.addEventListener('DOMContentLoaded', function () {
	var partnumber_RValue = '<%=partnumber_R%>';
    var selectElement = document.getElementsByName('partnumber_R')[0]; 

    // 初期値が空の場合は何も選択しない
    if (!partnumber_RValue) {
        selectElement.value = '';
    } else {
        // 初期値が存在する場合は対応するオプションを選択
        selectElement.value = partnumber_RValue;
    }
});

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

<!-- 不良分類コード:フォーム送信時に入力フィールドの値を変更 -->
document.addEventListener("DOMContentLoaded", function() {
  // 入力フィールドの要素を取得
  var inputField1 = document.getElementById("defectclassificationcode1");
  var inputField2 = document.getElementById("defectclassificationcode2");
  var inputField3 = document.getElementById("defectclassificationcode3");
  
  // 送信時に値を変更するイベントリスナーを追加
  inputField1.form.addEventListener("submit", function(event) {
    // 値を "1010:強制廃棄" から ":1010" に変更
    inputField1.value = "1010";
  });

  inputField2.form.addEventListener("submit", function(event) {
    // 値を "1043:捨てｼｮｯﾄ"から ":1043" に変更
    inputField2.value = "1043";
  });

  inputField3.form.addEventListener("submit", function(event) {
    // 値を "1047:検査ｻﾝﾌﾟﾙ破棄" から ":1047" に変更
    inputField3.value = "1047";
  });
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
    // 不良分類コード4と不良数4、不良数4_Rの初期値を取得
    var defectClassificationCode4Select = document.getElementsByName('defectclassificationcode4')[0];
    var numberDefects4Input = document.getElementById('numberdefects4');
    var numberDefects4_R_Input = document.getElementById('numberdefects4_R');

    // 不良分類コード4が変更されたときのイベントリスナーを追加
    defectClassificationCode4Select.addEventListener('input', function () {
        // 不良分類コード4の選択値を取得
        var selectedDefectClassificationCode4 = defectClassificationCode4Select.value;

        // 不良分類コード4が選択された場合、関連する不良数4と不良数4_Rの入力を必須にする
        if (selectedDefectClassificationCode4) {
            numberDefects4Input.required = true;
            numberDefects4_R_Input.required = true;
        } else {
            // 不良分類コード4が未選択になった場合、関連する不良数4と不良数4_Rの入力を必須解除
            numberDefects4Input.required = false;
            numberDefects4_R_Input.required = false;
        }
    });

    // 不良数4が変更されたときのイベントリスナーを追加
    numberDefects4Input.addEventListener('input', function () {
        // 不良数4の入力値を取得
        var inputNumberDefects4 = numberDefects4Input.value;

        // 不良数4が入力された場合、関連する不良分類コード4の選択と不良数4_Rの入力を必須にする
        if (inputNumberDefects4) {
            defectClassificationCode4Select.required = true;
            numberDefects4_R_Input.required = true;
        } else {
            // 不良数4が未入力になった場合、関連する不良分類コード4の選択と不良数4_Rの入力を必須解除
            defectClassificationCode4Select.required = false;
            numberDefects4_R_Input.required = false;
        }
    });

    // 不良数4_Rが変更されたときのイベントリスナーを追加
    numberDefects4_R_Input.addEventListener('input', function () {
        // 不良数4_Rの入力値を取得
        var inputNumberDefects4_R = numberDefects4_R_Input.value;

        // 不良数4_Rが入力された場合、関連する不良分類コード4の選択と不良数4の入力を必須にする
        if (inputNumberDefects4_R) {
            defectClassificationCode4Select.required = true;
            numberDefects4Input.required = true;
        } else {
            // 不良数4_Rが未入力になった場合、関連する不良分類コード4の選択と不良数4の入力を必須解除
            defectClassificationCode4Select.required = false;
            numberDefects4Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode4Select.value) {
        numberDefects4Input.required = true;
        numberDefects4_R_Input.required = true;
    }

    if (numberDefects4Input.value) {
        defectClassificationCode4Select.required = true;
        numberDefects4_R_Input.required = true;
    }

    if (numberDefects4_R_Input.value) {
        defectClassificationCode4Select.required = true;
        numberDefects4Input.required = true;
    }
});

<!-- 不良分類コード5 & 不良数5:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード5と不良数5、不良数5_Rの初期値を取得
    var defectClassificationCode5Select = document.getElementsByName('defectclassificationcode5')[0];
    var numberDefects5Input = document.getElementById('numberdefects5');
    var numberDefects5_R_Input = document.getElementById('numberdefects5_R');

    // 不良分類コード5が変更されたときのイベントリスナーを追加
    defectClassificationCode5Select.addEventListener('input', function () {
        // 不良分類コード5の選択値を取得
        var selectedDefectClassificationCode5 = defectClassificationCode5Select.value;

        // 不良分類コード5が選択された場合、関連する不良数5と不良数5_Rの入力を必須にする
        if (selectedDefectClassificationCode5) {
            numberDefects5Input.required = true;
            numberDefects5_R_Input.required = true;
        } else {
            // 不良分類コード5が未選択になった場合、関連する不良数5と不良数5_Rの入力を必須解除
            numberDefects5Input.required = false;
            numberDefects5_R_Input.required = false;
        }
    });

    // 不良数5が変更されたときのイベントリスナーを追加
    numberDefects5Input.addEventListener('input', function () {
        // 不良数5の入力値を取得
        var inputNumberDefects5 = numberDefects5Input.value;

        // 不良数5が入力された場合、関連する不良分類コード5の選択と不良数5_Rの入力を必須にする
        if (inputNumberDefects5) {
            defectClassificationCode5Select.required = true;
            numberDefects5_R_Input.required = true;
        } else {
            // 不良数5が未入力になった場合、関連する不良分類コード5の選択と不良数5_Rの入力を必須解除
            defectClassificationCode5Select.required = false;
            numberDefects5_R_Input.required = false;
        }
    });

    // 不良数5_Rが変更されたときのイベントリスナーを追加
    numberDefects5_R_Input.addEventListener('input', function () {
        // 不良数5_Rの入力値を取得
        var inputNumberDefects5_R = numberDefects5_R_Input.value;

        // 不良数5_Rが入力された場合、関連する不良分類コード5の選択と不良数5の入力を必須にする
        if (inputNumberDefects5_R) {
            defectClassificationCode5Select.required = true;
            numberDefects5Input.required = true;
        } else {
            // 不良数5_Rが未入力になった場合、関連する不良分類コード5の選択と不良数5の入力を必須解除
            defectClassificationCode5Select.required = false;
            numberDefects5Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode5Select.value) {
        numberDefects5Input.required = true;
        numberDefects5_R_Input.required = true;
    }

    if (numberDefects5Input.value) {
        defectClassificationCode5Select.required = true;
        numberDefects5_R_Input.required = true;
    }

    if (numberDefects5_R_Input.value) {
        defectClassificationCode5Select.required = true;
        numberDefects5Input.required = true;
    }
});

<!-- 不良分類コード6 & 不良数6:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード6と不良数6、不良数6_Rの初期値を取得
    var defectClassificationCode6Select = document.getElementsByName('defectclassificationcode6')[0];
    var numberDefects6Input = document.getElementById('numberdefects6');
    var numberDefects6_R_Input = document.getElementById('numberdefects6_R');

    // 不良分類コード6が変更されたときのイベントリスナーを追加
    defectClassificationCode6Select.addEventListener('input', function () {
        // 不良分類コード6の選択値を取得
        var selectedDefectClassificationCode6 = defectClassificationCode6Select.value;

        // 不良分類コード6が選択された場合、関連する不良数6と不良数6_Rの入力を必須にする
        if (selectedDefectClassificationCode6) {
            numberDefects6Input.required = true;
            numberDefects6_R_Input.required = true;
        } else {
            // 不良分類コード6が未選択になった場合、関連する不良数6と不良数6_Rの入力を必須解除
            numberDefects6Input.required = false;
            numberDefects6_R_Input.required = false;
        }
    });

    // 不良数6が変更されたときのイベントリスナーを追加
    numberDefects6Input.addEventListener('input', function () {
        // 不良数6の入力値を取得
        var inputNumberDefects6 = numberDefects6Input.value;

        // 不良数6が入力された場合、関連する不良分類コード6の選択と不良数6_Rの入力を必須にする
        if (inputNumberDefects6) {
            defectClassificationCode6Select.required = true;
            numberDefects6_R_Input.required = true;
        } else {
            // 不良数6が未入力になった場合、関連する不良分類コード6の選択と不良数6_Rの入力を必須解除
            defectClassificationCode6Select.required = false;
            numberDefects6_R_Input.required = false;
        }
    });

    // 不良数6_Rが変更されたときのイベントリスナーを追加
    numberDefects6_R_Input.addEventListener('input', function () {
        // 不良数6_Rの入力値を取得
        var inputNumberDefects6_R = numberDefects6_R_Input.value;

        // 不良数6_Rが入力された場合、関連する不良分類コード6の選択と不良数6の入力を必須にする
        if (inputNumberDefects6_R) {
            defectClassificationCode6Select.required = true;
            numberDefects6Input.required = true;
        } else {
            // 不良数6_Rが未入力になった場合、関連する不良分類コード6の選択と不良数6の入力を必須解除
            defectClassificationCode6Select.required = false;
            numberDefects6Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode6Select.value) {
        numberDefects6Input.required = true;
        numberDefects6_R_Input.required = true;
    }

    if (numberDefects6Input.value) {
        defectClassificationCode6Select.required = true;
        numberDefects6_R_Input.required = true;
    }

    if (numberDefects6_R_Input.value) {
        defectClassificationCode6Select.required = true;
        numberDefects6Input.required = true;
    }
});

<!-- 不良分類コード7 & 不良数7:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード7と不良数7、不良数7_Rの初期値を取得
    var defectClassificationCode7Select = document.getElementsByName('defectclassificationcode7')[0];
    var numberDefects7Input = document.getElementById('numberdefects7');
    var numberDefects7_R_Input = document.getElementById('numberdefects7_R');

    // 不良分類コード7が変更されたときのイベントリスナーを追加
    defectClassificationCode7Select.addEventListener('input', function () {
        // 不良分類コード7の選択値を取得
        var selectedDefectClassificationCode7 = defectClassificationCode7Select.value;

        // 不良分類コード7が選択された場合、関連する不良数7と不良数7_Rの入力を必須にする
        if (selectedDefectClassificationCode7) {
            numberDefects7Input.required = true;
            numberDefects7_R_Input.required = true;
        } else {
            // 不良分類コード7が未選択になった場合、関連する不良数7と不良数7_Rの入力を必須解除
            numberDefects7Input.required = false;
            numberDefects7_R_Input.required = false;
        }
    });

    // 不良数7が変更されたときのイベントリスナーを追加
    numberDefects7Input.addEventListener('input', function () {
        // 不良数7の入力値を取得
        var inputNumberDefects7 = numberDefects7Input.value;

        // 不良数7が入力された場合、関連する不良分類コード7の選択と不良数7_Rの入力を必須にする
        if (inputNumberDefects7) {
            defectClassificationCode7Select.required = true;
            numberDefects7_R_Input.required = true;
        } else {
            // 不良数7が未入力になった場合、関連する不良分類コード7の選択と不良数7_Rの入力を必須解除
            defectClassificationCode7Select.required = false;
            numberDefects7_R_Input.required = false;
        }
    });

    // 不良数7_Rが変更されたときのイベントリスナーを追加
    numberDefects7_R_Input.addEventListener('input', function () {
        // 不良数7_Rの入力値を取得
        var inputNumberDefects7_R = numberDefects7_R_Input.value;

        // 不良数7_Rが入力された場合、関連する不良分類コード7の選択と不良数7の入力を必須にする
        if (inputNumberDefects7_R) {
            defectClassificationCode7Select.required = true;
            numberDefects7Input.required = true;
        } else {
            // 不良数7_Rが未入力になった場合、関連する不良分類コード7の選択と不良数7の入力を必須解除
            defectClassificationCode7Select.required = false;
            numberDefects7Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode7Select.value) {
        numberDefects7Input.required = true;
        numberDefects7_R_Input.required = true;
    }

    if (numberDefects7Input.value) {
        defectClassificationCode7Select.required = true;
        numberDefects7_R_Input.required = true;
    }

    if (numberDefects7_R_Input.value) {
        defectClassificationCode7Select.required = true;
        numberDefects7Input.required = true;
    }
});

<!-- 不良分類コード8 & 不良数8:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード8と不良数8、不良数8_Rの初期値を取得
    var defectClassificationCode8Select = document.getElementsByName('defectclassificationcode8')[0];
    var numberDefects8Input = document.getElementById('numberdefects8');
    var numberDefects8_R_Input = document.getElementById('numberdefects8_R');

    // 不良分類コード8が変更されたときのイベントリスナーを追加
    defectClassificationCode8Select.addEventListener('input', function () {
        // 不良分類コード8の選択値を取得
        var selectedDefectClassificationCode8 = defectClassificationCode8Select.value;

        // 不良分類コード8が選択された場合、関連する不良数8と不良数8_Rの入力を必須にする
        if (selectedDefectClassificationCode8) {
            numberDefects8Input.required = true;
            numberDefects8_R_Input.required = true;
        } else {
            // 不良分類コード8が未選択になった場合、関連する不良数8と不良数8_Rの入力を必須解除
            numberDefects8Input.required = false;
            numberDefects8_R_Input.required = false;
        }
    });

    // 不良数8が変更されたときのイベントリスナーを追加
    numberDefects8Input.addEventListener('input', function () {
        // 不良数8の入力値を取得
        var inputNumberDefects8 = numberDefects8Input.value;

        // 不良数8が入力された場合、関連する不良分類コード8の選択と不良数8_Rの入力を必須にする
        if (inputNumberDefects8) {
            defectClassificationCode8Select.required = true;
            numberDefects8_R_Input.required = true;
        } else {
            // 不良数8が未入力になった場合、関連する不良分類コード8の選択と不良数8_Rの入力を必須解除
            defectClassificationCode8Select.required = false;
            numberDefects8_R_Input.required = false;
        }
    });

    // 不良数8_Rが変更されたときのイベントリスナーを追加
    numberDefects8_R_Input.addEventListener('input', function () {
        // 不良数8_Rの入力値を取得
        var inputNumberDefects8_R = numberDefects8_R_Input.value;

        // 不良数8_Rが入力された場合、関連する不良分類コード8の選択と不良数8の入力を必須にする
        if (inputNumberDefects8_R) {
            defectClassificationCode8Select.required = true;
            numberDefects8Input.required = true;
        } else {
            // 不良数8_Rが未入力になった場合、関連する不良分類コード8の選択と不良数8の入力を必須解除
            defectClassificationCode8Select.required = false;
            numberDefects8Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode8Select.value) {
        numberDefects8Input.required = true;
        numberDefects8_R_Input.required = true;
    }

    if (numberDefects8Input.value) {
        defectClassificationCode8Select.required = true;
        numberDefects8_R_Input.required = true;
    }

    if (numberDefects8_R_Input.value) {
        defectClassificationCode8Select.required = true;
        numberDefects8Input.required = true;
    }
});

<!-- 不良分類コード9 & 不良数9:入力制御 -->
document.addEventListener('DOMContentLoaded', function () {
    // 不良分類コード9と不良数9、不良数9_Rの初期値を取得
    var defectClassificationCode9Select = document.getElementsByName('defectclassificationcode9')[0];
    var numberDefects9Input = document.getElementById('numberdefects9');
    var numberDefects9_R_Input = document.getElementById('numberdefects9_R');

    // 不良分類コード9が変更されたときのイベントリスナーを追加
    defectClassificationCode9Select.addEventListener('input', function () {
        // 不良分類コード9の選択値を取得
        var selectedDefectClassificationCode9 = defectClassificationCode9Select.value;

        // 不良分類コード9が選択された場合、関連する不良数9と不良数9_Rの入力を必須にする
        if (selectedDefectClassificationCode9) {
            numberDefects9Input.required = true;
            numberDefects9_R_Input.required = true;
        } else {
            // 不良分類コード9が未選択になった場合、関連する不良数9と不良数9_Rの入力を必須解除
            numberDefects9Input.required = false;
            numberDefects9_R_Input.required = false;
        }
    });

    // 不良数9が変更されたときのイベントリスナーを追加
    numberDefects9Input.addEventListener('input', function () {
        // 不良数9の入力値を取得
        var inputNumberDefects9 = numberDefects9Input.value;

        // 不良数9が入力された場合、関連する不良分類コード9の選択と不良数9_Rの入力を必須にする
        if (inputNumberDefects9) {
            defectClassificationCode9Select.required = true;
            numberDefects9_R_Input.required = true;
        } else {
            // 不良数9が未入力になった場合、関連する不良分類コード9の選択と不良数9_Rの入力を必須解除
            defectClassificationCode9Select.required = false;
            numberDefects9_R_Input.required = false;
        }
    });

    // 不良数9_Rが変更されたときのイベントリスナーを追加
    numberDefects9_R_Input.addEventListener('input', function () {
        // 不良数9_Rの入力値を取得
        var inputNumberDefects9_R = numberDefects9_R_Input.value;

        // 不良数9_Rが入力された場合、関連する不良分類コード9の選択と不良数9の入力を必須にする
        if (inputNumberDefects9_R) {
            defectClassificationCode9Select.required = true;
            numberDefects9Input.required = true;
        } else {
            // 不良数9_Rが未入力になった場合、関連する不良分類コード9の選択と不良数9の入力を必須解除
            defectClassificationCode9Select.required = false;
            numberDefects9Input.required = false;
        }
    });

    // 初期値が存在する場合は初回チェックを行う
    if (defectClassificationCode9Select.value) {
        numberDefects9Input.required = true;
        numberDefects9_R_Input.required = true;
    }

    if (numberDefects9Input.value) {
        defectClassificationCode9Select.required = true;
        numberDefects9_R_Input.required = true;
    }

    if (numberDefects9_R_Input.value) {
        defectClassificationCode9Select.required = true;
        numberDefects9Input.required = true;
    }
});

//重複を防ぐための関数
function preventDuplicate(selection) {
    // 選択された値
    var selectedValue = selection.value;
    // 他のセレクトボックスを取得
    var selects = document.querySelectorAll('select');
    // ループして選択された値と重複するかチェック
    for (var i = 0; i < selects.length; i++) {
        // 自身以外のセレクトボックスをチェック
        if (selects[i] !== selection && selects[i].value === selectedValue) {
            alert("同じ不良分類コードが複数選択されています。重複を避けてください。");
            // 選択を解除する
            selection.value = "";
            return;
        }
    }
}

//イベントリスナーを追加
document.getElementById('defectclassificationcode4').addEventListener('change', function () {
    preventDuplicate(this);
});

document.getElementById('defectclassificationcode5').addEventListener('change', function () {
    preventDuplicate(this);
});

document.getElementById('defectclassificationcode6').addEventListener('change', function () {
    preventDuplicate(this);
});

document.getElementById('defectclassificationcode7').addEventListener('change', function () {
    preventDuplicate(this);
});

document.getElementById('defectclassificationcode8').addEventListener('change', function () {
    preventDuplicate(this);
});

document.getElementById('defectclassificationcode9').addEventListener('change', function () {
    preventDuplicate(this);
});

<!-- LR:不良数1から9までのフィールドに入力があると自動的に合計値が計算され、合計不良数フィールドに反映 -->
var defectNumberInputs_LH = document.querySelectorAll('.defect-number');
var defectNumberInputs_RH = document.querySelectorAll('.defect-number_R');

function calculateTotal_LH() {
    var total_LH = 0;
    for (var i = 0; i < defectNumberInputs_LH.length; i++) {
        var value = parseInt(defectNumberInputs_LH[i].value);
        if (!isNaN(value)) {
            total_LH += value;
        }
    }
    document.getElementById('totalnumberdefects').value = total_LH;
}

function calculateTotal_RH() {
    var total_RH = 0;
    for (var i = 0; i < defectNumberInputs_RH.length; i++) {
        var value = parseInt(defectNumberInputs_RH[i].value);
        if (!isNaN(value)) {
            total_RH += value;
        }
    }
    document.getElementById('totalnumberdefects_R').value = total_RH;
}

for (var i = 0; i < defectNumberInputs_LH.length; i++) {
    defectNumberInputs_LH[i].addEventListener('input', calculateTotal_LH);
}

for (var i = 0; i < defectNumberInputs_RH.length; i++) {
    defectNumberInputs_RH[i].addEventListener('input', calculateTotal_RH);
}


<!-- disabled 属性を解除してフォームを送信 -->

// ボタンがクリックされたときに実行される関数
function submitForm() {
  // 不良数フィールドのdisabled属性を解除する
  document.getElementById('totalnumberdefects').removeAttribute('disabled');
  document.getElementById('totalnumberdefects_R').removeAttribute('disabled');
  document.getElementById('defectclassificationcode1').removeAttribute('disabled');
  document.getElementById('defectclassificationcode2').removeAttribute('disabled');
  document.getElementById('defectclassificationcode3').removeAttribute('disabled');
  document.getElementById('partnumber').removeAttribute('disabled');

  // フォームを送信する
  document.getElementById('myForm').submit();
}

<!-- 手配番号の入力文字数制限 -->
document.getElementById('arrangementnumber').addEventListener('input', function() {
    var input = this.value;
    var maxLength = 6;
    if (input.length > maxLength) {
        this.value = input.slice(0, maxLength); // 6文字以上の部分を削除
        alert('入力できる最大文字数は6文字です。'); // アラートを表示
    }
});

<!-- 手配番号_Rの入力文字数制限 -->
document.getElementById('arrangementnumber_R').addEventListener('input', function() {
    var input = this.value;
    var maxLength = 6;
    if (input.length > maxLength) {
        this.value = input.slice(0, maxLength); // 6文字以上の部分を削除
        alert('入力できる最大文字数は6文字です。'); // アラートを表示
    }
});

<!-- 作業担当者の入力文字数制限 -->
document.getElementById('workmannumber').addEventListener('input', function() {
    var input = this.value;
    var maxLength = 3;
    if (input.length > maxLength) {
        this.value = input.slice(0, maxLength); // 3文字以上の部分を削除
        alert('入力できる最大文字数は3文字です。'); // アラートを表示
    }
});


<!-- SQLから品番出力 -->
//品番選択時のイベントリスナー
document.getElementById("partnumber").addEventListener("change", function() {
 const selectedPartnumber = this.value;
 // 自動送信を行わない
});

//イベントリスナーを追加
document.getElementById('partnumber').addEventListener('change', function () {
    preventDuplicate(this);
});
//品番選択時のイベントリスナー
document.getElementById("partnumber_R").addEventListener("change", function() {
 const selectedPartnumber = this.value;
 // 自動送信を行わない
});

//イベントリスナーを追加
document.getElementById('partnumber_R').addEventListener('change', function () {
    preventDuplicate(this);
});

<!-- 手配番号と品番の紐付け表示処理 -->
document.getElementById("arrangementnumber").addEventListener("change", function() {
    
    const arrangementnumber = this.value.trim();
    const partnumberInput = document.getElementById("partnumber");
    const partnumberErrMessage = document.getElementById("partnumber_errmessage");

    console.log("Selected arrangementnumber:", arrangementnumber);

    partnumberInput.value = "LH(LWR):手配番号入力後、手配番号と合致する品番が表示されます"; // 初期化
    partnumberInput.disabled = true; // デフォルトで無効
    partnumberErrMessage.style.display = "none";   // エラーメッセージ非表示

    if (arrangementnumber) {
        fetch('main', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' },
            body: new URLSearchParams({ 'arrangementnumber': arrangementnumber })
        })
        .then(response => {
            if (!response.ok) throw new Error('Network response was not ok');
            return response.json();
        })
        .then(data => {
            console.log("Parsed response data:", data[0].partnumber);
            
            if (Array.isArray(data) && data.length > 0) {
                partnumberInput.value = data[0].partnumber; // ✅ 最初のデータを partnumber に格納
                partnumberErrMessage.style.display = "none"; // エラー非表示
                
            } else {
                partnumberInput.value = "";
                partnumberErrMessage.style.display = "block"; // エラー表示
                
            }
        })
        .catch(error => {
            console.error('エラー:', error);
            partnumberInput.value = "";
            partnumberErrMessage.style.display = "block";
        });
    }
});


<!-- 手配番号と品番の紐付け表示処理_R -->
document.getElementById("arrangementnumber_R").addEventListener("change", function() {
    
	const arrangementnumber_R = this.value.trim();
    const partnumber_RInput = document.getElementById("partnumber_R");
    const partnumber_RErrMessage = document.getElementById("partnumber_R_errmessage");

    console.log("Selected arrangementnumber_R:", arrangementnumber_R);

    partnumber_RInput.value = "RH(UPR):手配番号入力後、手配番号と合致する品番が表示されます"; // 初期化
    partnumber_RInput.disabled = true; // デフォルトで無効
    partnumber_RErrMessage.style.display = "none";   // エラーメッセージ非表示

    if (arrangementnumber_R) {
        fetch('main2', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' },
            body: new URLSearchParams({ 'arrangementnumber_R': arrangementnumber_R })
        })
        .then(response => {
            if (!response.ok) throw new Error('Network response was not ok');
            return response.json();
        })
        .then(data => {
            console.log("Parsed response data:", data[0].partnumber_R);
            console.log("Parsed response data:", data);
            if (Array.isArray(data) && data.length > 0) {
            	partnumber_RInput.value = data[0].partnumber_R; // ✅ 最初のデータを partnumber に格納
            	partnumber_RInput.disabled = false; // 入力可能にする
            	partnumber_RErrMessage.style.display = "none"; // エラー非表示
                
            } else {
            	partnumber_RInput.value = "";
            	partnumber_RInput.disabled = true; // 無効化
                partnumber_RErrMessage.style.display = "block"; // エラー表示
                
            }
        })
        .catch(error => {
            console.error('エラー:', error);
            partnumber_RInput.value = "";
            partnumber_RInput.disabled = true; // エラー時も無効化
            partnumber_RErrMessage.style.display = "block";
        });
    }
});

<!-- ベトナム語と日本語切替 -->
function toggleLanguage() {
	var arrangementnumber_label = document.getElementById("arrangementnumber_label");
	var arrangementnumber = document.getElementById("arrangementnumber");
	var arrangementnumber_R = document.getElementById("arrangementnumber_R");
	// 手配番号_ラベルの翻訳変換
	if (arrangementnumber_label.textContent === "手配番号　:") {
		arrangementnumber_label.textContent = "Mã số chuẩn bị, sắp xếp:";
		arrangementnumber_label.style.fontWeight = "bold";
	} else {
		arrangementnumber_label.textContent = "手配番号　:";
		arrangementnumber_label.style.fontWeight = "bold";
	}
	// 手配番号_メッセージの翻訳変換
	if (arrangementnumber.placeholder  === "LH(LWR):手配番号を入力してください") {
    	arrangementnumber.placeholder  = "LH(LWR):Hãy nhập mã 手配番号";
    } else {
    	arrangementnumber.placeholder  = "LH(LWR):手配番号を入力してください";
    }
	// 手配番号R_メッセージの翻訳変換
	if (arrangementnumber_R.placeholder  === "RH(UPR):手配番号を入力してください") {
		arrangementnumber_R.placeholder  = "RH(UPR):Hãy nhập mã 手配番号";
    } else {
    	arrangementnumber_R.placeholder  = "RH(UPR):手配番号を入力してください";
    }

	var partnumber_label = document.getElementById("partnumber_label");
	var partnumber = document.getElementById("partnumber");
	var partnumber_R = document.getElementById("partnumber_R");
	// 品番_ラベルの翻訳変換
	if (partnumber_label.textContent === "品番　　　:") {
		partnumber_label.textContent = "Mã số sản phẩm:";
		partnumber_label.style.fontWeight = "bold";
	} else {
		partnumber_label.textContent = "品番　　　:";
		partnumber_label.style.fontWeight = "bold";
	}
	// 品番_メッセージの翻訳変換
	if (partnumber.placeholder  === "LH(LWR):手配番号入力後、手配番号と合致する品番が表示されます") {
		partnumber.placeholder  = "LH(LWR):Sau khi nhập số đơn hàng, số sản phẩm khớp với số đơn hàng sẽ được hiển thị.";
    } else {
    	partnumber.placeholder  = "LH(LWR):手配番号入力後、手配番号と合致する品番が表示されます";
    }
	// 品番R_メッセージの翻訳変換
	if (partnumber_R.placeholder  === "RH(UPR):手配番号入力後、手配番号と合致する品番が表示されます") {
		partnumber_R.placeholder  = "RH(UPR):Sau khi nhập số đơn hàng, số sản phẩm khớp với số đơn hàng sẽ được hiển thị.";
    } else {
    	partnumber_R.placeholder  = "RH(UPR):手配番号入力後、手配番号と合致する品番が表示されます";
    }

	// 品番が見つからない場合のメッセージの翻訳
	const partnumberErrMessage = document.getElementById("partnumber_errmessage");
	if (partnumberErrMessage) {
	    if (partnumberErrMessage.innerText === "LH(LWR):手配番号と合致する品番がありません") {
	    	partnumberErrMessage.innerText = "LH(LWR):Không có số sản phẩm khớp với số đơn hàng.";
	    } else {
	    	partnumberErrMessage.innerText = "LH(LWR):手配番号と合致する品番がありません";
	    }
	}
	
	// 品番Rが見つからない場合のメッセージの翻訳
	const partnumber_RErrMessage = document.getElementById("partnumber_R_errmessage");
	if (partnumber_RErrMessage) {
	    if (partnumber_RErrMessage.innerText === "RH(UPR):手配番号と合致する品番がありません") {
	    	partnumber_RErrMessage.innerText = "RH(UPR):Không có số sản phẩm khớp với số đơn hàng.";
	    } else {
	    	partnumber_RErrMessage.innerText = "RH(UPR):手配番号と合致する品番がありません";
	    }
	}
    
    var workperformancedate_label = document.getElementById("workperformancedate_label");
    // 作業実績日_ラベルの翻訳変換
    if (workperformancedate_label.textContent === "作業実績日:") {
    	workperformancedate_label.textContent = "Ngày làm:";
    	workperformancedate_label.style.fontWeight = "bold";
    } else {
    	workperformancedate_label.textContent = "作業実績日:";
    	workperformancedate_label.style.fontWeight = "bold";
    }

    var workmannumber_label = document.getElementById("workmannumber_label");
    var workmannumber = document.getElementById("workmannumber");
    // 作業担当者_ラベルの翻訳変換
    if (workmannumber_label.textContent === "作業担当者:") {
    	workmannumber_label.textContent = "Mã số của người làm:";
    	workmannumber_label.style.fontWeight = "bold";
    } else {
    	workmannumber_label.textContent = "作業担当者:";
    	workmannumber_label.style.fontWeight = "bold";
    }
    // 作業担当者_メッセージの翻訳変換
    if (workmannumber.placeholder  === "作業担当者番号を入力してください") {
    	workmannumber.placeholder  = "Hãy nhập mã số của người làm";
    } else {
    	workmannumber.placeholder  = "作業担当者番号を入力してください";
    }

    var workmantime_label = document.getElementById("workmantime_label");
    var workmantime = document.getElementById("workmantime");
    // 作業工数_ラベルの翻訳変換
    if (workmantime_label.textContent === "作業工数　:") {
    	workmantime_label.textContent = "Giờ làm việc:";
    	workmantime_label.style.fontWeight = "bold";
    } else {
    	workmantime_label.textContent = "作業工数　:";
    	workmantime_label.style.fontWeight = "bold";
    }
    // 作業工数_メッセージの翻訳変換
    if (workmantime.placeholder  === "作業工数を入力してください") {
    	workmantime.placeholder  = "Hãy nhập giờ làm việc";
    } else {
    	workmantime.placeholder  = "作業工数を入力してください";
    }
    
    var workinghours_label = document.getElementById("workinghours_label");
    var radio1a_label = document.getElementById("radio1a_label");
    var radio1b_label = document.getElementById("radio1b_label");
     // 昼夜勤区分ラベルの翻訳変換
    if (workinghours_label.textContent === "昼夜勤区分:") {
    	workinghours_label.textContent = "Phân chia ca làm sáng tối:";
    	workinghours_label.style.fontWeight = "bold";
    } else {
    	workinghours_label.textContent = "昼夜勤区分:";
    	workinghours_label.style.fontWeight = "bold";
    }
    // 日勤_ラベルの翻訳変換
    if (radio1a_label.textContent === "昼勤") {
	   radio1a_label.textContent = "Ca ngày";
    } else {
	   radio1a_label.textContent = "昼勤";
    }
    // 夜勤_ラベルの翻訳変換
    if (radio1b_label.textContent === "夜勤") {
	  	radio1b_label.textContent = "Ca đêm";
    } else {
	  	radio1b_label.textContent = "夜勤";
    }

    var machinetime_label = document.getElementById("machinetime_label");
    var machinetime = document.getElementById("machinetime");
    // 機械時間_ラベルの翻訳変換
    if (machinetime_label.textContent === "機械時間　:") {
	  	machinetime_label.textContent = "Thời gian máy làm việc:";
	  	machinetime_label.style.fontWeight = "bold";
    } else {
	  	machinetime_label.textContent = "機械時間　:";
	  	machinetime_label.style.fontWeight = "bold";
    }
    // 機械時間_メッセージの翻訳変換
    if (machinetime.placeholder  === "機械時間を入力してください") {
	  	machinetime.placeholder  = "Hãy nhập thời gian máy làm việc";
    } else {
	  	machinetime.placeholder  = "機械時間を入力してください";
    }

    var machinecode_label = document.getElementById("machinecode_label");
    var machinecode_comment = document.getElementById("machinecode_comment");
    // 機械コード_ラベルの翻訳変換
    if (machinecode_label.textContent === "機械コード:") {
	  	machinecode_label.textContent = "Mã của máy làm:";
	  	machinecode_label.style.fontWeight = "bold";
    } else {
	  	machinecode_label.textContent = "機械コード:";
	  	machinecode_label.style.fontWeight = "bold";
    }
    // 機械コードコメント_メッセージの翻訳変換
    if (machinecode_comment.textContent  === "機械コードを選択してください") {
    	machinecode_comment.textContent = "Hãy lựa chọn mã của máy làm";
    	machinecode_comment.style.fontWeight = "bold";
    } else {
    	machinecode_comment.textContent  = "機械コードを選択してください";
    }

    var numbernodefectiveproducts_label = document.getElementById("numbernodefectiveproducts_label");
    var numbernodefectiveproducts = document.getElementById("numbernodefectiveproducts");
    var numbernodefectiveproducts_R = document.getElementById("numbernodefectiveproducts_R");
    // 良品数_ラベルの翻訳変換
    if (numbernodefectiveproducts_label.textContent === "良品数　　:") {
    	numbernodefectiveproducts_label.textContent = "Số hàng tốt:";
    	numbernodefectiveproducts_label.style.fontWeight = "bold";
    } else {
    	numbernodefectiveproducts_label.textContent = "良品数　　:";
    	numbernodefectiveproducts_label.style.fontWeight = "bold";
    }
    // 良品数_メッセージの翻訳変換
    if (numbernodefectiveproducts.placeholder  === "LH(LWR):良品数を入力してください") {
    	numbernodefectiveproducts.placeholder  = "LH(LWR):Hãy nhập số hàng tốt";
    } else {
    	numbernodefectiveproducts.placeholder  = "LH(LWR):良品数を入力してください";
    }
	// 良品R_メッセージの翻訳変換
	if (numbernodefectiveproducts_R.placeholder  === "RH(UPR):良品数を入力してください") {
		numbernodefectiveproducts_R.placeholder  = "RH(UPR):Hãy nhập số hàng tốt";
    } else {
    	numbernodefectiveproducts_R.placeholder  = "RH(UPR):良品数を入力してください";
    }

    var totalnumberdefects_label = document.getElementById("totalnumberdefects_label");
    var totalnumberdefects = document.getElementById("totalnumberdefects");
    var totalnumberdefects_R = document.getElementById("totalnumberdefects_R");
    // 合計不良数_ラベルの翻訳変換
    if (totalnumberdefects_label.textContent === "合計不良数:") {
    	totalnumberdefects_label.textContent = "Tổng số hàng lỗi:";
    	totalnumberdefects_label.style.fontWeight = "bold";
    } else {
    	totalnumberdefects_label.textContent = "合計不良数:";
    	totalnumberdefects_label.style.fontWeight = "bold";
    }
    // 合計不良数_メッセージの翻訳変換
    if (totalnumberdefects.placeholder  === "LH(LWR):不良数1～9を入力してください") {
    	totalnumberdefects.placeholder  = "LH(LWR):Hãy nhập số hàng lỗi 1 đến 9";
    } else {
    	totalnumberdefects.placeholder  = "LH(LWR):不良数1～9を入力してください";
    }
    // 合計不良数R_メッセージの翻訳変換
    if (totalnumberdefects_R.placeholder  === "RH(UPR):不良数1～9を入力してください") {
    	totalnumberdefects_R.placeholder  = "RH(UPR):Hãy nhập số hàng lỗi 1 đến 9";
    } else {
    	totalnumberdefects_R.placeholder  = "RH(UPR):不良数1～9を入力してください";
    }
    
    var remarks_label = document.getElementById("remarks_label");
    // 備考_ラベルの翻訳変換
    if (remarks_label.textContent === "備考　　　:") {
    	remarks_label.textContent = "Ghi chú:";
    	remarks_label.style.fontWeight = "bold";
    } else {
    	remarks_label.textContent = "備考　　　:";
    	remarks_label.style.fontWeight = "bold";
    }

    var defectclassificationcode1_label = document.getElementById("defectclassificationcode1_label");
    // 不良分類コード1_ラベルの翻訳変換
    if (defectclassificationcode1_label.textContent === "不良分類コード1:") {
    	defectclassificationcode1_label.textContent = "Mã phân loại hàng lỗi 1:";
    	defectclassificationcode1_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode1_label.textContent = "不良分類コード1:";
    	defectclassificationcode1_label.style.fontWeight = "bold";
    }

    var numberdefects1_label = document.getElementById("numberdefects1_label");
    var numberdefects1 = document.getElementById("numberdefects1");
    var numberdefects1_R = document.getElementById("numberdefects1_R");
    // 不良数1ラベルの翻訳変換
    if (numberdefects1_label.textContent === "不良数1:") {
    	numberdefects1_label.textContent = "Số hàng lỗi 1:";
    	numberdefects1_label.style.fontWeight = "bold";
    } else {
    	numberdefects1_label.textContent = "不良数1:";
    	numberdefects1_label.style.fontWeight = "bold";
    }
    // 不良数1_メッセージの翻訳変換
    if (numberdefects1.placeholder  === "LH(LWR):不良数を入力してください") {
    	numberdefects1.placeholder  = "LH(LWR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects1.placeholder  = "LH(LWR):不良数を入力してください";
    }
    // 不良数1R_メッセージの翻訳変換
    if (numberdefects1_R.placeholder  === "RH(UPR):不良数を入力してください") {
    	numberdefects1_R.placeholder  = "RH(UPR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects1_R.placeholder  = "RH(UPR):不良数を入力してください";
    }

    var defectclassificationcode2_label = document.getElementById("defectclassificationcode2_label");
    // 不良分類コード2_ラベルの翻訳変換
    if (defectclassificationcode2_label.textContent === "不良分類コード2:") {
    	defectclassificationcode2_label.textContent = "Mã phân loại hàng lỗi 2:";
    	defectclassificationcode2_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode2_label.textContent = "不良分類コード2:";
    	defectclassificationcode2_label.style.fontWeight = "bold";
    }

    var numberdefects2_label = document.getElementById("numberdefects2_label");
    var numberdefects2 = document.getElementById("numberdefects2");
    var numberdefects2_R = document.getElementById("numberdefects2_R");
    // 不良数2_ラベルの翻訳変換
    if (numberdefects2_label.textContent === "不良数2:") {
    	numberdefects2_label.textContent = "Số hàng lỗi 2:";
    	numberdefects2_label.style.fontWeight = "bold";
    } else {
    	numberdefects2_label.textContent = "不良数2:";
    	numberdefects2_label.style.fontWeight = "bold";
    }
    // 不良数2_メッセージの翻訳変換
    if (numberdefects2.placeholder  === "LH(LWR):不良数を入力してください") {
    	numberdefects2.placeholder  = "LH(LWR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects2.placeholder  = "LH(LWR):不良数を入力してください";
    }
    // 不良数2R_メッセージの翻訳変換
    if (numberdefects2_R.placeholder  === "RH(UPR):不良数を入力してください") {
    	numberdefects2_R.placeholder  = "RH(UPR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects2_R.placeholder  = "RH(UPR):不良数を入力してください";
    }

    var defectclassificationcode3_label = document.getElementById("defectclassificationcode3_label");
    // 不良分類コード3_ラベルの翻訳変換
    if (defectclassificationcode3_label.textContent === "不良分類コード3:") {
    	defectclassificationcode3_label.textContent = "Mã phân loại hàng lỗi 3:";
    	defectclassificationcode3_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode3_label.textContent = "不良分類コード3:";
    	defectclassificationcode3_label.style.fontWeight = "bold";
    }

    var numberdefects3_label = document.getElementById("numberdefects3_label");
    var numberdefects3 = document.getElementById("numberdefects3");
    var numberdefects3_R = document.getElementById("numberdefects3_R");
    // 不良数3_ラベルの翻訳変換
    if (numberdefects3_label.textContent === "不良数3:") {
    	numberdefects3_label.textContent = "Số hàng lỗi 3:";
    	numberdefects3_label.style.fontWeight = "bold";
    } else {
    	numberdefects3_label.textContent = "不良数3:";
    	numberdefects3_label.style.fontWeight = "bold";
    }
    // 不良数3_メッセージの翻訳変換
    if (numberdefects3.placeholder  === "LH(LWR):不良数を入力してください") {
    	numberdefects3.placeholder  = "LH(LWR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects3.placeholder  = "LH(LWR):不良数を入力してください";
    }
    // 不良数3R_メッセージの翻訳変換
    if (numberdefects3_R.placeholder  === "RH(UPR):不良数を入力してください") {
    	numberdefects3_R.placeholder  = "RH(UPR):Hãy nhập số hàng lỗi";
    } else {
    	numberdefects3_R.placeholder  = "RH(UPR):不良数を入力してください";
    }

    var defectclassificationcode4_label = document.getElementById("defectclassificationcode4_label");
    // 不良分類コード4_ラベルの翻訳変換
    if (defectclassificationcode4_label.textContent === "不良分類コード4:") {
    	defectclassificationcode4_label.textContent = "Mã phân loại hàng lỗi 4:";
    	defectclassificationcode4_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode4_label.textContent = "不良分類コード4:";
    	defectclassificationcode4_label.style.fontWeight = "bold";
    }

    var numberdefects4_label = document.getElementById("numberdefects4_label");
    // 不良数4_ラベルの翻訳変換
    if (numberdefects4_label.textContent === "不良数4:") {
    	numberdefects4_label.textContent = "Số hàng lỗi 4:";
    	numberdefects4_label.style.fontWeight = "bold";
    } else {
    	numberdefects4_label.textContent = "不良数4:";
    	numberdefects4_label.style.fontWeight = "bold";
    }

    var defectclassificationcode5_label = document.getElementById("defectclassificationcode5_label");
    // 不良分類コード5_ラベルの翻訳変換
    if (defectclassificationcode5_label.textContent === "不良分類コード5:") {
    	defectclassificationcode5_label.textContent = "Mã phân loại hàng lỗi 5:";
    	defectclassificationcode5_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode5_label.textContent = "不良分類コード5:";
    	defectclassificationcode5_label.style.fontWeight = "bold";
    }

    var numberdefects5_label = document.getElementById("numberdefects5_label");
    // 不良数5_ラベルの翻訳変換
    if (numberdefects5_label.textContent === "不良数5:") {
    	numberdefects5_label.textContent = "Số hàng lỗi 5:";
    	numberdefects5_label.style.fontWeight = "bold";
    } else {
    	numberdefects5_label.textContent = "不良数5:";
    	numberdefects5_label.style.fontWeight = "bold";
    }

    var defectclassificationcode6_label = document.getElementById("defectclassificationcode6_label");
    // 不良分類コード6_ラベルの翻訳変換
    if (defectclassificationcode6_label.textContent === "不良分類コード6:") {
    	defectclassificationcode6_label.textContent = "Mã phân loại hàng lỗi 6:";
    	defectclassificationcode6_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode6_label.textContent = "不良分類コード6:";
    	defectclassificationcode6_label.style.fontWeight = "bold";
    }

    var numberdefects6_label = document.getElementById("numberdefects6_label");
    // 不良数6_ラベルの翻訳変換
    if (numberdefects6_label.textContent === "不良数6:") {
    	numberdefects6_label.textContent = "Số hàng lỗi 6:";
    	numberdefects6_label.style.fontWeight = "bold";
    } else {
    	numberdefects6_label.textContent = "不良数6:";
    	numberdefects6_label.style.fontWeight = "bold";
    }

    var defectclassificationcode7_label = document.getElementById("defectclassificationcode7_label");
    // 不良分類コード7_ラベルの翻訳変換
    if (defectclassificationcode7_label.textContent === "不良分類コード7:") {
    	defectclassificationcode7_label.textContent = "Mã phân loại hàng lỗi 7:";
    	defectclassificationcode7_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode7_label.textContent = "不良分類コード7:";
    	defectclassificationcode7_label.style.fontWeight = "bold";
    }

    var numberdefects7_label = document.getElementById("numberdefects7_label");
    // 不良数7_ラベルの翻訳変換
    if (numberdefects7_label.textContent === "不良数7:") {
    	numberdefects7_label.textContent = "Số hàng lỗi 7:";
    	numberdefects7_label.style.fontWeight = "bold";
    } else {
    	numberdefects7_label.textContent = "不良数7:";
    	numberdefects7_label.style.fontWeight = "bold";
    }

    var defectclassificationcode8_label = document.getElementById("defectclassificationcode8_label");
    // 不良分類コード8_ラベルの翻訳変換
    if (defectclassificationcode8_label.textContent === "不良分類コード8:") {
    	defectclassificationcode8_label.textContent = "Mã phân loại hàng lỗi 8:";
    	defectclassificationcode8_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode8_label.textContent = "不良分類コード8:";
    	defectclassificationcode8_label.style.fontWeight = "bold";
    }

    var numberdefects8_label = document.getElementById("numberdefects8_label");
    // 不良数8_ラベルの翻訳変換
    if (numberdefects8_label.textContent === "不良数8:") {
    	numberdefects8_label.textContent = "Số hàng lỗi 8:";
    	numberdefects8_label.style.fontWeight = "bold";
    } else {
    	numberdefects8_label.textContent = "不良数8:";
    	numberdefects8_label.style.fontWeight = "bold";
    }

    var defectclassificationcode9_label = document.getElementById("defectclassificationcode9_label");
    // 不良分類コード9_ラベルの翻訳変換
    if (defectclassificationcode9_label.textContent === "不良分類コード9:") {
    	defectclassificationcode9_label.textContent = "Mã phân loại hàng lỗi 9:";
    	defectclassificationcode9_label.style.fontWeight = "bold";
    } else {
    	defectclassificationcode9_label.textContent = "不良分類コード9:";
    	defectclassificationcode9_label.style.fontWeight = "bold";
    }

    var numberdefects9_label = document.getElementById("numberdefects9_label");
    // 不良数9_ラベルの翻訳変換
    if (numberdefects9_label.textContent === "不良数9:") {
    	numberdefects9_label.textContent = "Số hàng lỗi 9:";
    	numberdefects9_label.style.fontWeight = "bold";
    } else {
    	numberdefects9_label.textContent = "不良数9:";
    	numberdefects9_label.style.fontWeight = "bold";
    }

    // 翻訳ボタン_表示の翻訳変換
    var toggleBtn = document.getElementById('toggle-language-btn');
    if (toggleBtn.textContent === "Dịch văn bản") {
	  toggleBtn.textContent = '翻訳'; 
    } else {
	  toggleBtn.textContent = "Dịch văn bản";
    }

    // 登録ボタン_表示の翻訳変換
    var registrationBtn = document.getElementById('registration');
    if (registrationBtn.textContent === "Đăng kí") {
    	registrationBtn.textContent = '登録'; 
    } else {
    	registrationBtn.textContent = "Đăng kí";
    }

    // スタイルの切り替え
    var labels = document.querySelectorAll('.required-label');
    labels.forEach(function(label) {
        label.classList.toggle('required-label_vn');
    });
}

</script>
</body>