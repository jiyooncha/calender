package kr.ac.bu.web2.store;

import java.util.List;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.domain.User;

public interface UserStore {
	//
	boolean create(User user);
	User login(User user);
	List<Plan> findPlan(String userId);
	List<Group> findGroup(String userId);
	void modify(User user);
	void delete(String userPw, String userId);
		
}
