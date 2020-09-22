package encapsulation;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

public class Person {

	private String name;
	private String email;
	private Date birthday;
	private char gender;
	private String ssn;



	public String getName() {
		return name;
	}



	public void setName(String name) {
		String namePattern = "([A-Z,Æ,Ø,Å]{1}[a-z,æ,ø,å]+)( )([A-Z,Æ,Ø,Å]{1}[a-z,æ,ø,å]+)";
		if (! name.matches(namePattern) || ! (name.length() > 4)) {
			throw new IllegalArgumentException("Ugyldig navn!");
		}
		else {
			this.name = name;
		}
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		String emailPattern = "([a-z]+)\\.([a-z]+)@[\\w]+\\.[a-z]{2}";
		String[] countryCodes = new String[]{"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"};

		if (	   ! email.matches(emailPattern)
				|| ! Arrays.stream(countryCodes).anyMatch(email.substring(email.length()-2)::equals)
				|| ! (email.startsWith(this.name.split(" ")[0].toLowerCase()+"."+this.name.split(" ")[1].toLowerCase())))
		{
			throw new IllegalArgumentException("Ugyldig epost!");
		}
		else {
			this.email = email;
		}
	}



	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		Date today = new Date();
		if (! birthday.before(today))
		{
			throw new IllegalArgumentException("Ugyldig bursdag!");
		}
		else {
			this.birthday = birthday;
		}
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		char genderMale = 'M';
		char genderFemale = 'F';
		char genderNull = '\0';

		if (gender != genderMale && gender != genderFemale && gender != genderNull) {
			throw new IllegalArgumentException("Ugyldig kjønn!");
		}
		else {
			this.gender = gender;
		}
	}
	
	
	public String getSSN() {
		return ssn;
	}
	
//	public void setSSN(String ssn) {
//		DateFormat datoformat = new SimpleDateFormat("ddmmyy");
//		if (birthday == null || gender == '\u0000') {
//			throw new IllegalArgumentException("Bursdag og kjønn må settes først!");
//		}
//		else if (! ssn.contains("[0-9]+") || ssn.length() != 11) {
//			throw new IllegalArgumentException("Fødselsnr. har feil format!");
//		}
//		else if (! ssn.startsWith(datoformat.format(birthday))) {
//			throw new IllegalArgumentException("Fødselsnr. matcher ikke bursdag!");
//		}
//		else if (gender == 'F' && Character.getNumericValue(ssn.charAt(8)) % 2 != 0) {
//			throw new IllegalArgumentException("Kvinner må ha N3 partall");
//		}
//		else if (gender == 'M' && Character.getNumericValue(ssn.charAt(8)) % 2 == 0) {
//			throw new IllegalArgumentException("Menn må ha N3 oddetall");
//		}
//		else {
//			this.ssn = ssn;
//		}
//	}
	

	public String toString() {
		return String.format("Navn: %s, epost: %s, kjønn: %s, bursdag: %s", name, email, gender, birthday);
	}

	public static void main(String[] args) {
		Person p1 = new Person();
		System.out.println(p1);
		p1.setName("John Doe");
		System.out.println(p1);
		p1.setEmail("john.doe@nwy5u45y6qeb0.ad");
		System.out.println(p1);
		p1.setGender('M');
		System.out.println(p1);
		long idag = new Date().getTime();
		long forskjell = 1000L * 60L * 60L * 24L * 8834;
		Date bursdag = new Date(idag - forskjell);
		p1.setBirthday(bursdag);
		System.out.println(p1);
	}

}

