package inheritance;

public class SavingsAccount implements Account {
	
	private double balance;
	private double interest;

	public SavingsAccount(double interest) {
		this.interest = interest;
		this.balance = 0;
	}

	@Override
	public void deposit(double amount) {
		if (amount < 0) 
			throw new IllegalArgumentException("Innskudd må være positive!");
		this.balance += amount;
	}

	@Override
	public void withdraw(double amount) {
		if (amount < 0) 
			throw new IllegalArgumentException("Uttak må være positive!");
		else if (amount > balance)
			throw new IllegalStateException("Det er ikke nok penger på kontoen!");
		this.balance -= amount;
	}

	@Override
	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate() {
		this.balance += (balance * interest);
	}

}
