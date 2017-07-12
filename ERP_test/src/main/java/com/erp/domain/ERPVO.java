package com.erp.domain;

import java.io.Serializable;
import java.util.Date;

public class ERPVO implements Serializable{

	private String staff_name;
	private String gender;
	private String religion_name;
	private Date before_graduate_day;
	private Date after_graduate_day;
	private Date graduate_day;
	private String jumin_no;
	private String school_name;
	private String skill_name;
	
	public ERPVO(){}

	public ERPVO(String staff_name, String gender, String religion_name, Date before_graduate_day,
			Date after_graduate_day, Date graduate_day, String jumin_no, String school_name, String skill_name) {
		super();
		this.staff_name = staff_name;
		this.gender = gender;
		this.religion_name = religion_name;
		this.before_graduate_day = before_graduate_day;
		this.after_graduate_day = after_graduate_day;
		this.graduate_day = graduate_day;
		this.jumin_no = jumin_no;
		this.school_name = school_name;
		this.skill_name = skill_name;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getReligion_name() {
		return religion_name;
	}

	public void setReligion_name(String religion_name) {
		this.religion_name = religion_name;
	}

	public Date getBefore_graduate_day() {
		return before_graduate_day;
	}

	public void setBefore_graduate_day(Date before_graduate_day) {
		this.before_graduate_day = before_graduate_day;
	}

	public Date getAfter_graduate_day() {
		return after_graduate_day;
	}

	public void setAfter_graduate_day(Date after_graduate_day) {
		this.after_graduate_day = after_graduate_day;
	}

	public Date getGraduate_day() {
		return graduate_day;
	}

	public void setGraduate_day(Date graduate_day) {
		this.graduate_day = graduate_day;
	}

	public String getJumin_no() {
		return jumin_no;
	}

	public void setJumin_no(String jumin_no) {
		this.jumin_no = jumin_no;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	@Override
	public String toString() {
		return "ERPVO [staff_name=" + staff_name + ", gender=" + gender + ", religion_name=" + religion_name
				+ ", before_graduate_day=" + before_graduate_day + ", after_graduate_day=" + after_graduate_day
				+ ", graduate_day=" + graduate_day + ", jumin_no=" + jumin_no + ", school_name=" + school_name
				+ ", skill_name=" + skill_name + "]";
	};
	
	
}
