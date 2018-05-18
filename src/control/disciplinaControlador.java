package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DisciplinaDAO;
import model.Disciplina;

/**
 * Servlet implementation class alunoControlador
 */
@WebServlet("/disciplinaControlador")
public class disciplinaControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DisciplinaDAO dao;
	private static String INSERT = "/cadastro-disciplina.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public disciplinaControlador() {
        super();
        System.out.println("teste");
        dao = new DisciplinaDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("cadastro-disciplina")){
			Disciplina disciplina = new Disciplina();
		
			String nome_disciplina = request.getParameter("disciplina");
			disciplina.setDisciplina(nome_disciplina);
			
			String professor = request.getParameter("professor");
			disciplina.setProfessor(professor);
			
			String emailprof = request.getParameter("emailprof");
			disciplina.setEmailprof(emailprof);
			
			String iddisciplina = request.getParameter("iddisciplina");
			
			if(dao.adicionar(disciplina))
		            //redirecinando para página de login, caso o cadastro tenha tido sucesso:
		            response.sendRedirect("index.html");
		     else
			        response.sendRedirect("erro-cadastro.jsp");	 
		}			
	
	}
}