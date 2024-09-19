package com.kl.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.kl.ep.models.Faculty;

@Remote
public interface FacultyService
{
	  public String addFaculty(Faculty faculty);
	  public String updateFaculty(Faculty faculty);
	  public String updateFacultyPass(Faculty faculty);
	  public String deleteFaculty(int fid);
	  public List<Faculty> viewallfac();
	  public Faculty viewfacultybyid(int fid);
	  
	  public Faculty checkfaclogin(String mail,String password);

}
