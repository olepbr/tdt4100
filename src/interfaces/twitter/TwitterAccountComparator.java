package interfaces.twitter;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class TwitterAccountComparator implements Comparator<TwitterAccount> {

	private List<Comparator<TwitterAccount>> listComparators; // Ordnet liste av sammenliknere.

	public TwitterAccountComparator(@SuppressWarnings("unchecked") Comparator<TwitterAccount>... comparators) {
		this.listComparators = Arrays.asList(comparators); // Tydeligvis gjør ... (varargs) at man kan ende opp i situasjoner
	}																										// 		hvor man sammenlikner ting av ulike typer, men kan ikke se at det vil skje her,
																									   //     derfor brukes @SuppressWarnings.
	@Override
	public int compare(TwitterAccount t1, TwitterAccount t2) {
		for (Comparator<TwitterAccount> comparator : listComparators) {
			int result = comparator.compare(t1, t2);
			if (result != 0)
				return result;
		}
		return 0;
	}

}
