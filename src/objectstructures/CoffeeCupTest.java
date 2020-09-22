package objectstructures;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CoffeeCupTest {
	CoffeeCup c1;
	
	@Before
	public void setUp() throws Exception {
		c1 = new CoffeeCup(60,20);	
	}

	@Test
	public void testCoffeeCup() {
		CoffeeCup c2 = new CoffeeCup();
		assertEquals(0, c2.getCapacity(), 0);
		assertEquals(0, c2.getCurrentVolume(), 0);
	}

	@Test
	public void testCoffeeCupDoubleDouble() {
		CoffeeCup c3 = new CoffeeCup(40, 20);
		assertEquals(40, c3.getCapacity(), 0);
		assertEquals(20, c3.getCurrentVolume(), 0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testConstructorVolumeException() {
		CoffeeCup c4 = new CoffeeCup(0,30);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testConstructorCapacityException() {
		CoffeeCup c5 = new CoffeeCup(-30,0);
	}

	@Test
	public void testGetCapacity() {
		assertEquals(60,c1.getCapacity(), 0);
	}

	@Test
	public void testGetCurrentVolume() {
		assertEquals(20, c1.getCurrentVolume(), 0);
	}

	@Test
	public void testIncreaseCupSize() {
		c1.increaseCupSize(20);
		assertEquals(80, c1.getCapacity(), 0);
	}

	@Test
	public void testDrinkCoffee() {
		c1.drinkCoffee(20);
		assertEquals(0, c1.getCurrentVolume(), 0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testDrinkCoffeeException() {
		c1.drinkCoffee(30);
	}

	@Test
	public void testFillCoffee() {
		c1.fillCoffee(20);
		assertEquals(40, c1.getCurrentVolume(), 0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testFillCoffeeException() {
		c1.fillCoffee(60);
	}

}
