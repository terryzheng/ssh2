package com.demo.model;

import java.util.Date;

public class Order {
	private int Id;
	private String oder_name;
	private String mobile;
	private String uid;
	private String schjobtype;
	private String schindustry;
	private String schcityadv;
	private String publishdate;
	private String resume_id;
	private short version_number;
	private short webordernum;
	private int last_short_id;
	private short status;
	private Date sdate;
	private String istotom;
	private Date end_date;
	private short pay_type;

	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Id;
		return result;
	}

	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final Order other = (Order) obj;
		if (Id != other.Id)
			return false;
		return true;
	}

	public void setId(int orderId) {
		this.Id = orderId;
	}

	public int getId() {
		return Id;
	}

	public void setOder_name(String oder_name) {
		this.oder_name = oder_name;
	}

	public String getOder_name() {
		return oder_name;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMobile() {
		return mobile;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUid() {
		return uid;
	}

	public void setSchjobtype(String schjobtype) {
		this.schjobtype = schjobtype;
	}

	public String getSchjobtype() {
		return schjobtype;
	}

	public void setSchindustry(String schindustry) {
		this.schindustry = schindustry;
	}

	public String getSchindustry() {
		return schindustry;
	}

	public void setSchcityadv(String schcityadv) {
		this.schcityadv = schcityadv;
	}

	public String getSchcityadv() {
		return schcityadv;
	}

	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}

	public String getPublishdate() {
		return publishdate;
	}

	public void setResume_id(String resume_id) {
		this.resume_id = resume_id;
	}

	public String getResume_id() {
		return resume_id;
	}

	public void setVersion_number(short version_number) {
		this.version_number = version_number;
	}

	public short getVersion_number() {
		return version_number;
	}

	public void setWebordernum(short webordernum) {
		this.webordernum = webordernum;
	}

	public short getWebordernum() {
		return webordernum;
	}

	public void setLast_short_id(int last_short_id) {
		this.last_short_id = last_short_id;
	}

	public int getLast_short_id() {
		return last_short_id;
	}

	public void setStatus(short status) {
		this.status = status;
	}

	public short getStatus() {
		return status;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public Date getSdate() {
		return sdate;
	}

	public void setIstotom(String istotom) {
		this.istotom = istotom;
	}

	public String getIstotom() {
		return istotom;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setPay_type(short pay_type) {
		this.pay_type = pay_type;
	}

	public short getPay_type() {
		return pay_type;
	}

}
