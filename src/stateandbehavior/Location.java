package stateandbehavior;

public class Location {
	
	private int x;
	private int y;

	public void up() {
		y -= 1;
	}
	
	public void down() {
		y += 1;
	}
	
	public void left() {
		x -= 1;
	}
	
	public void right() {
		x += 1;
	}

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}
	
	public String toString() {
		return String.format("Location: x = %d, y = %d", x, y);
	}

	public static void main(String[] args) {
		Location pos = new Location();
		System.out.println(pos);
		pos.up();
		System.out.println(pos);
		pos.left();
		System.out.println(pos);
		pos.down();
		System.out.println(pos);
		pos.right();
		System.out.println(pos);
	}

}
