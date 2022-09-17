package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "UserTable")
public class User {
	@Id
	@Column(name = "UID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	private String name;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "joinId")
	private List<PhoneNumber> phoneumbers;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String name, List<PhoneNumber> phoneumbers) {
		super();
		this.name = name;
		this.phoneumbers = phoneumbers;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<PhoneNumber> getPhoneumbers() {
		return phoneumbers;
	}

	public void setPhoneumbers(List<PhoneNumber> phoneumbers) {
		this.phoneumbers = phoneumbers;
	}

}


