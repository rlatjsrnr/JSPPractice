<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- info.jsp -->
<jsp:useBean id="loginMember" class="vo.MemberVO" scope="session" />
<section>
 	<table>
 		<tr>
 			<td colspan="2"><h1>회원가입</h1></td>
 		</tr>
 		<tr>
 			<td>아이디</td>
 			<td>
 				<%=loginMember.getId() %>
			</td>
 		</tr>
 		<tr>
 			<td>비밀번호</td>
 			<td>
 				<%=loginMember.getPass() %>
			</td>
 		</tr>
 		<tr>
 			<td>이름</td>
 			<td>
 				<%=loginMember.getName() %>
 			</td>
 		</tr>
 		<tr>
 			<td>주소</td>
 			<td>
 				<%=loginMember.getAddr() %>
 			</td>
 		</tr>
 		<tr>
 			<td>전화번호</td>
 			<td>
 				<%=loginMember.getPhone() %>
 			</td>
 		</tr>
 		<tr>
 			<td>성별</td>
 			<td>
 				<label>
 					<input type="radio" <%=loginMember.getGender().equals("남성") ? "Checked" : "disalbed" %>/> 남성
 				</label>
 				<label>
 					<input type="radio" <%=loginMember.getGender().equals("여성") ? "Checked" : "disabled" %>/> 여성
 				</label>
 			</td>
 		</tr>
 		<tr>
 			<td>나이</td>
 			<td>
 				<%=loginMember.getAge() %>
 			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button onclick="location.href='index.jsp';">메인으로</button> 
				 <button onclick="withdraw();">회원탈퇴</button> 
 			</td>
 		</tr>
 	</table>	
</section>
<script>
	function withdraw(){
		let result = confirm("정말로 탈퇴 하시겠습니까?");	
		if(result){
			location.href="withdraw.jsp";	
		}
	}
</script>











 	
 	
 	
 	
 	
 	