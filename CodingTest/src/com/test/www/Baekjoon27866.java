package com.test.www;

import java.util.Scanner;

public class Baekjoon27866 {
	public static void main(String[] args)  {
		//$S$와 정수 $i$가 주어졌을 때, $S$의 $i$번째 글자를 출력하는 프로그램을 작성하시오

		Scanner sc = new Scanner(System.in);
		
		String s = sc.next();
		int cnt = sc.nextInt();
		
		System.out.println(s.substring(cnt-1,cnt));
	}
}