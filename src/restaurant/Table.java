package restaurant;

public abstract class Table implements Comparable<Table> {
	
	private Group group;
	protected int capacity;
	
	@Override
	public int compareTo(Table t) {
		return this.capacity - t.getCapacity();
	}
	
	public int getCapacity() {
		return capacity;
	}
	
	public Group getGroup() {
		return group;
	}
	
	public void setGroup(Group group) {
//		if (group.getGuestCount() > capacity)
//			throw new IllegalArgumentException("Gruppen er større enn antall plasser!");
		this.group = group;
	}
}