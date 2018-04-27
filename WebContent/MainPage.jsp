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
	<form name="formSend" action="GetMain" method="post" >
		값1 / 값2 :  <input type="text" name="mainGop1" id="gop"/>
					  <input type="text" name="mainGop2" id="gop"/><br/><br/>
		값3 : 		  <input type="text" name="mainGop3" id="gop"/><br/><br/>
		값4 / 값5 : <input type="text" name="mainGop4" id="gop"/>
					  <input type="text" name="mainGop5" id="gop"/>
				
		<!-- 합친 문자열을 담아 넘기는 input태그-->		
		<input  type="hidden"  id="mainGopList" name="mainGopList" />
		
		<!-- 입력버튼과 / 로그아웃 버튼 -->
		<input value="입력"  type="button" onclick="doPage()"/>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'" />
	</form>
			
	<script>		
		function doPage(){
			 
			/* 넘겨줄 폼의 이름을 찾아서, 그폼의 값을 찾는다. */
			/* var sub1 = document.formSend.mainGop1.value; 
			var sub2 = document.formSend.mainGop2.value;
			var sub3 = document.formSend.mainGop3.value;
			var sub4 = document.formSend.mainGop4.value;
			var sub5 = document.formSend.mainGop5.value; */
			
			/* 합칠 문자열을 '/' 으로 구분지어 연결 */
			/* var subGopResult = sub1.concat("/" + sub2 + "/" + sub3 + "/" + sub4 + "/" + sub5);
			
			document.getElementById('mainGopList').value = subGopResult;
			document.write(document.getElementById('mainGopList').value);
			
		    document.formSend.submit();	 */
		    
		    /* 폼도 선언할수있다!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! */
		    /* 폼을 선언해줌으로써, 폼안의 객체들의 접근을 가능케한다. */
		    var frm = document.formSend;
		
		    /* 넘겨줄 폼의 이름을 찾아서, 그폼의 값을 찾는다. */
		    for(var i=0; i<=5; i++){
		    	frm.mainGopList.value = frm.mainGop[i].value;
		    	
		    }
		   /*  
		    var sub1 = frm.mainGop1.value; 
			var sub2 = frm.mainGop2.value;
			var sub3 = frm.mainGop3.value;
			var sub4 = frm.mainGop4.value;
			var sub5 = frm.mainGop5.value;
	 		*/		
			
	 		/* 합칠 문자열을 '/' 으로 구분지어 연결 */
		//	frm.mainGopList.value = sub1 + "/" + sub2 + "/" + sub3 + "/" + sub4 + "/" + sub5;
			frm.submit();
		    
		}

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