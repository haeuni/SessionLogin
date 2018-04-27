<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String passId = (String)session.getAttribute("passId");
	String passName = (String)session.getAttribute("passName");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MainPage</title>
<style>
	#input{
		width: 250px;
		background-color: white;
		border-color: black;
	}
	#gop{
		width: 20px;
		align-content: center;
	}
</style>
</head>
<body>
	<div style="background-color: purple; width: 250px ; color: white; padding: 10px 10px 10px 10px;">
		ID : <%=passId%><br><br>
		<%=passName %>님이 로그인 하였습니다.<br/><br/>
		<input id="input" type="button" value="로그아웃" onclick="location.href='loginForm.jsp'" >
	</div>	
	
	<h3>5개의 값을 입력해 보기 ( 1~10 中 )</h3>
	<form action="GetMain" method="post">
		값1 / 값2 :  <input type="text" name="mainGop1" id="gop"/>
					  <input type="text" name="mainGop2" id="gop"/><br/><br/>
		값3 : 		  <input type="text" name="mainGop3" id="gop"/><br/><br/>
		값4 / 값5 : <input type="text" name="mainGop4" id="gop"/>
					  <input type="text" name="mainGop5" id="gop"/>
		
			  <!--  		  <input type="text" name="mainGop6" id="gop" 
			  				style="background-color: #cecece;' color: white; width: 5px; " />	 --> 
				 	 

		<input type="submit" value="입력"/>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'" />
	</form>
			
	<script>		
		/* 	var mergeGop;
		
			function input() {
				var Input = document.getElementById("gop").value;
				mergeGop = gop;
		} */
			
		<%	
		if(passName == null)
		{
		%>
				alert('이름도 입력해주세요.');
				document.location.href="loginForm.jsp";	
		<%
		}
		%>
		
		
	</script>
</body>
</html>