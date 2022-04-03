package stepDefinition;

import org.junit.Assert;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CalculatorSteps {
	int result;
	
	@Given("I have a calculator")
	public void i_have_a_calculator() {
	    // Write code here that turns the phrase above into concrete actions
	    System.out.println("Inside Calculator");
	}

	@When("I add {int} and {int}")
	public void i_add_and(int num1, int num2) {
	    // Write code here that turns the phrase above into concrete actions
	    
		result = num1 + num2;
	}

	@Then("I should get the result as {int}")
	public void i_should_get_the_result_as(int res) {
	    // Write code here that turns the phrase above into concrete actions
	    
		Assert.assertEquals(res, result);
	}

	@When("I subtract {int} and {int}")
	public void i_subtract_and(int num1, Integer num2) {
	    // Write code here that turns the phrase above into concrete actions
	    
		result = num1 - num2;
	}

}
