package wfSImuleSoft.procApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetProcAPIRunnerCSR3546 {

	@Test
	public Karate procApiTestCSR3546() {
		return Karate.run("getTransProcessProc", "getTransDetailsProc", "getTransInstatusProc", "getTransStatusProc",
				"getTransLastProc").relativeTo(getClass());
	}

}
