package model;

public class Disciplina {
	
	public int getIddisciplina() {
		return iddisciplina;
	}
	public void setIddisciplina(int iddisciplina) {
		this.iddisciplina = iddisciplina;
	}
	public String getDisciplina() {
		return disciplina;
	}
	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getEmailprof() {
		return emailprof;
	}
	public void setEmailprof(String emailprof) {
		this.emailprof = emailprof;
	}
	private int iddisciplina;
	private String disciplina;
	private String professor;
	private String emailprof;
}