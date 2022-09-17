package model;

import java.util.Date;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

	// Table Per Concrete Class
	@Entity
	@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
	public abstract class Payment {
	    @Id
		private int payId;
		private int payAmt;
		private Date payDate;

		public Payment() {
			// TODO Auto-generated constructor stub
		}

		public int getPayId() {
			return payId;
		}

		public void setPayId(int payId) {
			this.payId = payId;
		}

		public int getPayAmt() {
			return payAmt;
		}

		public void setPayAmt(int payAmt) {
			this.payAmt = payAmt;
		}

		public Date getPayDate() {
			return payDate;
		}

		public void setPayDate(Date payDate) {
			this.payDate = payDate;
		}

		@Override
		public String toString() {
			return "Payment [payId=" + payId + ", payAmt=" + payAmt + ", payDate=" + payDate + "]";
		}
	}

