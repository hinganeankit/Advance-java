package model;


import javax.persistence.Embeddable;

@Embeddable
public class Address {
	
	private int houseNo;
	private String street;
	private String city;
	
	public Address() {
		// TODO Auto-generated constructor stub
	}
	
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Address [houseNo=" + getHouseNo() + ", street=" + street + ", city=" + city + "]";
	}


	public int getHouseNo() {
		return houseNo;
	}


	public void setHouseNo(int houseNo) {
		this.houseNo = houseNo;
	}
}
