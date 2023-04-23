package com.mvc.serviceI;

import java.util.List;

import com.mvc.model.Student;

public interface ServiceI {

	public int saveData(Student s);
	public List<Student> loginCheck(String username,String password);
	public List<Student> deleteRecord(int id);
	public Student editRecord(int id);
	public List<Student> updateRecord(Student s);
}
