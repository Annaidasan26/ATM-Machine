package com.atm;

public class Customer {
	
	private String accnum;
	
	private String name;
	
	private int pin;
	
	private int amount;

	public String getAccnum() {
		return accnum;
	}

	public void setAccnum(String accnum) {
		this.accnum = accnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Customer(String accnum, String name, int pin, int amount) {
		super();
		this.accnum = accnum;
		this.name = name;
		this.pin = pin;
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Customer [accnum=" + accnum + ", name=" + name + ", pin=" + pin + ", amount=" + amount + "]";
	}
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}

}
