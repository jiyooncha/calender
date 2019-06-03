package kr.ac.bu.web2.service;

import java.util.List;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.domain.User;

public interface UserService {

	User login(User user);

	boolean register(User user) throws Exception;

	List<Plan> findPlan(String userId);

	List<Group> findGroup(String userId);
	
	void modify(User user);

	void delete(String userPw, String userId);
}
