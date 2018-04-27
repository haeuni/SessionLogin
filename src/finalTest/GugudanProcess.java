package finalTest;


//구구단
public class GugudanProcess {
	
	public String getResult(int dan) {
	
		String gugudan="";

		for(int i=1; i<10; i++) {
			
			gugudan += dan + "x" + i + "=" + (dan*i) + "<br/>";
		
		}
		return gugudan;
	}
}
