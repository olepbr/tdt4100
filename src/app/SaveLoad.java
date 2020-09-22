package app;

public interface SaveLoad {
	
	public void save(String filename, Object o);
	
	public void load(String filename, Object o);
}
