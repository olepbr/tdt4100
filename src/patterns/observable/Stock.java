package patterns.observable;

import java.util.ArrayList;
import java.util.Collection;

public class Stock {

	private String ticker;
	private double price;
	private double oldPrice;
	private Collection<StockListener> stockListeners = new ArrayList<StockListener>();

	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.price = price;
	}

	public double getPrice() {
		return price;
	}
	
	public double getOldPrice() {
		return oldPrice;
	}

	public void setPrice(double price) {
		setPriceHelper(price);
		for (StockListener stockListener : stockListeners) {
			stockListener.stockPriceChanged(this, oldPrice, this.getPrice());
		}
	}

	protected void setPriceHelper(double price) {
		if (price <= 0) 
			throw new IllegalArgumentException("Aksjen må være verdt noe!");
		oldPrice = this.price;
		this.price = price;
	}

	public String getTicker() {
		return ticker;
	}

	public void addStockListener(StockListener stockListener) {
		this.stockListeners.add(stockListener);
	}

	public void removeStockListener(StockListener stockListener) {
		this.stockListeners.remove(stockListener);
	}
	
	public Collection<StockListener> getStockListeners() {
		return stockListeners;
	}
}
