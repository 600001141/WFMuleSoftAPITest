package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetExpAPIRunnerCSR3535 {
	
	
	@Test
	public Karate expApiforCSR3535() {
		return Karate
				.run("getEmployeePoliciesCSR3535Exp")
				.relativeTo(getClass());

	}

}
