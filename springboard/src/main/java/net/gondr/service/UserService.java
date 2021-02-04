package net.gondr.service;

import net.gondr.domain.UserVO;

public interface UserService {
	public UserVO login(String userid, String password);
	
	public void register(UserVO user);
	
	public UserVO getUserInfo(String userid);
	
	public void expUp(String userid);
	
	public void levelUp(String userid);
}
