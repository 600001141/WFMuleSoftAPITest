package wfSImuleSoft.procApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetProcAPIRunnerCSR3519 {

	@Test
	public Karate procApiRegTest() {
		return Karate.run("getAgencyDetailsInProc", "getAgencyCityNameInProc", "getAgencyCodeInProc",
				"getAgencyPostalcodeInProc", "getAgencyNameInProc", "getAgencyStateInProc",
				"getAgencyTotalNumberInProc").relativeTo(getClass());

	}

}
