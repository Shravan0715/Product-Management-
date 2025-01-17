package pm.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;




@Entity
public class MyUser {
	private String name;
	@Id
	private String username;
	private String password;
	@Transient
	private String cpassword;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
}
