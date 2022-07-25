<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>

<%@ page import="com.shop.model.UserVO" %>

<%
	// 세션에 저장된 회원 정보를 꺼낸다.
	UserVO user = (UserVO) session.getAttribute("user");
%>
 
<section>
<body>

<div align="center">
<br>

	<br><br>
	<form action="updateUser.do" method="post">
		<table border="1">
			<tr><td bgcolor="orange">아이디</td>
    			<td><input type=text  name=id value="${user.id}" readonly style="background-color:grey"></td></tr>
			
			<tr><td bgcolor="orange">패스워드</td>
			    <td> <input type=password  name=password value="${user.password}" ></td></tr>
			<tr><td bgcolor="orange">패스워드 확인</td>
			    <td> <input type=password  name=password2 value="${user.password2}"></td></tr>
			    
			<tr><td bgcolor="orange">이름</td>
			    <td> <input type=text  name=name value="${user.name}"></td></tr>
			<tr><td bgcolor="orange">주소</td>
			    <td> <input type=text name=adress value="${user.adress}"></td></tr>
			<tr><td bgcolor="orange">전화번호</td>
			    <td> <input type=text name=phone value="${user.phone}"></td></tr>
			<tr><td bgcolor="orange">이메일</td>
			    <td> <input type=text name=email value="${user.email}"></td></tr>
			<tr>
				<td colspan=2 align=center> 
					<input type=submit  value="회원정보 수정">
				</td>
			</tr>
		</table>
	</form>

<br>
<br>
<br>
</div>

</body>
</section>
<%@ include file="/include/bottom.jsp" %>