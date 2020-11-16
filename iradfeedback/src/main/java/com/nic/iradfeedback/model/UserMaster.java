package com.nic.iradfeedback.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_master")
public class UserMaster implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "master_sequency")
	@Column(name = "id")
	private Long id;

	@Column(name = "user_mobile")
	private String userMobile;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "user_designation")
	private String userDesignation;

	@Column(name = "user_dept")
	private String userDept;

	@Column(name = "user_email")
	private String userEmail;

	@Column(name = "user_password")
	private String userPassword;

	@Column(name = "user_location")
	private String userLocation;

	@Column(name = "user_state")
	private String userState;

	@Column(name = "user_state_code")
	private String userStateCode;

	public UserMaster() {
		super();
	}

	public UserMaster(Long id, String userMobile, String userName, String userDesignation, String userDept,
			String userEmail, String userPassword, String userLocation, String userState, String userStateCode) {
		super();
		this.id = id;
		this.userMobile = userMobile;
		this.userName = userName;
		this.userDesignation = userDesignation;
		this.userDept = userDept;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userLocation = userLocation;
		this.userState = userState;
		this.userStateCode = userStateCode;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserDesignation() {
		return userDesignation;
	}

	public void setUserDesignation(String userDesignation) {
		this.userDesignation = userDesignation;
	}

	public String getUserDept() {
		return userDept;
	}

	public void setUserDept(String userDept) {
		this.userDept = userDept;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserLocation() {
		return userLocation;
	}

	public void setUserLocation(String userLocation) {
		this.userLocation = userLocation;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public String getUserStateCode() {
		return userStateCode;
	}

	public void setUserStateCode(String userStateCode) {
		this.userStateCode = userStateCode;
	}

	@Override
	public String toString() {
		return "UserMaster [id=" + id + ", userMobile=" + userMobile + ", userName=" + userName + ", userDesignation="
				+ userDesignation + ", userDept=" + userDept + ", userEmail=" + userEmail + ", userPassword="
				+ userPassword + ", userLocation=" + userLocation + ", userState=" + userState + ", userStateCode="
				+ userStateCode + "]";
	}

}
