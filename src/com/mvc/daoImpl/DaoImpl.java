package com.mvc.daoImpl;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.daoI.DaoI;
import com.mvc.model.Student;

@Repository
public class DaoImpl implements DaoI{

	@Autowired
	SessionFactory sf;
	@Override
	public int saveData(Student s) {
		Session sess=sf.openSession();
		Student stu=sess.get(Student.class, s.getId());
		if(stu==null)
		{
		Transaction tx=sess.beginTransaction();
		int id=(Integer)sess.save(s);
		tx.commit();
		return id;
	}
		else
		{
			return 0;
		}
	}
	@Override
	public List<Student> loginCheck(String username, String password) {

		Session sess=sf.openSession();
		if(username.equals("admin")&& password.equals("admin"))
		{
			Query q=sess.createQuery("From Student");
			List<Student> slist=q.getResultList();
			return slist;
			
		}
		else
		{
			Query q=sess.createQuery("From Student where username=:username and password=:password");
			q.setParameter("username", username);
			q.setParameter("password", password);
			List<Student> slist=q.getResultList();
		
		
		
		return slist;
	}
	}
	@Override
	public List<Student> deleteRecord(int id) {
		
		Session sess=sf.openSession();
		Student stu=sess.get(Student.class, id);
		sess.delete(stu);
		sess.beginTransaction().commit();
		Query q=sess.createQuery("From Student");
		List<Student> slist=q.getResultList();
		return slist;
	}
	@Override
	public Student editRecord(int id) {
		Session sess=sf.openSession();
		Student stu=sess.get(Student.class, id);
		return stu;
	}
	@Override
	public List<Student> updateRecord(Student s) {

		Session sess=sf.openSession();
		sess.update(s);
		sess.beginTransaction().commit();
		Query q=sess.createQuery("From Student");
		List<Student> slist=q.getResultList();
		return slist;
	}

}
