package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;


public class GetExpAPIRunnerCSR3530 {
	
	@Test
	public Karate expAPIRunnerCSR3530() {
		return Karate
				.run("getMuleDocumentManagementCSR3530Exp")
				.relativeTo(getClass());

	}
	
	

}
