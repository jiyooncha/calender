package kr.ac.bu.web2.store;

import java.util.List;

import kr.ac.bu.web2.domain.Plan;

public interface PlanStore {

	String create(Plan planId);
	Plan retrieve(String planId);
	List<Plan> retrieveAll(String planId);
	void update(Plan plan);
	void delete(Plan plan);
}
