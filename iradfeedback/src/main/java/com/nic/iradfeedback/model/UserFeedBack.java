package com.nic.iradfeedback.model;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "user_feedback")
public class UserFeedBack implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "feedback_sequency")
	@Column(name = "id")
	private Long id;

	@Column(name = "page_name")
	private String pageName;
	
	@Column(name = "feedback_type")
	private String feedBackType;

	@Column(name = "field_name")
	private String fieldName;

	@Column(name = "remark")
	private String remark;
                                                                                          
	@Column(name = "user_mobile")
	private String userMobile;
	
	
	@Column(name = "created_at",columnDefinition = "timestamptz")
	private LocalDate createdDate;

	public UserFeedBack() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public String getFeedBackType() {
		return feedBackType;
	}

	public void setFeedBackType(String feedBackType) {
		this.feedBackType = feedBackType;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}

	public LocalDate getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDate localDate) {
		this.createdDate = localDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public UserFeedBack(Long id, String pageName, String feedBackType, String fieldName, String remark,
			String userMobile, LocalDate createdDate) {
		super();
		this.id = id;
		this.pageName = pageName;
		this.feedBackType = feedBackType;
		this.fieldName = fieldName;
		this.remark = remark;
		this.userMobile = userMobile;
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "UserFeedBack [id=" + id + ", pageName=" + pageName + ", feedBackType=" + feedBackType + ", fieldName="
				+ fieldName + ", remark=" + remark + ", userMobile=" + userMobile + ", createdDate=" + createdDate
				+ "]";
	}
	
}

	