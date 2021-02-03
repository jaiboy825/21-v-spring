package net.gondr.domain;

import org.springframework.web.multipart.MultipartFile;

public class RegisterDTO {
	private String userid;
	private String username;
	private String password;
	private String passworConfirm;
	private MultipartFile profileImg;

	@Override
	public String toString() {
		return "RegisterDTO [userid=" + userid + ", username=" + username + ", password=" + password
				+ ", passworConfirm=" + passworConfirm + ", profileImg=" + profileImg + "]";
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassworConfirm() {
		return passworConfirm;
	}

	public void setPassworConfirm(String passworConfirm) {
		this.passworConfirm = passworConfirm;
	}

	public MultipartFile getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(MultipartFile profileImg) {
		this.profileImg = profileImg;
	}

}
