package jspTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BimanController
 */
@WebServlet("/BimanController")
public class BimanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BimanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * request.setCharacterEncoding("utf-8");
		 * response.setCharacterEncoding("utf-8"); PrintWriter out =
		 * response.getWriter(); //
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 * out.print("<h1>Hello1</h1>"); out.print("<h1>헬로2</h1>");
		 */
		response.setContentType("text/html;charset=utf-8");
		String h = request.getParameter("height");	
		String w = request.getParameter("weight");	
		
		Biman biman = new Biman();
		biman.setHeight(h);
		biman.setWeight(w);
		biman.calcBiman();
		request.setAttribute("bimanObj", biman);
		// 포워딩
		RequestDispatcher fw = request.getRequestDispatcher("bimanView.jsp");
		fw.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
