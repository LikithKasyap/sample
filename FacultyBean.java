package com.kl.ep.managedbeans;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kl.ep.models.Faculty;
import com.kl.ep.models.Student1;
import com.kl.ep.services.FacultyService;

@ManagedBean(name="facultybean",eager=true)
public class FacultyBean 
{
  @EJB(lookup="java:global/EPProject/FacultyServiceImpl!com.kl.ep.services.FacultyService")
  FacultyService fservice;
  
  private int id;
  private String name;
  private String gender;
  private String department;
  private double salary;
  private String email;
  private String password;
  private String contact;
 

  
  private List<Faculty> flist;

  
public List<Faculty> getFlist() {
	return fservice.viewallfac();
}
public void setFlist(List<Faculty> flist) {
	this.flist = flist;
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
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String add()
{
	Faculty f=new Faculty();
	f.setId(id);
	f.setName(name);
	f.setGender(gender);
	f.setDepartment(department);
	f.setEmail(email);
	f.setPassword(password);
	f.setContact(contact);
	f.setSalary(salary);
    
	fservice.addFaculty(f);
    // This will reset the form submission
    return "studreg.jsf?faces-redirect=true"; 
}
public String delete(int fid)
{
	fservice.deleteFaculty(fid);
	return "viewallfac.jsf";
}

public void validatelogin() throws IOException
{
	 FacesContext facesContext = FacesContext.getCurrentInstance();
	 ExternalContext externalContext = facesContext.getExternalContext();
	 HttpServletRequest request = (HttpServletRequest) externalContext.getRequest();
	 HttpServletResponse response = (HttpServletResponse) externalContext.getResponse();
	  
	 Faculty f=fservice.checkfaclogin(email, password);
	 
	 if(f!=null)
	 {		 
	   // explicit object
	   HttpSession session = request.getSession();
	  session.setAttribute("fac", f); 
		
	   response.sendRedirect("fachome.jsp");
	 }
	 else
	 {
		 //return "loginfail.jsf";
		 response.sendRedirect("loginfail.jsf");
	 }
}
  
  
  
  
  
  
  
  
  
  
}
