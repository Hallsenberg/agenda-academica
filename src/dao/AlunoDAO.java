package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Aluno;

public class AlunoDAO {
	
	//a conexão com o banco de dados
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
					// prepared statement para inserção
					PreparedStatement stmt = con.prepareStatement(sql);

					// seta os valores (da ?) da instrução SQL
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