package com.kl.ep.managedbeans;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.kl.ep.models.Event;
import com.kl.ep.models.Faculty;
import com.kl.ep.services.EventService;

@ManagedBean(name="eventbean",eager=true)

public class EventBean
{
	@EJB(lookup="java:global/EPProject/EventServiceImpl!com.kl.ep.services.EventService")
	EventService eservice;
	private int id;
	  private String name;
	  private String venue;
	  private String department;
	  //private double time;
	  private String date;
	  private String details;
	  private List<Event> elist;

	  public List<Event> getElist() {
	  	return eservice.viewallevents();
	  }
	  public void setElist(List<Event> elist) {
	  	this.elist = elist;
	  }
	  
	  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String removeevent(int eid)
	{
		eservice.removeEvent(eid);
		return "viewevents.jsf";
	}
	
	public String addevent()
	{   //System.out.println("1.)Request Recieved");
		Event e=new Event();
		e.setId(id);
		e.setName(name);
		e.setDepartment(department);
		e.setVenue(venue);
        e.setEdetails(details);	
        e.setDate(date);
        eservice.addEvents(e);
        //System.out.println("Request Ended");
	    // This will reset the form submission
	    return "adminhome.jsp"; 
	}
	
}
