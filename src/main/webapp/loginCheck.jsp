<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!-- loginCheck.jsp -->
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="memberList" type="java.util.List<vo.MemberVO>" class="java.util.ArrayList" scope="application" />
<jsp:useBean id="dto" class="dto.LoginDTO" />
<jsp:setProperty name="dto" property="*" />

<%
	for(MemberVO member : memberList){
		if(member.getId().equals(dto.getId()) && member.getPass().equals(dto.getPass())){
			session.setAttribute("loginMember", member);
			
			if(dto.isRememberMe()){
				Cookie cookie = new Cookie("rememberMe", member.getId());
				cookie.setMaxAge(60*60*24*15);
				response.addCookie(cookie);	
			}			
			
			out.println("<script>");
			out.println("alert('로그인 성공');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
		}
		
	}
%>
<script>
	alert('로그인 실패');
	history.back();
</script>






