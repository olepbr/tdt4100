package patterns.observable;

import java.util.HashMap;
import java.util.Map;

public class SmartStock extends Stock {

	private Map<StockListener, Double> stockListenerMinMap = new HashMap<>();
	private Map<StockListener, Double> stockListenerMaxMap = new HashMap<>();
	private Map<StockListener, Double> stockListenerDiffMap = new HashMap<>();
	private Map<StockListener, Double> stockListenerLastReportedMap = new HashMap<>();

	public SmartStock(String ticker, double price) {
		super(ticker, price);
	}

	public void addStockListener(StockListener stockListener, double min, double max) {
		addStockListener(stockListener);
		stockListenerMinMap.put(stockListener, min);
		stockListenerMaxMap.put(stockListener, max);
	}

	public void addStockListener(StockListener stockListener, double difference) {
		addStockListener(stockListener);
		stockListenerDiffMap.put(stockListener, difference);
		stockListenerLastReportedMap.put(stockListener, getPrice());
	}

	@Override
	public void setPrice(double price) {
		setPriceHelper(price);
		for (StockListener stockListener : getStockListeners()) {
			if (stockListenerMaxMap.containsKey(stockListener)) {
				if (price < stockListenerMinMap.get(stockListener) || price > stockListenerMaxMap.get(stockListener)) {
					stockListener.stockPriceChanged(this, this.getOldPrice(), this.getPrice());
				}
			}
			else if (stockListenerDiffMap.containsKey(stockListener)) {
				double lastReported = stockListenerLastReportedMap.get(stockListener);
				if (Math.abs(price - lastReported) > stockListenerDiffMap.get(stockListener)) {
					stockListener.stockPriceChanged(this, lastReported, this.getPrice());
					stockListenerLastReportedMap.put(stockListener, this.getPrice());
				}
			}
			else {
				stockListener.stockPriceChanged(this, this.getOldPrice(), this.getPrice());
			}
		}
	}
}
