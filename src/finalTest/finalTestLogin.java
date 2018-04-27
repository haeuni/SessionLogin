package finalTest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//로그인
public class finalTestLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String[ ] comId = {"num1","num2","num3"};
	private String[ ] comPwd = {"1111","2222","3333"};
	//private String[ ] comName = {"num1","num2","num3"};
	
    public finalTestLogin() {
        super();
    }  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				        
		// 회원의 아이디와 비밀번호 받아오기.
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String memberName = request.getParameter("memberName");		
		
		String name = "";

		for(int i=0; i<comId.length; i++)
		{
			if(memberId.equals(comId[i].toString()) && memberPwd.equals(comPwd[i].toString())){
				
				//name = comName[i].toString();   
				name = memberId;
			}
		}
		
		if(!"".equals(name)) {
			
			//회원의 아이디가 num이고, 비밀번호가 num이 맞으면 세션생성
			HttpSession session = request.getSession();
			
			session.setAttribute("passId", memberId);
			session.setAttribute("passPwd", memberPwd);
			session.setAttribute("passName", memberName);
			
			//로그인 성공시 
			response.sendRedirect("loginSuccess.jsp");
		}
		else {
			response.sendRedirect("MainPage.jsp");
		}
	}

}
