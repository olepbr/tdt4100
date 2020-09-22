package inheritance;

public class PassengerCar extends TrainCar {
	
	private int passengerCount;

	public PassengerCar(int deadWeight, int passengerCount) {
		super(deadWeight);
		this.passengerCount = passengerCount;
	}
	
	public int getPassengerCount() {
		return passengerCount;
	}
	
	public void setPassengerCount(int passengerCount) {
		this.passengerCount = passengerCount;
	}
	
	@Override
	public int getTotalWeight() {
		return this.getDeadWeight() + (80 * passengerCount);
	}
	
	public String toString() {
		return String.format("Passasjervogn \n Totalvekt: %d kg, antall passsasjerer: %d. \n", getTotalWeight(), getPassengerCount());
	}

}
