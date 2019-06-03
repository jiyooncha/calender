package kr.ac.bu.web2.service;

import kr.ac.bu.web2.domain.Plan;

public interface GroupPlanService {

	void createPlan(Plan plan);

	boolean removePlan(String planId);
	boolean modifyPlan(Plan plan);
}
