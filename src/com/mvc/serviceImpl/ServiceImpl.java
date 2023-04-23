package com.mvc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.daoI.DaoI;
import com.mvc.model.Student;
import com.mvc.serviceI.ServiceI;

@Service
public class ServiceImpl implements ServiceI {

	@Autowired
	DaoI d;
	@Override
	public int saveData(Student s) {

		return d.saveData(s);
	}
	@Override
	public List<Student> loginCheck(String username, String password) {

		
		return d.loginCheck(username, password);
	}
	@Override
	public List<Student> deleteRecord(int id) {

		return d.deleteRecord(id);
	}
	@Override
	public Student editRecord(int id) {

		return d.editRecord(id);
	}
	@Override
	public List<Student> updateRecord(Student s) {

		return d.updateRecord(s);
	}

}
