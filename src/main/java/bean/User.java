package bean;
import java.util.Date;

public class User {
	private String name;
	private String password;
	private String date;
	
	
	public User(String name, String password, String date) {
		super();
		this.name = name;
		this.password = password;
		this.date = date;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
