package food;

import food.def.PriceProvider;

/**
 * A rebate where every thousandth purchase (regardless of meal, price, or customer)
 * is given away for free. Not the first buy!
 */
public class RebateFreeEveryThousandSale implements PriceProvider {
	
	private int saleCounter; // Denne implementasjonen avhenger av at hvert kjøkken bruker en egen instans av rabattklassen, ellers blir det rabatter i hytt og pine.

	@Override
	public double providePrice(String meal, double price, Customer customer) {
		if (saleCounter != 0 && saleCounter % 1000 == 0)
			return 0;
		return 1;
	}


}
