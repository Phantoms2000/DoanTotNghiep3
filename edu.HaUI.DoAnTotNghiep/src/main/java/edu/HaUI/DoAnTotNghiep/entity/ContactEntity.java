package edu.HaUI.DoAnTotNghiep.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_contact")
public class ContactEntity extends BaseEntity {

	@Column(name = "fname", length = 50, nullable = false)
	private String fname;

	@Column(name = "lname", length = 50, nullable = false)
	private String lname;

	@Column(name = "email", length = 50, nullable = false)
	private String email;

	@Column(name = "phone", length = 50, nullable = false)
	private String phoneNumber;

	@Column(name = "request_type", length = 45, nullable = true)
	private String requestType;

	@Column(name = "message", length = 1000, nullable = false)
	private String message;

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getRequestType() {
		return requestType;
	}

	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
