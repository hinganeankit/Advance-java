package model;
	import javax.persistence.Entity;
	import javax.persistence.Table;

	@Entity
	@Table(name = "ChequeTable")
	public class Cheque extends Payment {

		private int chNo;
		private String chequeType;

		public Cheque() {
			// TODO Auto-generated constructor stub
		}

		public int getChNo() {
			return chNo;
		}

		public void setChNo(int chNo) {
			this.chNo = chNo;
		}

		public String getChequeType() {
			return chequeType;
		}

		public void setChequeType(String chequeType) {
			this.chequeType = chequeType;
		}

		@Override
		public String toString() {
			return "Cheque [chNo=" + chNo + ", chequeType=" + chequeType + "]";
		}

	}


