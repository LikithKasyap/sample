package com.kl.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.kl.ep.models.Event;
import com.kl.ep.models.EventsRegister;
import com.kl.ep.models.Faculty;
import com.kl.ep.models.Student1;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class EventServiceImpl implements EventService{

	@Override
	public String addEvents(Event event) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		 EntityManager em=emf.createEntityManager();
		 System.out.println("2.)Request Received");
		 em.getTransaction().begin();
		 em.persist(event);
		 em.getTransaction().commit();
		 System.out.println("Request Ended");
		 em.close();
		 emf.close();
			return "Event Added Successfully";
	}

	@Override
	public List<Event> viewallevents() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		EntityManager em=emf.createEntityManager();
		 
		Query qry=em.createQuery("select e from Event e");
		List<Event> elist=qry.getResultList();
		em.close();
		emf.close();
		 
		return elist;
	}

	
	@Override
	public String removeEvent(int eid) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		 EntityManager em=emf.createEntityManager();
		 
		 em.getTransaction().begin();
		 Event e=em.find(Event.class,eid);
		 em.remove(e);
		 em.getTransaction().commit();
		 em.close();
		 emf.close();
		return "Event Deleted Successfully";
	}

	
	

}
