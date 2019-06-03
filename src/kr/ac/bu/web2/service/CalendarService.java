package kr.ac.bu.web2.service;

import java.util.Calendar;

public interface CalendarService {

	
	Calendar find(String calendar_id, String caleadar_name);
	boolean remove(String calendar_name);
	boolean update(String calendar_id);
	
}
