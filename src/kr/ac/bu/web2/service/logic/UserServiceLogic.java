package kr.ac.bu.web2.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.domain.User;
import kr.ac.bu.web2.service.UserService;
import kr.ac.bu.web2.store.UserStore;

@Service
public class UserServiceLogic implements UserService {

	@Autowired
	private UserStore userStore;

	@Override
	public User login(User user) {
		user = userStore.login(user);
		return user;
	}
	
	@Override
	public boolean register(User user) throws Exception {

		System.out.println("service " + user.getUserId());
		userStore.create(user);

		return false;
	}
	
	@Override
	public List<Plan> findPlan(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Group> findGroup(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void modify(User user) {
		userStore.modify(user);
		
	}

	@Override
	public void delete(String userPw, String userId) {
		userStore.delete(userPw, userId);
	}


}
