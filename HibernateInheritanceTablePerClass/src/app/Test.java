package app;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.Cheque;
import model.CreditCard;


public class Test {
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
	

		Configuration cfg = new Configuration();

		cfg.configure("hibernate.cfg.xml");
	

		
		SessionFactory factory = cfg.buildSessionFactory();

		Session session = factory.openSession();

		

		Transaction tx = session.beginTransaction();
	
		CreditCard card=new CreditCard();
		card.setPayId(111);
		card.setPayAmt(10000);
		card.setPayDate(new Date(22,7,22));;
		card.setCardNo(1234);
		card.setCardtype("Master");
		
		Cheque ch=new Cheque();
		ch.setPayId(555);
		ch.setPayAmt(70000);
		ch.setPayDate(new Date(2022,5,5));
		ch.setChNo(555555);
		ch.setChequeType("Barrier");
		
		session.save(card);
		session.save(ch);
		
	   tx.commit();
	   
	   session.close();
	   
	   System.out.println("data Added");
		
	}

	}


