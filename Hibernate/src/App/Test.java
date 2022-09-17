package App;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Model.Employee;

public class Test {
	
	public static void main(String[] args) {
		
		Configuration cfg = new Configuration();
		
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory factory=cfg.buildSessionFactory();
		
		Session session= factory.openSession();
		
		Transaction tx = session.beginTransaction();
		
		
		Employee e1= new Employee();
	    
		e1.setId(123);
		e1.setFistName("Ankit");
		e1.setLastName("Hingane");
		e1.setSalary("1200");
		
		session.save(e1);
		tx.commit();
		
		
		
		session.close();
		factory.close();
		System.out.println("Done");
	}

}
