package food;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

import food.def.IKitchen;
import food.def.KitchenObserver;
import food.def.PriceProvider;

// Important: There is no similarity between Kitchen in the exam v2020 and this one.
public class Kitchen implements IKitchen {

	private Collection<String> recipes = new HashSet<>();
	private Collection<Customer> customers = new HashSet<>();
	private double turnover;
	private Collection<KitchenObserver> observers = new HashSet<>();
	private List<PriceProvider> providers = new ArrayList<>();


	public Kitchen() {
		super();
	}


	/**
	 * Add a customer
	 * @param customer The customer to add
	 * 
	 * @throws IllegalArgumentException if the customer is already registered
	 */
	@Override
	public void addCustomer(Customer customer) {
		if (customers.contains(customer))
			throw new IllegalArgumentException("Customer is already registered.");
		customers.add(customer);
	}

	/**
	 * Add a recipe
	 * @param recipe The recipe to add
	 */
	@Override
	public void addRecipe(String recipe) {
		if (recipes.contains(recipe))
			throw new IllegalArgumentException("Recipe already exists.");
		recipes.add(recipe);
	}

	/**
	 * @return The turnover of this kitchen - price of all sold meals added together
	 * If the restaurant has sold for 50, 75 and 100, the turnover is 225.
	 * (Norsk: omsetning)
	 */
	@Override
	public double getTurnover() {
		return turnover;
	}


	/**
	 * @return A collection of this kitchen's recipes
	 */
	@Override
	public Collection<String> getRecipes() {
		return new HashSet<>(recipes);
	}

	/**
	 * @param name The name of the customer to get
	 * 
	 * @return The customer with the given name, or null if no such customer is registered
	 */
	public Customer getCustomer(String name) {
		return customers.stream().filter(customer -> customer.getName().equals(name)).findFirst().orElse(null);
	}

	/**
	 * Make a meal, with a given (standard)price and to a given customer.
	 * 
	 * This method needs to check that the kitchen knows the given recipe
	 * and has the given customer registered.
	 * (Task 2.3): rebates need to be considered
	 * Finally, data about the sale must be registered in all appropriate places.
	 * 
	 * @param meal The name of the meal to make
	 * @param price The standard price of the meal
	 * @param customerName The name of the customer that buys the meal
	 * 
	 * @throws IllegalStateException if a meal is not successfully made (somehow)
	 */
	@Override
	public void provideMeal(String meal, double price, String customerName) {
		if (! recipes.contains(meal) || getCustomer(customerName) == null)
			throw new IllegalStateException("Kitchen does not know the recipe or the customer is not registered");
		Customer c = getCustomer(customerName);
		double actualPrice = computeActualPrice(meal, price, c);
		c.buyMeal(meal, actualPrice);
		turnover += actualPrice;
		notifyObservers(meal, actualPrice);
	}

	/**
	 * Exercise 2.3 - Delegation
	 * Calculate the total rebate of the given meal, using the priceDelegates of this Kitchen
	 * If more than one rebate exist, each of them applies. See README for example.
	 * 
	 * @param meal The name of the meal
	 * @param price The standard price of the meal
	 * @param customer The customer buying the meal
	 * @return The resulting price after all rebates have been considered.
	 */
	double computeActualPrice(String meal, double price, Customer customer) {
		if (providers.size() == 0)
			return price;
		else if (providers.size() == 1)
			return price * providers.get(0).providePrice(meal, price, customer);
		double actualRebate = 1.0;
		for (PriceProvider pp : providers) {
			actualRebate *= pp.providePrice(meal, price, customer);
		}
		return price * actualRebate;
	}

	// Exercise 2.3 - Delegation - these may not be all methods you need to create!
	@Override
	public void addPriceProvider(PriceProvider pp) {
		providers.add(pp);
	}

	public void removePriceProvider(PriceProvider pp) {
		providers.remove(pp);
	}

	// Exercise 2.4 - Observerer - these may not be all methods you need to create!
	@Override
	public void addObserver(KitchenObserver ko) {
		observers.add(ko);
	}

	public void removeObserver(KitchenObserver ko) {
		observers.remove(ko);
	}

	private void notifyObservers(String meal, double price) {
		observers.forEach(ko -> ko.mealOrder(meal, price));
	}


	public static void main(String[] args) {
		Kitchen k = new Kitchen();
		k.addRecipe("pancakes");
		k.addRecipe("waffles");
		k.addRecipe("taco");
		k.addRecipe("spam");
		Customer per = new Customer("per");
		k.addCustomer(per);
		//		k.addCustomer(per); // IllegalArgumentException
		k.addCustomer(new Customer("ida"));
		k.provideMeal("pancakes", 99.50, "per");
		System.out.println(k.getTurnover());
		k.provideMeal("pancakes", 50, "ida");
		System.out.println(k.getTurnover());
	}


}