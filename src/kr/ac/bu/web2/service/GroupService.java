package kr.ac.bu.web2.service;

import java.util.List;

import kr.ac.bu.web2.domain.Group;

public interface GroupService {
	
	boolean createGroup(Group group);
	Group findGroup(int groupId);
	List<Group> findAllGroups();
	boolean modifyGroup(Group group);
	boolean removeGroup(int groupId);
}
