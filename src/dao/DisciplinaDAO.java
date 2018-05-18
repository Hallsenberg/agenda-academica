package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Disciplina;

public class DisciplinaDAO {
	
			//a conexão com o banco de dados
			private Connection con;

			public DisciplinaDAO() {
				this.con = (Connection) ConexaoSingleton.getInstance();
			}
			
			public boolean adicionar(Disciplina disciplina) {

				boolean retorno = false;

				String sql = "insert into disciplina"
						+ "(disciplina, professor, emailprof)"
						+ " values (?, ?, ?)";

				try {
					// prepared statement para inserção
					PreparedStatement stmt = con.prepareStatement(sql);

					// seta os valores (da ?) da instrução SQL
					stmt.setString(1, disciplina.getDisciplina());
					stmt.setString(2, disciplina.getProfessor());
					stmt.setString(3, disciplina.getEmailprof());
					
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
			
}