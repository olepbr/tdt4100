package stuff;

import static org.junit.Assert.assertEquals;

public class Movie {

	// See the README file for a description of what is required for this file.
	
	private String title;
	private int timesWatched;
	private int rating;
	
	public Movie (String title) {
		if (title == null)
			throw new IllegalArgumentException("Title cannot be null.");
		this.title = title;
	}
	
	public void watch() {
		timesWatched++;
	}

	public String getTitle() {
		return title;
	}



	public int getTimesWatched() {
		return timesWatched;
	}



	public Integer getRating() {
		if (rating == 0)
			return null;
		return rating;
	}
	
	public void setRating(int rating) {
		if (rating < 1 || rating > 6)
			throw new IllegalArgumentException("Rating must be between 1 and 6.");
		this.rating = rating;
	}



	public static void main(String[] args) {

		Movie db = new Movie("Das Boot");
		assertEquals(0, db.getTimesWatched());
		assertEquals("Das Boot", db.getTitle());
		
		db.watch();
		assertEquals(1, db.getTimesWatched());
		
		assertEquals(null, db.getRating());
		db.setRating(4);
		assertEquals(4, (int)db.getRating());
	}

}
