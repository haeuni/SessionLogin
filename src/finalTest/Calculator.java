package finalTest;

import java.util.ArrayList;

//계산기
//입력값으로 연산수행후, 결과값 List로 이용해 담기.
public class Calculator {
	
		public ArrayList<Integer> calculator(int dan4, int dan5) {		
			
			ArrayList<Integer> calcResult = new ArrayList<Integer>();
			
			calcResult.add(dan4*dan5);
			calcResult.add(dan4/dan5);
			calcResult.add(dan4-dan5);
			calcResult.add(dan4+dan5);			
			
			return calcResult;
		}
}
