<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/include/top.jsp" %>
<section>
	<div id=div1 align="center">
	<br>
	
		<form action="insertUser.do" method="post" name="f1" onSubmit="return ch1()">
		<table border="1">
			<tr><td bgcolor="orange">아이디</td>
    			<td><input type=text  name=id></td></tr>
			
			<tr><td bgcolor="orange">패스워드</td>
			    <td> <input type=password  name=password></td></tr>
			<tr><td bgcolor="orange">패스워드 확인</td>
			    <td> <input type=password  name=password2></td></tr>
			    
			<tr><td bgcolor="orange">이름</td>
			    <td> <input type=text  name=name></td></tr>
			<tr><td bgcolor="orange">주소</td>
			    <td> <input type=text name=adress></td></tr>
			<tr><td bgcolor="orange">전화번호</td>
			    <td> <input type=text name=phone></td></tr>
			<tr><td bgcolor="orange">이메일</td>
			    <td> <input type=text name=email></td></tr>
			<tr><td colspan=2 align=center> <input type=submit  value="회원가입"></td></tr>
		</table>
		<br>
		&nbsp; 아이디가 없으면 회원가입을 진행해주세요.
		<br>
		</form>
	</div>
</section>

<script>
	function ch1(){
		if(f1.id.value==""){
			alert("아이디를 입력해주세요");
			f1.id.focus();
			return false;
		}
		
		if(f1.password.value==""){
			alert("비밀번호를 입력해주세요");
			f1.password.focus();
			return false;
		}
		
		if(f1.password.value != f1.password2.value){
			alert("암호를 다시 확인해주세요");
			f1.password.value="";
			f1.password2.value="";
			f1.password.focus();
			return false;
		}
		
		if(f1.name.value==""){
			alert("이름을 입력해주세요");
			f1.name.focus();
			return false;
		}
		
		if(f1.adress.value==""){
			alert("주소를 입력해주세요");
			f1.adress.focus();
			return false;
		}
		
		if(f1.phone.value==""){
			alert("전화번호를 입력해주세요");
			f1.phone.focus();
			return false;
		}
		
		if(f1.email.value==""){
			alert("이메일을 입력해주세요");
			f1.email.focus();
			return false;
		}
	}
</script>
<%@ include file="/include/bottom.jsp" %>