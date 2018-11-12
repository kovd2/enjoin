package com.finalProject.enjoin.common.util;

import java.util.Random;

public class FindUtil {
	
	public static String createKey() throws Exception{
		StringBuffer key = new StringBuffer();
		Random rd = new Random();
		
		
		for(int i = 0; i< 10; i++) {
			int index = rd.nextInt(3);
			
			
			switch(index) {
				case 0:
					key.append((char)((int)(rd.nextInt(26)) + 97 ));
					break;
				case 1:
					key.append((char)((int)(rd.nextInt(26)) + 65 ));
					break;
				case 2:
					key.append((rd.nextInt(10)));
					break;
			}
		}
		
		return key.toString();
	}
	
}
