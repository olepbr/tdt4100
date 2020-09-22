package inheritance;

public class BSU extends SavingsAccount {
	
	private double allowance;

	public BSU(double interest, double allowance) {
		super(interest);
		if (allowance < 0)
			throw new IllegalArgumentException("Innskuddsgrense må være positiv!");
		this.allowance = allowance;
		}
	
	public double getTaxDeduction() {
		return 
	}

}
