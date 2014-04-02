package domain;

public class Registred {

	private String login;
	private String firstname;
	private String email;
	private String pass;
	
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Registred() {
		super();
	}
	
	public Registred(String login, String pass, String firstname,String email) {
		super();
		this.login =login;
		this.pass = pass;
		this.firstname = firstname;
		this.email = email;
	}
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
