package inheritance;

public class CreditAccount extends AbstractAccount {

	private double creditLine;

	public CreditAccount(double creditLine) {
		if (creditLine < 0)
			throw new IllegalArgumentException("Kredittlinje må være positiv");
		this.creditLine = creditLine;
	}


	public double getCreditLine() {
		return creditLine;
	}


	public void setCreditLine(double creditLine) {
		if (creditLine < 0)
			throw new IllegalArgumentException("Kredittlinje må være positiv");
		else if (this.getBalance() + creditLine < 0)
			throw new IllegalStateException("Kredittlinja må dekke balansen");
		this.creditLine = creditLine;
	}


	@Override
	protected void internalWithdraw(double amount) {
		if (this.getBalance() + creditLine < amount)
			throw new IllegalStateException("Du har hverken nok cash eller kreditt!");
		this.withdrawHelper(amount);
	}

}
