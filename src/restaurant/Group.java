package restaurant;

/**
 * A group (of people) dining together, and should be seated at the same table.
 */
public class Group {

	private final int guestCount;
	private Table table;
	
	public Group(int guestCount) {
		this.guestCount = guestCount;
	}
	
	public int getGuestCount() {
		return guestCount;
	}
	
	public Table getTable() {
		return table;
	}
	
	public void setTable(Table table) {
		if (table == null)
			this.table = table;
		else if (table.getCapacity() < guestCount)
			throw new IllegalArgumentException("Bordet er for lite!");
		this.table = table;
	}
	
	public String toString() {
		if (table != null)
			return String.format("Dette er en gruppe på %d personer som sitter ved et %d-mannsbord.", guestCount, table.getCapacity());
		return String.format("Dette er en gruppe på %d personer.", guestCount);
	}
	
	public static void main(String[] args) {
		Group g1 = new Group(2);
		System.out.println(g1);
	}

}
