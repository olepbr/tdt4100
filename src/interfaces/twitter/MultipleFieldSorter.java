package interfaces.twitter;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class MultipleFieldSorter {
	
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		TwitterAccount nils = new TwitterAccount("nalse123");
		TwitterAccount ole = new TwitterAccount("olepbr");
		TwitterAccount kari = new TwitterAccount("kariro");
		nils.tweet("Kvitre!");
		nils.follow(ole);
		ole.follow(nils);
		ole.follow(kari);
		ole.retweet(nils.getTweet(1));
		kari.follow(ole);
		kari.retweet(ole.getTweet(1));
		kari.follow(nils);
		List<TwitterAccount> list = Arrays.asList(nils, kari, ole);
		System.out.println(list);
		Collections.sort(list, new TwitterAccountComparator(new FollowersCountComparator(), new TweetsCountComparator(), new UserNameComparator()));
		System.out.println(list);
	}

}
