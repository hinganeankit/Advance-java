package app;
		
		import org.hibernate.Session;
		import org.hibernate.SessionFactory;
		import org.hibernate.Transaction;
		import org.hibernate.cfg.Configuration;

		import model.Address;
		import model.Employee;

		public class Test {
			
			public static void main(String[] args) {
				// Step 1

				Configuration cfg = new Configuration();

				cfg.configure("hibernate.cfg.xml");
				// Step 2 :

				// all info from xml convert into single Object ie Session factory
				SessionFactory factory = cfg.buildSessionFactory();

				Session session = factory.openSession();

				
				Transaction tx = session.beginTransaction();
				Address address=new Address();
				address.setHouseNo(123);
				address.setStreet("FC Road");
				address.setCity("PUNE");
				
				
				Employee e1=new Employee();
			    e1.setEmployeeId(11);
			    e1.setEmployeeName("Akshay");
			    e1.setAddress(address);
			    
			    session.save(e1);
			    
			    tx.commit();
			    
			    System.out.println("Data ADDED");
			    
			    session.close();
	}
}
