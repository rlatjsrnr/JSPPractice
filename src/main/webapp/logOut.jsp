<%@ page pageEncoding="UTF-8"%>
<!-- logOut.jsp -->
<%
	session.removeAttribute("loginMember");
	Cookie cookie = new Cookie("rememberMe", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>
<script>
	alert('로그아웃');
	location.href='index.jsp';
</script>






