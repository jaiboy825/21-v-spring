package net.gondr.domain;

public class SampleVO {
	private String userid;
	private String code;
	private String codec;
	private String name;
	private String email;
	
	
	
	@Override
	public String toString() {
		return "SampleVO [userid=" + userid + ", code=" + code + ", codec=" + codec + ", name=" + name + ", email="
				+ email + "]";
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCodec() {
		return codec;
	}
	public void setCodec(String codec) {
		this.codec = codec;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
