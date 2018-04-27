package finalTest;

import java.util.HashMap;
import java.util.LinkedHashMap;

// HashMap
public class Multiplication {
	
		public HashMap<String,Object> multipl(int dan3) {
			
			HashMap<String,Object> map = new LinkedHashMap<String,Object>();
			
			for(int i=1; i<=10; i++)
			{ 				
				map.put("key"+i, dan3*i);			
			}			
			return map;
		}
		
}
		
