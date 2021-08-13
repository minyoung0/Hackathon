<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>회원가입</title>
</head>

<body>
<form action="./st_userJoinAction.jsp"method="post">
	
	<table border="20">
		<caption>회원가입</caption>
			
		<tr>
			<td><label for="userID">아이디 </label>
			<td><input type="text" name="userID" id="userID" required></td>
		</tr>
		
<form name="join">
   <tr>
			<td><label for="userPassword">비밀번호 </label>
			<td><input type="password" name="userPassword" id="userPassword" required></td>
		</tr>
		
    <tr>
			<td><label for="pwcheck">비밀번호 확인</label></td>
			<td><input type="password" name="pwcheck" id="pwcheck" required> <span id="pwcheckText"></span> </td>
		</tr>

  </form>

  <script type="text/javascript">
    function test() {
      var p1 = document.getElementById('password1').value;
      var p2 = document.getElementById('password2').value;
      
      if(p1.length < 6) {
              alert('입력한 글자가 6글자 이상이어야 합니다.');
              return false;
          }
          
          if( p1 != p2 ) {
            alert("비밀번호불일치");
            return false;
          } else{
            alert("비밀번호가 일치합니다");
            return true;
          }
    }
  </script>
		
		<tr>
			<td><label for="name">이름 </label></td>
			<td><input type="text" name="name" id="name" required></td>
		</tr>
		
		<tr>
			<td><label for="email">이메일</label></td>
			<td><input type="text" name="email" id="email" required>
			<label for="id">@</label>
			<select name="이메일">
					<option value="다음">daum.net</option>
					<option value="네이버">naver.com</option>
					<option value="구글">google.com</option>
				</select>
			<input type="button" value="인증">
			</td>
		</tr>
		
		<tr>
		<td><label for="phonenumber">전화번호</label> </td>
			<td>
			<select name="phonecompany">
					<option value="SKT">SKT</option>
					<option value="LGT">LGT</option>
					<option value="KT">KT</option>
				</select>
			<input type="phonenumber" name="number" id="phonenumber" required>
			<br><input type="checkbox" name="checkInfo" value="개인정보동의" id="reading">개인정보동의<br>
				
			</td>
		</tr>
		
		<tr>
			<td colspan="2" style="text-align:center;">
			    <input type="submit" onclick="test()" value="회원가입">
				<input type="reset" value="다시입력">
			</td>
		</tr>
	</table>
</form>

<form action="./UseStunDB.jsp" method="post">
<tr>
	<td colspan="2" style="text-align:center;">
 		<br><input type="submit" value="관리자용확인"><br>
 		<br><input type="image" src="IMG_1085.JPG" width="150" >관리자용 확인 버튼입니당<br>
	</td>
</tr>
</form>

</body>
</html>