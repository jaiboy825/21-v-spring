package net.gondr.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.gondr.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SqlSession session;
	
	private final String ns = "net.gondr.mappers.UserMapper";
	
	@Override
	public UserVO getUser(String userid) {
		return session.selectOne(ns + ".selectUser", userid);
	}
	
	@Override
	public UserVO loginUser(String userid, String password) {
		Map<String, String> loginMap = new HashMap<>();
		loginMap.put("userid", userid);
		loginMap.put("password", password);
		return session.selectOne(ns + ".loginUser", loginMap);
	}
	
	@Override
	public void insertUser(UserVO user) {
		session.insert(ns + ".insertUser", user);
	}

	@Override
	public void expUp(String userid) {
		session.update(ns + ".expUp", userid);
		
	}

	@Override
	public int expCheck(int level) {
		return session.selectOne(ns + ".selectExp", level);
		
	}

	@Override
	public void updateUser(String userid) {
		session.update(ns + ".updateUser", userid);
		
	}

}
