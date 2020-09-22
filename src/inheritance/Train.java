package inheritance;

import java.util.ArrayList;
import java.util.List;

public class Train {
	
	private int totalWeight;
	private int passengerCount;
	private int cargoWeight;
	private List<TrainCar> trainCars = new ArrayList<TrainCar>();
	
	public void addTrainCar(TrainCar trainCar) {
		if (! this.contains(trainCar))
			this.trainCars.add(trainCar);
	}
	
	public boolean contains(TrainCar trainCar) {
		return this.trainCars.contains(trainCar);
	}
	
	public int getTotalWeight() {
		totalWeight = 0;
		for (TrainCar trainCar : trainCars) {
			totalWeight += trainCar.getTotalWeight();
		}
		return totalWeight;
	}
	
	public int getPassengerCount() {
		passengerCount = 0;
		for (TrainCar trainCar : trainCars) {
			if (trainCar instanceof PassengerCar) {
				PassengerCar tmp = (PassengerCar) trainCar;
				passengerCount += tmp.getPassengerCount();
			}
		}
		return passengerCount;
	}
	
	public int getCargoWeight() {
		cargoWeight = 0;
		for (TrainCar trainCar : trainCars) {
			if (trainCar instanceof CargoCar) {
				CargoCar tmp = (CargoCar) trainCar;
				cargoWeight += tmp.getCargoWeight();
			}
		}
		return cargoWeight;
	}
	
	@Override
	public String toString() {
		String carList = "Verdens tøffeste tog \n \n";
		for (TrainCar trainCar : trainCars) {
				carList = carList.concat(String.format("Vogn #%d: %s", trainCars.indexOf(trainCar)+1, trainCar.toString()));
		}
		return carList;
	}

	public static void main(String[] args) {
		CargoCar cargo = new CargoCar(100, 50);
		PassengerCar pass = new PassengerCar(100, 30);
		Train train = new Train();
		train.addTrainCar(cargo);
		train.addTrainCar(pass);
		System.out.println(train);
	}

}