package interfaces.twitter;

import java.util.Comparator;

public class FollowersCountComparator implements Comparator<TwitterAccount> {

	public int compare(TwitterAccount t1, TwitterAccount t2) {
		return t2.getFollowerCount().compareTo(t1.getFollowerCount()); // Setter det andre objektet først pga. måten Integer.compareTo() fungerer (vi vil ha høyeste først).
	}
}
