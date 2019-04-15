

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servletProc")
public class servletProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public servletProc() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");//jsp에서는 안해도 됨. servlet에서는 반드시 해야함!
		
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String hobby[]=request.getParameterValues("hobby");
		String major=request.getParameter("major");
		String hero=request.getParameter("hero");
		
		PrintWriter out=response.getWriter();
		out.println("<html><head></head>");
		out.println("<title>서블릿 연습</title>");
		out.println("<body>");
		out.println("이름 : "+name+"<br>");
		out.println("ID : "+id+"<br>");
		out.println("PW : "+pw+"<br>");
		out.println("취미 : "+Arrays.toString(hobby)+"<br>");	//원래는 for문으로 출력
//		out.println("취미 : ");
//		for(int i=0; i<hobby.length; i++) {
//			out.println(hobby[i]);
//		}
//		out.println("<br>");
		out.println("과목 : "+major+"<br>");
		out.println("영웅 : "+hero+"<br>");
		out.println("</body>");
		out.println("</html>");
	}

}
