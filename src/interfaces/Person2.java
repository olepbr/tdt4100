package interfaces;

import java.util.Arrays;
import java.util.stream.Collectors;

public class Person2 implements Named {
	
	private String fullName;
	private String[] names;
	
	public Person2(String fullName) {
		this.fullName = fullName;
		this.names = fullName.split(" ");
	}
	
	private void nameJoiner(String[] names) {
		fullName = Arrays.stream(names).collect(Collectors.joining(" "));
//		fullName = String.format("%s %s", names[0], names[1]);
	}

	@Override
	public void setGivenName(String givenName) {
		names[0] = givenName;
		this.nameJoiner(names);
	}

	@Override
	public String getGivenName() {
		return names[0];
	}

	@Override
	public void setFamilyName(String familyName) {
		names[1] = familyName;
		this.nameJoiner(names);
	}

	@Override
	public String getFamilyName() {
		return names[1];
	}

	@Override
	public void setFullName(String fullName) {
		this.fullName = fullName;

	}

	@Override
	public String getFullName() {
		return fullName;
	}
	
	public String toString() {
		return fullName;
	}

}
