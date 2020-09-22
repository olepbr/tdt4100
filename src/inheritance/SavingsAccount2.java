package inheritance;

public class SavingsAccount2 extends AbstractAccount {

	private int withdrawals;
	private double fee;
	
	public SavingsAccount2(int withdrawals, double fee) {
		if (withdrawals < 0 || fee < 0) {
			throw new IllegalArgumentException("Kan ikke ha negativt antall uttak eller gebyr");
		}
		this.withdrawals = withdrawals;
		this.fee = fee;
	}

	@Override
	protected void internalWithdraw(double amount) {
		if (amount > this.getBalance())
			throw new IllegalStateException("Uttakk større enn balanse ikke tillatt!");
		else if (withdrawals == 0) {
			if (amount + fee > this.getBalance())
				throw new IllegalStateException("Uttakk (ink. gebyr) større enn balanse ikke tillatt!");
			this.withdrawHelper(amount + fee);
		}
		else {
			this.withdrawHelper(amount);
			withdrawals --;
		}
	}

}
