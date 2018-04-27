<%@page import="java.util.Collection"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gugudanResult</title>
</head>
<body>
			<h1>입력받은 두 값으로 구구단</h1>
<%
			//-------------------------------------------------------------------구구단 (첫번째, 두번째 값을 이용한 결과) 
			ArrayList<String> gugudanList = (ArrayList<String>)request.getAttribute("gugudanList");
			
			for(int i=0; i<gugudanList.size(); i++){
				
				out.println( gugudanList.get(i));
			}
%>	
			<h1>입력받은 단으로 배수 10개구하기</h1>
<%
			//-------------------------------------------------------------------map (세번째 값을 이용한 10개의 배수개수 각각의 값을 출력하기)
			HashMap<String,Object> tenList = (HashMap<String,Object>)request.getAttribute("tenList");
			
		


			/* Collection k = tenList.keySet();
			Iterator itr = k.iterator();
				while(itr.hasNext()){
	
					System.out.println("=======key========"+itr.next());
	
					}
			
			Collection v = tenList.values();

			Iterator itrv = v.iterator();

				while(itrv.hasNext()){

				System.out.println("=======value========"+itrv.next());

				} */
			
			for (String mapkey : tenList.keySet()){
				out.println(mapkey+" : " + tenList.get(mapkey) + "<br/>");
			} 

			/*  Iterator<Integer> iterator = tenList.keySet().iterator();
			// 반복자를 이용해서 출력
			while (iterator.hasNext()) { 
				int key = iterator.next(); // 키 얻기
				out.println("(" + key + " , " + tenList.get(key) + ")" + "<br/>" );  // 출력
			}  */
%>
			<h1>입력받은 두 값으로 사칙연산 수행</h1>
<%			
			//-------------------------------------------------------------------계산기 (네번째, 다섯번째 값을 이용한 결과)
			ArrayList<Integer> calcList = (ArrayList<Integer>)request.getAttribute("calcList");
			
			for(int j=0; j<calcList.size(); j++){
				
				out.println(calcList.get(j));
			}
			
%>
</body>
</html>