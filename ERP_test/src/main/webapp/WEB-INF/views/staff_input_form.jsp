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
				alert("선택 날짜가 틀렸습니다.");
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
					<th colspan="6">사원 정보 등록</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" id="staff_name" name="staff_name"></td>
					<td>주민번호</td>
					<td>
					<input type="text" name="jumin_f" id="jumin_f" size="6" maxlength="6" onkeydown="onlyNumber(this)">-
					<input type="password" id="jumin_b" name="jumin_b" size="12" maxlength="12" onkeydown="onlyNumber(this)">
					<td>종교</td>
					<td><select name="religion_name">
							<option value=""></option>
							<option value="기독교">기독교</option>
							<option value="천주교">천주교</option>
							<option value="불교">불교</option>
							<option value="이슬람">이슬람</option>
							<option value="무교">무교</option>
					</select></td>
				</tr>
				<tr>
					<td>학력</td>
					<td><input type="checkbox" name="school_name" id="school_name" value="고졸">고졸 
						<input type="checkbox" name="school_name" id="school_name" value="전문대졸">전문대졸 
						<input type="checkbox" name="school_name" id="school_name" value="일반대졸">일반대졸</td>
					<td>기술</td>
					<td colspan="3">
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="Java">Java 
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="JSP">JSP 
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass" value="ASP">ASP
						<input type="checkbox" name="skill_name" id="skill_name" class="chkclass"  value="PHP">PHP
						<input type="checkbox" name="skill_name" id="skill_name"  class="chkclass" value="Delphi">Delphi
					</td>
				</tr>
				<tr>
				
					<td>졸업일</td>
					<td colspan="5">
					<jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
					<!-- 졸업일 전 -->
					<select name="before_grade_year" id="before_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> 년 
					<select name="before_grade_month" id="before_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>월
					<select name="before_grade_day" id="before_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>일 ~
					<!-- 졸업일 후 -->
					<select name="after_grade_year" id="after_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> 년 
					<select name="after_grade_month" id="after_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>월
					<select name="after_grade_day" id="after_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>일
					
					</td>
				</tr>
			</tbody>
		</table>
		<div id="bt_group" class="bt_group">
			<input	type="button" id="reset" name="reset" value="초기화"> 
			<input	type="button" id="register" name="register" value="등록">
		</div>
		<span></span>
	</form>


</body>
</html>