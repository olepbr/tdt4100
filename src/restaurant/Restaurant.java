package restaurant;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * A place where groups of guests can buy a meal
 */
public class Restaurant {

	private Collection<Table> tables = new ArrayList<>();
	private Collection<CapacityListener> listeners = new ArrayList<CapacityListener>();

	public void addListener(CapacityListener listener) {
		this.listeners.add(listener);
	}

	public void removeListener(CapacityListener listener) {
		this.listeners.remove(listener);
	}

	private void alertListeners() {
		for (CapacityListener listener : listeners) 
			listener.capacityChanged(this);
	}

	// to support testing
	int getTableCount() {
		return tables.size();
	}

	// to support testing
	Table getTable(int n) {
		Iterator<Table> it = tables.iterator();
		while (n > 0) {
			it.next();
		}
		return it.next();
	}

	/**
	 * Tells whether a Table is occupied.
	 * @param table the Table to check
	 * @return true if anyone is sitting at the provided Table
	 */
	public boolean isOccupied(Table table) {
		if (table.getGroup() != null)
			return true;
		else 
			return false;
	}

	/**
	 * Computes the guest capacity,
	 * either the remaining (includeOccupied == false) or total (includeOccupied == true).
	 * @param includeOccupied controls whether to include tables that are occupied.
	 * @return the guest capacity
	 */
	public int getCapacity(boolean includeOccupied) {
		if (includeOccupied)
			return tables.stream()
					     .map(Table :: getCapacity)
					     .reduce((a, b) -> a + b)
					     .get();
		return tables.stream()
				     .filter(t -> ! isOccupied(t))
				     .map(Table :: getCapacity)
				     .reduce((a, b) -> a + b)
				     .get();
	}

	/**
	 * Adds a table to this Restaurant
	 * @param table
	 */
	public void addTable(Table table) {
		if (! tables.contains(table))
			tables.add(table);
		alertListeners();
	}

	/**
	 * Removes a Table from this Restaurant.
	 * If the table is occupied an IllegalArgumentException exception should be thrown.
	 * @param table
	 * @throws IllegalArgumentException
	 */
	public void removeTable(Table table) {
		if (isOccupied(table))
			throw new IllegalArgumentException("Noen sitter ved dette bordet!");
		tables.remove(table);
		alertListeners();
	}

	/**
	 * Merges two tables, i.e. replaces two tables with one table.
	 * lostCapacity is the difference between the old capacity and the new.
	 * This number is typically positive, since seats are lost when moving two tables close to each other.
	 * @param table1
	 * @param table2
	 * @param lostCapacity
	 * @throws IllegalArgumentException if any of the tables are occupied
	 */
	public void mergeTables(Table table1, Table table2, int lostCapacity) {
		if (isOccupied(table1) || isOccupied(table2))
			throw new IllegalArgumentException("Noen sitter ved disse bordene!");
		tables.remove(table1);
		tables.remove(table2);
		tables.add(new CompositeTable(table1, table2, lostCapacity));
		alertListeners();
	}

	/**
	 * Splits a table into two, i.e. replaces one tables with two tables.
	 * @param table
	 * @throws IllegalArgumentException if any of the table is occupied
	 */
	public void splitTable(CompositeTable table) {
		if (isOccupied(table))
			throw new IllegalArgumentException("Noen sitter ved dette bordet!");
		tables.remove(table);
		table.getTables().stream().forEach(t -> tables.add(t));
		alertListeners();
	}

	/**
	 * Tells whether a table has the provided capacity,
	 * i.e. if that number of new guests can be seated there.
	 * Note that a table cannot be shared among different groups.
	 * @param table
	 * @param capacity
	 * @return true of capacity number of guests can be seated here, false otherwise.
	 */
	public boolean hasCapacity(Table table, int capacity) {
		if (capacity > table.getCapacity() || isOccupied(table))
			return false;
		return true;
	}

	/**
	 * Returns the tables that has the provided capacity.
	 * The tables should be sorted with the one with the least capacity (but enough) first.
	 * @param capacity
	 * @return the tables that has the provided capacity
	 */
	public List<Table> findAvailableTables(int capacity) {
		return tables.stream()
				.filter(t -> ! isOccupied(t))
				.filter(t -> t.getCapacity() >= capacity)
				.sorted()
				.collect(Collectors.toList());
	}

	/**
	 * Finds a suitable table for the provided group.
	 * The chosen table should be the one with the least capacity.
	 * @param group the group to be seated
	 * @return true if group was seated, false otherwise
	 * @throws IllegalArgumentException if Group already is seated (in this Restaurant)
	 */
	public boolean seatGroup(Group group) {
		if (group.getTable() != null) {
			throw new IllegalArgumentException("Group is already seated");
		}
		List<Table> availableTables = findAvailableTables(group.getGuestCount());
		if (availableTables.isEmpty()) {
			return false;
		}
		availableTables.get(0).setGroup(group);
		group.setTable(availableTables.get(0));
		alertListeners();
		return true;
	}

	/**
	 * Removes the group for the provided table (number), if one exists
	 * @param tableID the number of the table to remove the group from
	 */
	public void removeGroupFromTable(int tableID) {
		Table table = findTable(tableID);
		if (isOccupied(table)) {
			table.getGroup().setTable(null);
			table.setGroup(null);
			alertListeners();
		}
	}

	/**
	 * Finds the table with table number equal to tableID
	 * @param tableID
	 * @return Table-object
	 */
	private Table findTable(int tableID) {
		for (Table table : tables) {
			if (isTable(table, tableID)) {
				return table;
			}
		}
		return null;
	}

	/**
	 * Checks whether or not table has tableID as its table number
	 * @param table
	 * @param tableID
	 * @return true if table has tableID as its table number
	 */
	private boolean isTable(Table table, int tableID) {
		if (table instanceof SimpleTable) {
			return (((SimpleTable) table).getID() == tableID);
		} else if (table instanceof CompositeTable) {
			CompositeTable comp = (CompositeTable) table;
			if (isTable(comp.getTables().get(0), tableID) || isTable(comp.getTables().get(1), tableID)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return String.format("Denne eminente restauranten har %d bord.", getTableCount());
	}

	public static void main(String[] args) {
		Restaurant r1 = new Restaurant();
		Waiter w1 = new Waiter(r1);
		Group g1 = new Group(5);
		Group g2 = new Group(3);
		SimpleTable t1 = new SimpleTable(4);
		SimpleTable t2 = new SimpleTable(4);
		SimpleTable t3 = new SimpleTable(4);
		SimpleTable t4 = new SimpleTable(3);
		r1.addTable(t1);
		r1.addTable(t2);
		r1.addTable(t3);
		r1.addTable(t4);
		System.out.println(r1); // Skal være 4
		System.out.println(r1.getCapacity(false)); // Skal være 15
		r1.mergeTables(t1, t2, 2);
		System.out.println(r1); // Skal være 3
		System.out.println(r1.getCapacity(false)); // Skal være 13
		r1.seatGroup(g1);
		System.out.println(r1.findTable(1).getGroup());
		System.out.println(r1.getCapacity(false)); // Skal være 7 (5-mannsgruppe fikk 6-mannsbord)
		r1.seatGroup(g2);
		System.out.println(r1.getCapacity(false)); // Skal være 4 (3-mannsgruppe til 3-mannsbord)
		r1.removeGroupFromTable(1);
		System.out.println(r1.getCapacity(false)); // Skal være 10 (6-mannsbordet ble ledig)
	}

}
