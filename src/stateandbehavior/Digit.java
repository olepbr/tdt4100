package stateandbehavior;

public class Digit {

	private int base;
	private int value;

	public Digit(int base) {
		super();
		this.base = base;
		value = 0;
	}


	public boolean increment() {
		value += 1;
		if (value == base) {
			value = 0;
			return true;
		}
		else {
			return false;
		}
	}


	public int getBase() {
		return base;
	}


	public int getValue() {
		return value;
	}


	public String toString() {
		if (value < 10) {
			return String.valueOf(value);
		}
		else {
			return String.valueOf(Character.toChars( value + 55));
		}
	}


	public static void main(String[] args) {
		Digit fjort = new Digit(14);
		System.out.println(fjort);
		System.out.println(fjort.getBase());
		for (int i = 0; i <= 15; i++) {
			fjort.increment();
			System.out.println(fjort);
		}	
	}

}
