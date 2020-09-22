package inheritance;

public abstract class AbstractAccount {
	
	private int balance;

	public AbstractAccount() {
		balance = 0;
	}
	
	public void deposit(double deposit) {
		if (! (deposit > 0))
			throw new IllegalArgumentException("positivt innskudd plz!");
		this.balance += deposit;
	}
	
	public void withdraw(double amount) {
		if (amount < 0)
			throw new IllegalArgumentException("kan ikke ta ut negativt beløp!");
		internalWithdraw(amount);
	}
	
	protected void withdrawHelper(double amount) {
		this.balance -= amount;
	}

	protected abstract void internalWithdraw(double amount);
	
	public double getBalance() {
		return balance;
	}

}
