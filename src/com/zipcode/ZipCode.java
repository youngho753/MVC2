package com.zipcode;

public class ZipCode {
	
	private String zipcode;
	private String sido;
	private String gugun;
	private String dong;
	private String bunji;
	private int seq;
	public String getZipcode() {
		return zipcode == null ? "" : zipcode.trim();
	}
	public String getSido() {
		return sido == null ? "" : sido.trim();
	}
	public String getGugun() {
		return gugun == null ? "" : gugun.trim();
	}
	public String getDong() {
		return dong == null ? "" : dong.trim();
	}
	public String getBunji() {
		return bunji == null ? "" : bunji.trim();
	}
	public int getSeq() {
		return seq;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
}
