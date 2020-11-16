package com.nic.iradfeedback.model;
//package com.example.irad.model;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "mst_depatrment")
//public class Department {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO, generator = "department_sequency")
//	@Column(name = "id")
//	private Integer id;
//	@Column(name = "en")
//	private String english;
//
//	@Column(name = "ta")
//	private String tamil;
//	@Column(name = "hi")
//	private String hindi;
//	@Column(name = "te")
//	private String telugu;
//	@Column(name = "kn")
//	private String kanada;
//	@Column(name = "be")
//	private String bengali;
//	@Column(name = "asm")
//	private String assam;
//	@Column(name = "dispid")
//	private Integer dispId;
//
//	public Department() {
//		super();
//
//	}
//
//	public Department(Integer id, String english, String tamil, String hindi, String telugu, String kanada,
//			String bengali, String assam, Integer dispId) {
//		super();
//		this.id = id;
//		this.english = english;
//		this.tamil = tamil;
//		this.hindi = hindi;
//		this.telugu = telugu;
//		this.kanada = kanada;
//		this.bengali = bengali;
//		this.assam = assam;
//		this.dispId = dispId;
//	}
//
//	public Integer getId() {
//		return id;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
//	public String getEnglish() {
//		return english;
//	}
//
//	public void setEnglish(String english) {
//		this.english = english;
//	}
//
//	public String getTamil() {
//		return tamil;
//	}
//
//	public void setTamil(String tamil) {
//		this.tamil = tamil;
//	}
//
//	public String getHindi() {
//		return hindi;
//	}
//
//	public void setHindi(String hindi) {
//		this.hindi = hindi;
//	}
//
//	public String getTelugu() {
//		return telugu;
//	}
//
//	public void setTelugu(String telugu) {
//		this.telugu = telugu;
//	}
//
//	public String getKanada() {
//		return kanada;
//	}
//
//	public void setKanada(String kanada) {
//		this.kanada = kanada;
//	}
//
//	public String getBengali() {
//		return bengali;
//	}
//
//	public void setBengali(String bengali) {
//		this.bengali = bengali;
//	}
//
//	public String getAssam() {
//		return assam;
//	}
//
//	public void setAssam(String assam) {
//		this.assam = assam;
//	}
//
//	public Integer getDispId() {
//		return dispId;
//	}
//
//	public void setDispId(Integer dispId) {
//		this.dispId = dispId;
//	}
//
//	@Override
//	public String toString() {
//		return "Department [id=" + id + ", english=" + english + ", tamil=" + tamil + ", hindi=" + hindi + ", telugu="
//				+ telugu + ", kanada=" + kanada + ", bengali=" + bengali + ", assam=" + assam + ", dispId=" + dispId
//				+ "]";
//	}
//
//}
