import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QuikSort
 */
@WebServlet("/QuikSort")
public class QuickSort extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath()); --->?????

		int[] list = new int[20];
		int i = 0;
		// 숫자 리스트에 대입하기
		String str = request.getParameter("NUM1");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM2");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM3");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM4");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM5");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM6");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM7");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM8");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM9");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM10");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM11");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM12");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM13");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM14");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM15");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM16");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM17");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM18");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM19");
		list[i++] = Integer.parseInt(str);
		str = request.getParameter("NUM20");
		list[i++] = Integer.parseInt(str);

		Qsort(list, 0, 19);

		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();

		out.println("<HTML>");
		out.println("<HEAD><TITLE>퀵 정렬 결과</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("아래는 퀵 정렬 결과입니다.<BR>");
		for (int j = 0; j < 20; j++) {
			out.printf("%d ", list[j]);
		}

		out.println("</BODY>");
		out.println("</HTML>");
	}

	void swap(int Array[], int i, int j) {
		int temp;
		temp = Array[i];
		Array[i] = Array[j];
		Array[j] = temp;
	}

	public void Qsort(int Array[], int left, int right) {
		int pivot;
		int i, last;

		if (left >= right) { // 왼쪽이 작은 순서
			return;
		}

		pivot = (left + right) / 2; // 배열 중의 가운데 숫자를 pivot으로 설정한다.
		swap(Array, left, pivot);
		last = left;

		for (i = left + 1; i <= right; i++) {
			if (Array[i] < Array[left]) {
				swap(Array, ++last, i);
			}
		}

		swap(Array, left, last);
		Qsort(Array, left, last - 1);
		Qsort(Array, left + 1, right);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}