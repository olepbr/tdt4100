package patterns.delegation.office;

import java.util.function.BinaryOperator;

public interface Employee {
	
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2);
	
	public void printDocument(String document);
	
	public Integer getTaskCount();
	
	public int getResourceCount();
	
	default Double computeEfficiency() {
		return ((double) this.getTaskCount()) / this.getResourceCount();
	}
}
