package week2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Infomation")
public class Infomation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Infomation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//input 태그로 넘어온 데이터
		//요청일 때는 무조건 request object
		response.setContentType("text/html;charset-utf-8");
		String name = request.getParameter("Name");
		String address = request.getParameter("Address");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.printf("<h3>%s 님은 %s에 사십니다.</h3>", name, address);
		out.println("</html></body>");
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
