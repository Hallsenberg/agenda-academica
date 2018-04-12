package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AlunoDAO;
import model.Aluno;

/**
 * Servlet implementation class alunoControlador
 */
@WebServlet("/alunoControlador")
public class alunoControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AlunoDAO dao;
	private static String INSERT = "/cadastro.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public alunoControlador() {
        super();
        System.out.println("teste");
        dao = new AlunoDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at111: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//
		Aluno aluno = new Aluno();
		
		String nome = request.getParameter("nome");
		aluno.setNome(nome);
		
		String email = request.getParameter("email");
		aluno.setEmail(email);
		
		String matricula = request.getParameter("matricula");
		aluno.setMatricula(matricula);
		
		String senha= request.getParameter("senha");
		aluno.setSenha(senha);
		
		String idaluno = request.getParameter("idaluno");
		
		if(dao.adicionar(aluno))
	    {            
	            //redirecinando para página de login, caso o cadastro tenha tido sucesso:
	            response.sendRedirect("login.jsp");
	    }
		 else
		        response.sendRedirect("erro-cadastro.jsp");
			 
	}
}