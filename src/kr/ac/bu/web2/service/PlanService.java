package kr.ac.bu.web2.service;

import java.util.List;

import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.domain.User;

public interface PlanService {

	Plan find(String plan_id);
	boolean remove(String plan_id);
	boolean update(String plan_id);
	Plan parti(User user_id);
	List<Plan> findAll(String plan_id);
}
