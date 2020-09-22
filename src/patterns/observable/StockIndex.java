package patterns.observable;

import java.util.ArrayList;
import java.util.Collection;

public class StockIndex implements StockListener {
	
	private double index;
	private String name;
	private Collection<Stock> stocks = new ArrayList<Stock>();
	
	public StockIndex(String name, Stock... stocks) {
		this.name = name;
		if (stocks.length == 0) {
//		if (stocks == null) {
			this.index = 0;
		}
		else {
			for (Stock stock : stocks) {
				this.stocks.add(stock);
				this.index += stock.getPrice();
				stock.addStockListener(this);
			}
		}
	}
	
	public void addStock(Stock stock) {
		if (! stocks.contains(stock)) {
			this.stocks.add(stock);
			this.index += stock.getPrice();
			stock.addStockListener(this);
		}
	}
	
	public void removeStock(Stock stock) {
		if (stocks.contains(stock)) {
			this.stocks.remove(stock);
			this.index -= stock.getPrice();
			stock.removeStockListener(this);
		}
	}
	
	public double getIndex() {
		return index;
	}
	
//	private void computeIndex() {
//		this.index = 0;
//		for (Stock stock : stocks) {
//			this.index += stock.getPrice();
//		}
//	}

	@Override
	public void stockPriceChanged(Stock stock, double oldValue, double newValue) {
		this.index += newValue - oldValue;
	}
	
	public static void main(String[] args) {
		Double facebookPrice = 67.80;
		Stock facebook = new Stock("FB", facebookPrice);
		StockIndex nasdaq = new StockIndex("NASDAQ");
		nasdaq.addStock(facebook);
		System.out.println(facebookPrice.equals(nasdaq.getIndex()));
	}

}
