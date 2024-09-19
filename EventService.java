package com.kl.ep.services;

import java.util.List;

import com.kl.ep.models.Event;
import com.kl.ep.models.Faculty;

public interface EventService {
	  public String addEvents(Event event);
	  public List<Event> viewallevents();
	  public String removeEvent(int eid);
	


}
