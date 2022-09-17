package app;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.PhoneNumber;
import model.User;
public class Test {
public static void main(String[] args) {
		
		Configuration conf = new Configuration();
		conf.configure("hibernate.cfg.xml");

		SessionFactory factory = conf.buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		
		PhoneNumber ph1=new PhoneNumber(9898989898l,999999999l);
		PhoneNumber ph2=new PhoneNumber(9897989898l,989999999l);
		PhoneNumber ph3=new PhoneNumber(98979898888l,9899988899l);
		
		
		List<PhoneNumber>list=new ArrayList<PhoneNumber>();
		list.add(ph1);
		list.add(ph2);
		list.add(ph3);
		
		
		User user1=new User("Satish", list);
		
		session.save(user1);
		t.commit();
		
		session.close();
		
		System.out.println("Done....");
		
	}
}
