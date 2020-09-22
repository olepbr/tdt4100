package app;

public class Wine {
	
	private String wineName;
	private int vintage;
	private String wineType;
	
	
	public Wine(String wineName, int vintage, String wineType) {
		this.wineName = wineName;
		this.vintage = vintage;
		this.wineType = wineType;
	}


	public String getWineName() {
		return wineName;
	}


	public void setWineName(String wineName) {
		this.wineName = wineName;
	}


	public int getVintage() {
		return vintage;
	}


	public void setVintage(int vintage) {
		this.vintage = vintage;
	}


	public String getWineType() {
		return wineType;
	}


	public void setWineType(String wineType) {
		this.wineType = wineType;
	}
	
	
}
