package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Aluno;

public class AlunoDAO {
	
			//a conex�o com o banco de dados
			private Connection con;

			public AlunoDAO() {
				this.con = (Connection) ConexaoSingleton.getInstance();
			}
			
			public boolean adicionar(Aluno aluno) {

				boolean retorno = false;

				String sql = "insert into aluno"
						+ "(nome, email, matricula, senha)"
						+ " values (?, ?, ?, ?)";

				try {
					// prepared statement para inser��o
					PreparedStatement stmt = con.prepareStatement(sql);

					// seta os valores (da ?) da instru��o SQL
					stmt.setString(1, aluno.getNome());
					stmt.setString(2, aluno.getEmail());
					stmt.setString(3, aluno.getMatricula());
					stmt.setString(4, aluno.getSenha());
					
					// executa
					stmt.execute();
					stmt.close();
					retorno = true;

				} catch (SQLException e) {
					return false;
					//throw new RuntimeException(e);
				}

				return retorno;
			}

			public Aluno obterLogin(String matricula, String senha) {
				Aluno aluno = new Aluno();
				
				String sql = "select * from aluno where matricula = ? and senha = ?";
				
				try {
					// prepared statement para inser��o
					PreparedStatement stmt = con.prepareStatement(sql);
					stmt.setString(1, matricula);
					stmt.setString(2, senha);
					
					ResultSet rs = stmt.executeQuery();
					
					if(rs.next()){
						aluno.setIdaluno(rs.getInt("idAluno"));
						aluno.setNome(rs.getString("nome"));
						aluno.setEmail(rs.getString("email"));
						aluno.setMatricula(rs.getString("matricula"));
						aluno.setSenha(rs.getString("senha"));						
					}
				}catch (Exception e) {
					System.out.println(e.getMessage());
				}
				
				return aluno;
			}
/**
			public boolean alterar(Aluno aluno) {
				boolean retorno = false;
				String sql = "update aluno set nome=?, matricula=?"
						+ "perfil =? where idaluno=?";

				try {
					PreparedStatement stmt = con.prepareStatement(sql);

					stmt.setString(1, aluno.getNome());
					stmt.setString(2, aluno.getMatricula());
					stmt.setLong(3, aluno.getIdaluno());

					stmt.execute();
					stmt.close();
					retorno = true;
				} catch (SQLException e) {
					throw new RuntimeException(e);
				}
				return retorno;
			}
**/
			
}