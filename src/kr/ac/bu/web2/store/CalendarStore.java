
package kr.ac.bu.web2.store;

import java.util.Calendar;
import java.util.List;


public interface CalendarStore {
    
    String create(Calendar calendar);
    Calendar search(String calendarId);
    List<Calendar> searchAll(String calendarId);
    void update(Calendar calendar);
    void delete(String calendar_Id);
}
