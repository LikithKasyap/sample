package com.kl.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.kl.ep.models.Faculty;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class FacultyServiceImpl implements FacultyService{

	@Override
	public String addFaculty(Faculty faculty) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		 EntityManager em=emf.createEntityManager();
		 
		 em.getTransaction().begin();
		 em.persist(faculty);
		 em.getTransaction().commit();
		 
		 em.close();
		 emf.close();
			return "Faculty Registered Successfully";
	}

	@Override
	public String updateFaculty(Faculty faculty) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		 EntityManager em=emf.createEntityManager();
		 
		 em.getTransaction().begin();
		 Faculty f=em.find(Faculty.class, faculty.getId());
		 f.setContact(faculty.getContact());
		 f.setName(faculty.getName());
		 f.setSalary(faculty.getSalary());
		 f.setPassword(faculty.getPassword());
		 em.getTransaction().commit();
		 em.close();
		 emf.close();
		return "Faculty Updated Successfully";
	}

	@Override
	public String updateFacultyPass(Faculty faculty) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		 EntityManager em=emf.createEntityManager();
		 
		 em.getTransaction().begin();
		 Faculty f=em.find(Faculty.class, faculty.getId());
		 f.setPassword(faculty.getPassword());
		 em.getTransaction().commit();
		 em.close();
		 emf.close();
		return "Password Updated Successfully";

	}

	@Override
	public String deleteFaculty(int fid) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		EntityManager em=emf.createEntityManager();
		 
		 em.getTransaction().begin();
		 Faculty f=em.find(Faculty.class, fid);
		 em.remove(f);
		 em.getTransaction().commit();
		 em.close();
		 emf.close();
		return "Faculty Deleted Successfully";
	}

	@Override
	public List<Faculty> viewallfac() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		EntityManager em=emf.createEntityManager();
		 
		Query qry=em.createQuery("select f from Faculty f");
		List<Faculty> flist=qry.getResultList();
		em.close();
		emf.close();
		 
		return flist;
	}

	@Override
	public Faculty viewfacultybyid(int fid) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");		
		EntityManager em=emf.createEntityManager();
		Faculty f=em.find(Faculty.class, fid);
		 em.close();
		 emf.close();
		return f;
	}

	@Override
	public Faculty checkfaclogin(String email, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
	
		Query qry = em.createQuery("select f from Faculty f where f.email=? and f.password=?  ");
		qry.setParameter(1, email);
		qry.setParameter(2, password);
		
		Faculty fac=null;
        
        if(qry.getResultList().size()>0)
        {
        	fac=(Faculty) qry.getSingleResult();
        }
		em.close();
		emf.close();
		
		return fac;
	}

	

}
