package stepDefinition;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)


@CucumberOptions(
		
		plugin = {"html:target/html-cucumber","json:target/cucumber.json"},
		
		features = "src/test/java/features",
		tags = {"@F_Login"},
		//tags = {"@Sanity,@Regression"},
		//tags = {"@Regression","@Rapid"}, //to run multiple tags using And or we can use tags = {"@Regression and @Rapid"}
		//tags = {"@Sanity or (@Regression and @Rapid)"}, //to run all scenarios
		//tags = {"not @Sanity"},   //exclude the mentioned tag and execute all other tags
		glue =  {"stepDefinition"}
		
		)
public class TestRunner {
	
	

}
