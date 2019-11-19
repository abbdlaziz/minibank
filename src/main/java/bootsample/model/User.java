package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="md_user")
public class User {
	
	@Id
	private int iduser;
	private String username;
	private String email;
	private String password;
	
	public User() {
		
	}

	public User(int iduser, String username, String email, String password) {
		this.iduser = iduser;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User{" +
				"iduser=" + iduser +
				", username='" + username + '\'' +
				", email='" + email + '\'' +
				", password='" + password + '\'' +
				'}';
	}

	//
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
//				+ ", age=" + age + ", password=" + password + "]";
//	}
	
	
	
	

}