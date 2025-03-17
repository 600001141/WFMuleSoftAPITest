package wfSImuleSoft.procApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetProcAPIRunnerCSR3537 {

	@Test
	public Karate procApiRegTestCSR3537() {
		return Karate.run("getFileProcessProcCSR3537", "getFilePayClaimProcessProcCSR3537",
				"getFileProcessStatus404CSR3537", "getFileProcessStatus200CSR3537", "getFileProcessStatusIDCSR3537",
				"getSaveFileProcessStatusProcCSR3537", "getTest").relativeTo(getClass());

	}

}
