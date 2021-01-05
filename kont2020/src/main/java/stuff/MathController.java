package stuff;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListCell;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class MathController {
	
	Random rand;

	@FXML
	private ComboBox<Character> typeSelector;

	@FXML
	private TextField firstField;

	@FXML
	private TextField secondField;
	
	@FXML
	private TextArea resultArea;

	@FXML
	private void initialize() {
		rand = new Random();
		Collection<Character> tmp = new ArrayList<>();
		tmp.add('+');
		tmp.add('*');
		tmp.add('/');
		tmp.add('-');
		typeSelector.getItems().addAll(tmp);
		typeSelector.getSelectionModel().select(0);
	}


	/**
	 * Gather doubles from two textfields, apply a mathematical method, and update a text component.
	 */
	@FXML
	private void onCalculate() {
		double firstNumber = Double.parseDouble(firstField.getText());
		double secondNumber = Double.parseDouble(secondField.getText());
		double result;
		if (typeSelector.getValue() == '+') {
			result = firstNumber + secondNumber;
			resultArea.setText(String.format("%.2f", result));
		}
		else if (typeSelector.getValue() == '-') {
			result = firstNumber - secondNumber;
			resultArea.setText(String.format("%.2f", result));
		}
		else if (typeSelector.getValue() == '*') {
			result = firstNumber * secondNumber;
			resultArea.setText(String.format("%.2f", result));
		}
		else {
			result = firstNumber / secondNumber;
			resultArea.setText(String.format("%.2f", result));
		}
	}

	@FXML
	private void randomizeNumbers() {
		firstField.setText(String.format("%d", rand.nextInt(100) + 1));
		secondField.setText(String.format("%d", rand.nextInt(100) + 1));
	}
}
