package finalTest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//메인
public class GetMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetMain() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int dan1 = Integer.parseInt(request.getParameter("mainGop1"));
		int dan2 = Integer.parseInt(request.getParameter("mainGop2"));
		int dan3 = Integer.parseInt(request.getParameter("mainGop3"));		
		//String dan3 = request.getParameter("mainGop3");
		int dan4 = Integer.parseInt(request.getParameter("mainGop4"));
		int dan5 = Integer.parseInt(request.getParameter("mainGop5"));
		
		ArrayList<Integer> danList = new ArrayList<Integer>();
		danList.add(dan1);
		danList.add(dan2);
		danList.add(dan3);
		danList.add(dan4);
		danList.add(dan5);
		
		for(int k=0; k< danList.size(); k++) {
			
			if((danList.get(k) >=10 || danList.get(k) < 0 )) {
				response.sendRedirect("loginForm.jsp");
			}
		}
		
		//----------------------------------------------------------------------- [구구단]				
		//구구단 처리 인스턴스
		GugudanProcess gugupro1 = new GugudanProcess();
		GugudanProcess gugupro2 = new GugudanProcess();
		
		//구구단 결과값 받기
		String gop1 = gugupro1.getResult(dan1);
		String gop2 = gugupro2.getResult(dan2);
		
		ArrayList<String> gugudanList = new ArrayList<String>();
		gugudanList.add(gop1);
		gugudanList.add(gop2);		
		
		//------------------------------------------------------------------------ [ 10의배수를 10개까지 구하기 ]		
		//String dan33 = request.getParameter("mainGop3");
		
		Multiplication multi = new Multiplication();
		HashMap<String, Object> tenMulti = multi.multipl(dan3);
		
		//------------------------------------------------------------------------ [ 계산기 ]
		Calculator calc = new Calculator();
		ArrayList<Integer> calcList = (ArrayList<Integer>) calc.calculator(dan4, dan5);
		
		//------------------------------------------------------------------------
		request.setAttribute("gugudanList", gugudanList); //구구단
		request.setAttribute("tenList", tenMulti); //map
		request.setAttribute("calcList", calcList); //계산기
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/gugudanResult.jsp");
		dispatcher.forward(request, response);
		

	}

}
