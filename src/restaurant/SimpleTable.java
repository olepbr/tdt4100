package restaurant;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SimpleTable extends Table {
	
	private static int tableCounter;
	private int id;
	
	public SimpleTable(int capacity) {
		if (capacity < 1)
			throw new IllegalArgumentException("Et bord må ha minst en stol!");
		this.capacity = capacity;
		tableCounter++;
		this.id = tableCounter;
	}
	
	public int getID() {
		return id;
	}
	
	public static void main(String[] args) {
		SimpleTable t1 = new SimpleTable(2);
		SimpleTable t2 = new SimpleTable(3);
		List<SimpleTable> tl = Arrays.asList(t2, t1);
		System.out.println(tl.get(0).getCapacity());
		Collections.sort(tl);
		System.out.println(tl.get(0).getCapacity());
		System.out.println(t1.getID());
		System.out.println(t2.getID());
		System.out.println(t1.getGroup());
	}
}
