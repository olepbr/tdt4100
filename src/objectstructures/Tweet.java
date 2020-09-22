package objectstructures;

public class Tweet {
	
	private int retweetCount;
	private String text;
	private TwitterAccount owner;
	private Tweet originalTweet;
	
	public Tweet(TwitterAccount owner, String text) {
		this.owner = owner;
		this.text = text;
		this.originalTweet = null;
	}
	
	public Tweet(TwitterAccount owner, Tweet tweet) {
		if (tweet.getOwner() == owner) {
			throw new IllegalArgumentException("Du kan ikke retweete deg selv!");
		}
		else if (tweet.getOriginalTweet() != null) {
			this.owner = owner;
			this.text = tweet.getText();
			this.originalTweet = tweet.getOriginalTweet();
			tweet.getOriginalTweet().retweetCount += 1;
//			Tweet tmp = new Tweet(owner, tweet.getOriginalTweet());
		}
		else {
			this.owner = owner;
			this.text = tweet.getText();
			this.originalTweet = tweet;
			tweet.retweetCount += 1;
		}
	}
	
	public String getText() {
		return text;
	}
	
	public TwitterAccount getOwner() {
		return owner;
	}
	
	public Tweet getOriginalTweet() {
		return originalTweet;
	}
	
	public int getRetweetCount() {
		return retweetCount;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
