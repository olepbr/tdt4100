package encapsulation;

public class Account {

	private double balance;

	private double interestRate;

	public Account(double balance, double interestRate) {
		super();
		if (balance < 0 || interestRate < 0) {
			throw new IllegalArgumentException("Hverken saldoen eller rentefoten kan være negative");
		}
		this.balance = balance;
		this.interestRate = interestRate;
	}

	public void deposit(double innskudd) {
		if (innskudd < 0) {
			throw new IllegalArgumentException("Innskudd kan ikke være negative!");
		}
		balance += innskudd;
	}

	public void withdraw(double uttak) {
		if ((balance - uttak) < 0) {
			throw new IllegalArgumentException("Uttaket på " + uttak + " er større enn " + balance);
		}
		balance -= uttak;
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

	public void setInterestRate(double interestRate) {
		if (interestRate < 0) {
			throw new IllegalArgumentException("Negativ rente ække lov!");
		}
		this.interestRate = interestRate;
	}

	public String toString() {
		return String.format("balanse = %.2f, rentefot = %.1f", balance, interestRate);
	}

	public static void main(String[] args) {
		Account konto = new Account(200, 5);
		System.out.println(konto);
		konto.deposit(100);
		System.out.println(konto);
		konto.withdraw(150);
		System.out.println(konto);
		konto.addInterest();
		System.out.println(konto);
	}

}
