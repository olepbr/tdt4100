package interfaces;

import java.util.*;

public class NamedComparator implements Comparator<Named> {

	private int familyCompare;
	private int givenCompare;

	public int compare(Named named1, Named named2) {
		familyCompare = named1.getFamilyName().compareTo(named2.getFamilyName());
		givenCompare = named1.getGivenName().compareTo(named2.getGivenName());
		return ((familyCompare == 0) ? givenCompare : familyCompare); // Hvis etternavn er likt, returner resultat av sammenlikningen av fornavn.
	}

	public static void main(String[] args) {
		Person1 bjarne = new Person1("Bjarne", "Romsdal");
		Person2 kåre = new Person2("Kåre Kristiansen");
		Person2 kari = new Person2("Kari Kristiansen");
		List<Named> names = Arrays.asList(bjarne, kåre, kari);
		Collections.sort(names, new NamedComparator());
		System.out.println(names);
	}

}
