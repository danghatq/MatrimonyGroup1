package com.C1709L.project.matrimony.model;
// Generated Aug 19, 2017 5:24:59 PM by Hibernate Tools 5.2.3.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Member generated by hbm2java
 */
@Entity
@Table(name = "member", catalog = "matrimony")
public class Member implements java.io.Serializable {

	private Long id;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private String middleName;
	private String email;
	private String gender;
	private String martialStatus;
	private Float height;
	private String countryLivingIn;
	private String contactNumber;
	private String motherTongue;
	private String religion;
	private String caste;
	private Date createDatetime;
	private Date updateDatetime;
	private String status;
	
	public Member() {
	}

	public Member(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public Member(String username, String password, String firstName, String lastName, String middleName, String email,
			String gender, String martialStatus, Float height, String countryLivingIn, String contactNumber,
			String motherTongue, String religion, String caste, Date createDatetime, Date updateDatetime) {
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.middleName = middleName;
		this.email = email;
		this.gender = gender;
		this.martialStatus = martialStatus;
		this.height = height;
		this.countryLivingIn = countryLivingIn;
		this.contactNumber = contactNumber;
		this.motherTongue = motherTongue;
		this.religion = religion;
		this.caste = caste;
		this.createDatetime = createDatetime;
		this.updateDatetime = updateDatetime;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "username", nullable = false, length = 45)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = false, length = 45)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "first_name", length = 45)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", length = 45)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "middle_name", length = 45)
	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	@Column(name = "email", length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "gender", length = 45)
	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "martial_status", length = 45)
	public String getMartialStatus() {
		return this.martialStatus;
	}

	public void setMartialStatus(String martialStatus) {
		this.martialStatus = martialStatus;
	}

	@Column(name = "height", precision = 12, scale = 0)
	public Float getHeight() {
		return this.height;
	}

	public void setHeight(Float height) {
		this.height = height;
	}

	@Column(name = "country_living_in", length = 45)
	public String getCountryLivingIn() {
		return this.countryLivingIn;
	}

	public void setCountryLivingIn(String countryLivingIn) {
		this.countryLivingIn = countryLivingIn;
	}

	@Column(name = "contact_number", length = 45)
	public String getContactNumber() {
		return this.contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Column(name = "mother_tongue", length = 45)
	public String getMotherTongue() {
		return this.motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	@Column(name = "religion", length = 45)
	public String getReligion() {
		return this.religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	@Column(name = "caste", length = 45)
	public String getCaste() {
		return this.caste;
	}

	public void setCaste(String caste) {
		this.caste = caste;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_datetime", length = 19)
	public Date getCreateDatetime() {
		return this.createDatetime;
	}

	public void setCreateDatetime(Date createDatetime) {
		this.createDatetime = createDatetime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_datetime", length = 19)
	public Date getUpdateDatetime() {
		return this.updateDatetime;
	}

	public void setUpdateDatetime(Date updateDatetime) {
		this.updateDatetime = updateDatetime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
