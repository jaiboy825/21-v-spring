package net.gondr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.gondr.dao.UserDAO;
import net.gondr.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO dao;
	
	@Override
	public UserVO getUserInfo(String userid) {
		return dao.getUser(userid);
	}
	
	@Override
	public UserVO login(String userid, String password) {
		return dao.loginUser(userid, password);
	}
	
	@Override
	public void register(UserVO user) {
		dao.insertUser(user);		
	}

	@Override
	public void expUp(String userid) {
		dao.expUp(userid);
		
	}

	@Override
	public void levelUp(String userid) {
		int userLevel = dao.getUser(userid).getLevel();
		int needExp = dao.expCheck(userLevel);
		int userExp = dao.getUser(userid).getExp();
		if(userExp >= needExp) {
			dao.updateUser(userid);
		}
		
	}
}
