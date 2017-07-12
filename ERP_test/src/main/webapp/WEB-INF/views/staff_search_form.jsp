<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/resources/css/stylesheet.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

function gender(num){
	
}

$(function(){
	
	$("#register").on("click", function(){
	
		window.open("/staff_input_form", "", "width:600px; height:500px;");
		
	});
	
	
	 $('input[type="checkbox"][name="school_name"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="school_name"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
	 

	 $('input[type="checkbox"][name="gender"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="gender"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
});




</script>
<title>Insert title here</title>
</head>
<body>
	<form action="" class="erp_table">
		<table>
			<thead>
				<tr>
					<th colspan="6">��� ���� �˻�</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>�̸�</td>
					<td><input type="text" id="staff_name" id="staff_name"></td>
					<td>����</td>
					<td><input type="checkbox" name="gender" id="gender" value="��" >�� 
					<input type="checkbox" name="gender" id="gender" value="��">��</td>
					<td>����</td>
					<td><select name="religion_name">
							<option value=""></option>
							<option value="�⵶��">�⵶��</option>
							<option value="õ�ֱ�">õ�ֱ�</option>
							<option value="�ұ�">�ұ�</option>
							<option value="�̽���">�̽���</option>
							<option value="����">����</option>
					</select></td>
				</tr>
				<tr>
					<td>�з�</td>
					<td>
						<input type="checkbox" name="school_name" id="school_name" value="����">���� 
						<input type="checkbox" name="school_name" id="school_name" value="��������">�������� 
						<input type="checkbox" name="school_name" id="school_name" value="�Ϲݴ���">�Ϲݴ���
					</td>
					<td>���</td>
					<td colspan="3"><input type="checkbox" name="skill"
						class="skill" value="Java">Java <input type="checkbox"
						name="skill" class="skill" value="JSP">JSP <input
						type="checkbox" name="skill" class="skill" value="ASP">ASP
						<input type="checkbox" name="skill" class="skill" value="PHP">PHP
						<input type="checkbox" name="skill" class="skill" value="Delphi">Delphi
					</td>
				</tr>
				<tr>
				
				<jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
				
					<td>������</td>
					<td colspan="5">
					<!-- ������ �� -->
					<select name="before_grade_year" id="before_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> �� 
					<select name="before_grade_month" id="before_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>��
					<select name="before_grade_day" id="before_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>�� ~
					<!-- ������ �� -->
					<select name="after_grade_year" id="after_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> �� 
					<select name="after_grade_month" id="after_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>��
					<select name="after_grade_day" id="after_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>��
					
					</td>
				</tr>
			</tbody>
		</table>
	</form>
			<div id="bt_group" class="bt_group">
			<input type="button" id="search" value="�˻�"> 
			<input	type="button" id="search_all" value="���ΰ˻�"> 
			<input	type="button" id="reset" value="�ʱ�ȭ"> 
			<input	type="button" id="register" value="���">
		</div>

	<c:if test="${list ne null}">
		<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�̸�</th>
					<th>����</th>
					<th>����</th>
					<th>������</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
				</tr>
			</tbody>
		</table>
	</c:if>



</body>
</html>