import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ant
 */

@WebServlet("/Ant")
public class A_Ant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Ant</TITLE></HEAD>");
		out.println("<BODY>");
	      
		int[] cnt = new int[9]; //0~8
		String str = "";
		String result = "1";
		int num;
		
		out.printf("%d행 :", 1);
		out.println(result); //1행
		out.println("<BR>");

		for (int j = 0; j < 19; j++) {
			str = result;
			result = ""; //초기화

			for (int i = 0; i < str.length(); i++) { //열 반복
				num = str.charAt(i) - '0'; // 숫자 구함
				cnt[num - 1]++; //숫자 개수 센다

				//마지막 인덱스이거나  or  현재인덱스의 숫자가 다음인덱스의 숫자와 다르면
				if ((i == str.length()-1) || (str.charAt(i) != str.charAt(i+1))) {
					result += num+""+cnt[num-1]; //숫자 숫자개수 추가
					cnt[num - 1] = 0; //현재인덱스의 개수 초기화
					}
				}
			            
			out.printf("%d행 :", j+2);
			out.println(result);
			out.println("<BR>");
			}
		
		out.println("</BODY>");
		out.println("</HTML>");
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}