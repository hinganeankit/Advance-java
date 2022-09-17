package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "emp")

public class Employee {

	@Id
	@Column(name="id")
	 private int id;
	
	@Column(name="fname")
	 private String fistName;
	
	@Column (name="lname")
	 private String lastName;
	
	@Column (name="salary")
	 private String salary;
	 
	public Employee() {
// TODO Auto-generated constructor stub
	}
	
	public Employee(int id, String fistName, String lastName, String salary) {
		super();
		this.id = id;
		this.fistName = fistName;
		this.lastName = lastName;
		this.salary = salary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFistName() {
		return fistName;
	}

	public void setFistName(String fistName) {
		this.fistName = fistName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fistName=" + fistName + ", lastName=" + lastName + ", salary=" + salary + "]";
	}

}
