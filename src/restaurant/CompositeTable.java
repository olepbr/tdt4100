package restaurant;

import java.util.Arrays;
import java.util.List;

/**
 * A table that consists of other tables.
 */
public class CompositeTable extends Table {
	
	private List<Table> tables;
//	private int lostCapacity;
	
	public CompositeTable(Table table1, Table table2, int lostCapacity) {
		tables = Arrays.asList(table1, table2);
		this.capacity = table1.getCapacity() + table2.getCapacity() - lostCapacity;
//		this.lostCapacity = lostCapacity;
	}
	
	public List<Table> getTables() {
		return tables;
	}
	
//	public int getLostCapacity() {
//		return lostCapacity;
//	}

}
