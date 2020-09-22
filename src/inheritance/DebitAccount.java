package inheritance;

public class DebitAccount extends AbstractAccount {

	public DebitAccount() {
	}

	@Override
	protected void internalWithdraw(double amount) {
		if (amount > this.getBalance())
			throw new IllegalStateException("Du har ikke nok penger på konto!");
		this.withdrawHelper(amount);
		}
}
