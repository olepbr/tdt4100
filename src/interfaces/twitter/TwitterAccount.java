package interfaces.twitter;

import java.util.*;

public class TwitterAccount {

	private String userName;
	private List<TwitterAccount> following = new ArrayList<TwitterAccount>();
	private List<TwitterAccount> followers = new ArrayList<TwitterAccount>();
	private List<Tweet> tweets = new ArrayList<Tweet>();
	
	public TwitterAccount(String userName) {
		this.userName = userName;
	}

	public String getUserName() {
		return userName;
	}

	public void follow(TwitterAccount account) {
		this.following.add(account);
		account.followers.add(this);
	}

	public void unfollow(TwitterAccount account) {
		if (this.isFollowing(account) && account.isFollowedBy(this)) {
			this.following.remove(account);
			account.followers.remove(this);
		}
	}

	public boolean isFollowing(TwitterAccount account) {
		if (this.following.indexOf(account) != -1) {
			return true;
		}
		return false;
	}

	public boolean isFollowedBy(TwitterAccount account) {
		if (this.followers.indexOf(account) != -1) {
			return true;
		}
		return false;
	}
	
	public void tweet(String text) {
		Tweet tweet = new Tweet(this, text);
		this.tweets.add(0, tweet);
	}

	
	public void retweet(Tweet tweet) {
		Tweet retweet = new Tweet(this, tweet);
		this.tweets.add(0, retweet);
	}
	
	public Tweet getTweet(int i) {
		return this.tweets.get(i - 1);
	}
	
	public Integer getTweetCount() {
		return this.tweets.size();
	}
	
	public int getRetweetCount() {
		int retweetCount = 0;
		for (Tweet tweet : tweets) {
			retweetCount += tweet.getRetweetCount();
		}
		return retweetCount;
	}
	
	public Integer getFollowerCount() {
		return this.followers.size();
	}
	
	public List<TwitterAccount> getFollowers(Comparator<TwitterAccount> sorterer) {
		if (sorterer == null)
			return followers;
		else {
			List<TwitterAccount> sortedFollowers = new ArrayList<TwitterAccount>(followers);
			Collections.sort(sortedFollowers, sorterer);
			return sortedFollowers;
		}
	}
	
	public String toString() {
		return String.format("Konto: %s, antall følgere: %d, følger: %d, antall tweets: %d, antall retweets: %d \n", this.getUserName(), this.followers.size(), this.following.size(), this.getTweetCount(), this.getRetweetCount());
	}
	
	public static void main(String[] args) {
		TwitterAccount nils = new TwitterAccount("nalse123");
		TwitterAccount ole = new TwitterAccount("olepbr");
		TwitterAccount kari = new TwitterAccount("kariro");
		nils.tweet("Kvitre!");
		System.out.println(nils);
		ole.follow(nils);
		ole.retweet(nils.getTweet(1));
		System.out.println(ole);
		System.out.println(nils);
		kari.follow(ole);
		kari.retweet(ole.getTweet(1));
		System.out.println(kari);
		System.out.println(ole);
		kari.follow(nils);
		UserNameComparator userComp = new UserNameComparator();
		System.out.println(nils.getFollowers(userComp));
	}

}
