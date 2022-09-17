package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PHONENUM")
public class PhoneNumber {
	@Id
	@Column(name = "phoneId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int phId;
	private Long phNum;
	private Long ofNum;

	public PhoneNumber() {
		// TODO Auto-generated constructor stub
	}

	public PhoneNumber(Long phNum, Long ofNum) {
		super();
		this.phNum = phNum;
		this.ofNum = ofNum;
	}

	public Long getPhNum() {
		return phNum;
	}

	public void setPhNum(Long phNum) {
		this.phNum = phNum;
	}

	public Long getOfNum() {
		return ofNum;
	}

	public void setOfNum(Long ofNum) {
		this.ofNum = ofNum;
	}
}
