package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.BinaryOperator;

public class Manager implements Employee {
	
	private Collection<Employee> employees = new ArrayList<Employee>();
	private List<Employee> slackers = new ArrayList<Employee>();
	private int taskCount;
	private int resourceCount = 1;
	
	public Manager(Collection<Employee> employees) {
		if (employees.isEmpty())
			throw new IllegalArgumentException("Give me some employees plz");
		this.employees = employees;
		for (Employee employee : employees) {
			resourceCount += employee.getResourceCount();
		}
		slackers.addAll(employees);
	}
	
	private Employee employeeSelector() {
		Collections.sort(slackers, new EmployeeComparator());
		return slackers.get(0);
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount ++;
		return this.employeeSelector().doCalculations(operation, value1, value2);
	}

	@Override
	public void printDocument(String document) {
		taskCount ++;
		this.employeeSelector().printDocument(document);

	}

	@Override
	public Integer getTaskCount() {
		return taskCount;
	}

	@Override
	public int getResourceCount() {
		return resourceCount;
	}
	

	public static void main(String[] args) {
		Printer p1 = new Printer();
		Clerk kari = new Clerk(p1);
		Clerk nils = new Clerk(p1);
		Manager tore = new Manager(Arrays.asList(kari, nils));
		tore.printDocument("hei");
		System.out.println(tore.computeEfficiency());
		Clerk c3 = new Clerk(p1);
		Clerk c4 = new Clerk(p1);
		Manager lars = new Manager(Arrays.asList(c3, c4));
		lars.printDocument("fardin");
		Clerk c5 = new Clerk(p1);
		Clerk c6 = new Clerk(p1);
		Manager kåre = new Manager(Arrays.asList(c5, c6));
		kåre.printDocument("fardin");
		Manager bob = new Manager(Arrays.asList(kåre, lars, tore));
		bob.printDocument("hei");
		System.out.println(bob.computeEfficiency());
		Manager toppsjefen = new Manager(Arrays.asList(bob));
		toppsjefen.printDocument("bø");
		System.out.println(toppsjefen.computeEfficiency());
		for (int i = 0; i < 10; i++) {
			toppsjefen.printDocument("bø");
		}
		System.out.println(toppsjefen.computeEfficiency());
	}

}
