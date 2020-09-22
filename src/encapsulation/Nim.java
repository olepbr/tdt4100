package encapsulation;

import java.util.Arrays;
import java.util.List;

public class Nim {

	private int pileA;
	private int pileB;
	private int pileC;


	public Nim(int pileSize) {
		super();
		if (pileSize < 1) {
			throw new IllegalArgumentException("Må ha positivt antall brikker");
		}
		else {
			pileA = pileB = pileC = pileSize;
		}
	}

	public Nim() {
		super();
		pileA = pileB = pileC = 10;
	}

	public void removePieces(int number, int targetPile) {
		if (this.isGameOver()) {
			throw new IllegalStateException("Spillet er allerede over!");
		}
		else if (! this.isValidMove(number, targetPile)) {
			throw new IllegalArgumentException("Antall brikker eller bunkenr. er feil!");
		}
		else {
			if (targetPile == 0) {
				pileA -= number;
			}
			else if (targetPile == 1) {
				pileB -= number;
			}
			else {
				pileC -= number;
			}
		}
	}

	public boolean isValidMove(int number, int targetPile) {
		if (	this.isGameOver()
				|| ! this.isValidPile(targetPile) 
				|| ! this.isValidNumber(number, targetPile)) {
			return false;
		}
		else {
			return true;
		}
	}
	
	private boolean isValidNumber(int number, int targetPile) {
		if (number < 1 || number > this.getPile(targetPile)) {
			return false;
		}
		else {
			return true;
		}
	}

	private boolean isValidPile(int targetPile) {
		if (targetPile < 0 || targetPile > 2) {
			return false;
		}
		else {
			return true;
		}
	}

	public boolean isGameOver() {
		if (pileA == 0 || pileB == 0 || pileC == 0) {
			return true;
		}
		else {
			return false;
		}
	}

	public int getPile(int targetPile) {
		if (! this.isValidPile(targetPile)) {
			throw new IllegalArgumentException("Velg en bunke mellom 0 og 2");
		}
		else {
			List<Integer> pileList = Arrays.asList(pileA, pileB, pileC);
			return pileList.get(targetPile);
		}
	}

	public String toString() {
		return String.format("Bunke A: %d kort, bunke B: %d kort, bunke C: %d kort", pileA, pileB, pileC);
	}

	public static void main(String[] args) {
		Nim yo = new Nim();
		System.out.println(yo);
		yo.removePieces(7, 0);
		System.out.println(yo);
		yo.removePieces(5, 2);
		System.out.println(yo);
		yo.removePieces(3, 0);
		System.out.println(yo);
		yo.removePieces(2, 1);
	}

}
