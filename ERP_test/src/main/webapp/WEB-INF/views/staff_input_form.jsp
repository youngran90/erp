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
	
		
		function onlyNumber(obj) {
		    $(obj).keyup(function(){
		        $(this).val($(this).val().replace(/[^0-9]/g,""));
		         $(this).apend()
		    }); 
		}
		
		
		
		
		$("#register").on("click", function(){
			alert("in")
			var staff_name = $("#staff_name").val();
			
			var jumin_f = $("#jumin_f").val();
			var jumin_b = $("#jumin_b").val();
			var jumin_no = jumin_f + "-" + jumin_b;
			
			var school_name = $("#school_name").val();
			
		
			var skill_names =[];
			
			$("input[name=skill_name]:checked").each(function(){
				skill_names.push($(this).val());
			});
	
			var before_grade_year =  $("#before_grade_year").val();
			var before_grade_month =  $("#before_grade_month").val();
			var before_grade_day =  $("#before_grade_day").val();
			
			var before_graduate_day = before_grade_year +"-" + before_grade_month + "-" + before_grade_day;
			
			var after_grade_year =  $("#after_grade_year").val();
			var after_grade_month =  $("#aftere_grade_month").val();
			var after_grade_day =  $("#after_grade_day").val();
			
			var after_graduate_day = after_grade_year +"-" + after_grade_month + "-" + after_grade_day;
			
			if(before_grade_year > after_grade_year ){
				alert("���� ��¥�� Ʋ�Ƚ��ϴ�.");
				$("#before_grade_year").val("");
				$("#before_grade_month").val("");
				$("#before_grade_day").val("");
				$("#after_grade_year").val("");
				$("#after_grade_month").val("");
				$("#after_grade_day").val("");
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
					<th colspan="6">��� ���� ���</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>�̸�</td>
					<td><input type="text" id="staff_name" name="staff_name"></td>
					<td>�ֹι�ȣ</td>
					<td>
					<input type="text" name="jumin_f" id="jumin_f" size="6" maxlength="6" onkeydown="onlyNumber(this)">-
					<input type="password" id="jumin_b" name="jumin_b" size="12" maxlength="12" onkeydown="onlyNumber(this)">
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
					<td><input type="checkbox" name="school_name" id="school_name" value="����">���� 
						<input type="checkbox" name="school_name" id="school_name" value="��������">�������� 
						<input type="checkbox" name="school_name" id="school_name" value="�Ϲݴ���">�Ϲݴ���</td>
					<td>���</td>
					<td colspan="3">
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="Java">Java 
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="JSP">JSP 
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="ASP">ASP
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass"  value="PHP">PHP
						<input type="checkbox" name="skill_name" id="skill_name"  class="chkclass" value="Delphi">Delphi
					</td>
				</tr>
				<tr>
				
					<td>������</td>
					<td colspan="5">
					<jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
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
		<div id="bt_group" class="bt_group">
			<input	type="button" id="reset" name="reset" value="�ʱ�ȭ"> 
			<input	type="button" id="register" name="register" value="���">
		</div>
		<span></span>
	</form>


</body>
</html>