package jspExam3;

import java.sql.Date;

public class productorModel {
	String name;
	int quantity;
	String prodate;

	public productorModel(String name, int quantity, String prodate) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.prodate = prodate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getProdate() {
		return prodate;
	}

	public void setProdate(String prodate) {
		this.prodate = prodate;
	}
}
