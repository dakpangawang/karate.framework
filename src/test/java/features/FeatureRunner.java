package features;

import com.intuit.karate.junit5.Karate;

public class FeatureRunner {
	
	@Karate.Test
	Karate test(){
		return Karate
				.run("unitTests.feature")
				.tags("@helper") 
				.relativeTo(getClass());
	}
	
}
