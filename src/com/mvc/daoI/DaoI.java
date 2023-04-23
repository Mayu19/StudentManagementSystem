package com.mvc.daoI;

import java.util.List;

import com.mvc.model.Student;

public interface DaoI {

	public int saveData(Student s);
	public List<Student> loginCheck(String username,String password);
	public List<Student> deleteRecord(int id);
	public Student editRecord(int id);
	public List<Student> updateRecord(Student s);
}
