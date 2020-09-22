package interfaces.twitter;

import java.util.Comparator;

public class TweetsCountComparator implements Comparator<TwitterAccount> {

	public int compare(TwitterAccount t1, TwitterAccount t2) {
		return t2.getTweetCount().compareTo(t1.getTweetCount()); // Setter det andre objektet først pga. måten Integer.compareTo() fungerer (vi vil ha høyeste først).
	}

}
