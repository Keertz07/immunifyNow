package com.tech.covidVaccination.bo;

import java.sql.Date;

public class CenterBo {
	private long sno;
	private int id;
	private String name;
	private long mobileno;
	private int slotno;
	private String city;
	private int pincode;
	
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getMobileno() {
		return mobileno;
	}
	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}
	public int getSlotno() {
		return slotno;
	}
	public void setSlotno(int slotno) {
		this.slotno = slotno;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	
}
