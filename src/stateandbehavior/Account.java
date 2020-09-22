package stateandbehavior;

public class Account {
	
	private double balance;
	
	private double interestRate;
	
	public void deposit(double innskudd) {
		if (innskudd > 0) {
		balance += innskudd;
		}
	}
	
	public void addInterest() {
		balance += ((balance * interestRate) / 100);
	}

	public double getBalance() {
		return balance;
	}
	
	public double getInterestRate() {
		return interestRate;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}


	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	
	public String toString() {
		return String.format("balanse = %.2f, rentefot = %.1f", balance, interestRate);
	}

	public static void main(String[] args) {
		Account konto = new Account();
		System.out.println(konto);
		konto.deposit(100);
		System.out.println(konto);
		konto.setInterestRate(5);
		System.out.println(konto);
		konto.addInterest();
		System.out.println(konto);
	}

}
