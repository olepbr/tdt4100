package patterns.delegation.office;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Printer {
	
	private Map<Employee, ArrayList<String>> printHistoryMap = new HashMap<>();
	
	public void printDocument(String document, Employee employee) {
		System.out.println(document);
		if (! printHistoryMap.containsKey(employee)) {
			printHistoryMap.put(employee, new ArrayList<String>());
			printHistoryMap.get(employee).add(document);
		}
		else {
			printHistoryMap.get(employee).add(document);
		}
	}
	
	public List<String> getPrintHistory(Employee employee) {
		if (printHistoryMap.containsKey(employee)) {
			return printHistoryMap.get(employee);
		}
		else {
			return new ArrayList<String>();
		}
	}

}
