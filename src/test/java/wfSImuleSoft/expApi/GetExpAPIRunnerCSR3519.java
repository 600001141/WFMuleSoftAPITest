package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetExpAPIRunnerCSR3519 {

	@Test
	public Karate expApiRegTest1() {
		return Karate
				.run("getAgencyTotalNumbersInExp","getAgencyDetailsInExp", "getAgencyNameInExp", "getAgencyCityNameInExp", "getAgencyCodeInExp",
						"getAgencyPostalcodeInExp", "getAgencyStateInExp")
				.relativeTo(getClass());

	}

}
