<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file="/include/top.jsp" %>

<section>
	<div id=div1 align="center">
	<br>
		<h1>회원 로그인</h1>
		<form action="login.do" method="post" name="f1" onSubmit="return ch1()">
		<table border="1">
			<tr><td bgcolor="orange">아이디</td>
    			<td><input type=text  name=id></td></tr>
			<tr><td bgcolor="orange">패스워드</td>
			    <td> <input type=password  name=password></td></tr>
			<tr>
				<td colspan=2 align=center> 
					<input type=submit  value="로그인">
				</td>
			</tr>
		</table>
		<br>
		</form>
		<br>
		&nbsp; 가입 된 아이디가 없다면 회원가입을 진행해주세요.
		<br><br>
		<form action="member.jsp" method="post">
			<input type="submit" value="회원가입">
		</form>
	</div>
	
	<script>
		function ch1(){
			if(f1.id.value=="") {
				alert("아이디를 입력하세요");
				f1.id.focus();
				return false;
			}
			if(f1.password.value=="") {
				alert("비밀번호를 입력하세요");
				f1.password.focus();
				return false;
			}
		}
	</script>
	
</section>

<%@ include file="/include/bottom.jsp" %>