package stuff;

import java.util.Collection;
import java.util.HashSet;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class MovieRegister {


	private Collection<Movie> movies = new HashSet<>();

	/**
	 * Add movie to register
	 * @param movie
	 */
	public void addMovie(Movie movie) {
		if (findMovie(movie.getTitle()) != null)
			throw new IllegalStateException("Movie already exists in database.");
		movies.add(movie);
	}

	/**
	 * 
	 * @param title
	 * @return the movie with matching title, or null if no such movie exists.
	 */
	Movie findMovie(String title) {
		return movies.stream().filter(movie -> movie.getTitle().equals(title)).findFirst().orElse(null);
	}

	/**
	 * Filter all registered movies based on a Predicate, and return them as a Collection.
	 * @param pred is the filter for which movies to watch
	 * @return A collection of movies testing true to pred.
	 */
	Collection<Movie> filterMovies(Predicate<Movie> pred) {
		return movies.stream().filter(pred).collect(Collectors.toSet());
	}

	/**
	 * Watch movie 'title'.
	 * @param title
	 * @throws IllegalStateException if the title does not exist.
	 */
	public void watch(String title) {
		Movie m = findMovie(title);
		if (m == null)
			throw new IllegalStateException("Movie does not exist in register.");
		m.watch();

	}

	/**
	 * Small example of use of the class. Does NOT necessarily cover all uses of methods specified in assignment. 
	 * @param args
	 */
	public static void main(String[] args) {

		MovieRegister cb = new MovieRegister();
		cb.addMovie(new Movie("Das Boot"));
		cb.watch("Das Boot");
		System.out.println("Should be 1: " + cb.findMovie("Das Boot").getTimesWatched());
		//		cb.watch("Terminator");
		
	}

}
